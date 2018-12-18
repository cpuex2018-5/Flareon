#include "./fsim.h"

float epsilon = pow(2,-126);
float fpu_check = pow(2,-23);

float fadd(float x1_f,float x2_f){
  union{ unsigned int f_i;float f_f;} u1,u2;
  u1.f_f = x1_f;
  u2.f_f = x2_f;
  /*
   *
   * 変数の四則演算orシフトorビット演算をしたあとは既定のbit数を超えている場合があるので明らかにそうでない場合以外はget_binaryで適宜切り出す
   * 範囲をよく計算すればいらないかもしれないが安全のため
   */
  unsigned int cmp = 0;
  if(get_binaryf32(u1.f_i,0,31) < get_binaryf32(u2.f_i,0,31)){
    cmp = 1; // cmp = 1 if u2 > u1
  }
  unsigned int s1 = (cmp)?get_binaryf32(u2.f_i,31,32):get_binaryf32(u1.f_i,31,32); //1bit
  unsigned int s2 = (cmp)?get_binaryf32(u1.f_i,31,32):get_binaryf32(u2.f_i,31,32); //1bit
  unsigned int e1 = (cmp)?get_binaryf32(u2.f_i,23,31):get_binaryf32(u1.f_i,23,31); //8bit
  unsigned int e2 = (cmp)?get_binaryf32(u1.f_i,23,31):get_binaryf32(u2.f_i,23,31); //8bit
  unsigned int f1 = (cmp)?get_binaryf32(u2.f_i,0,23):get_binaryf32(u1.f_i,0,23); //23bit
  unsigned int f2 = (cmp)?get_binaryf32(u1.f_i,0,23):get_binaryf32(u2.f_i,0,23); //23bit
  unsigned int e12 = get_binaryf32(e1-e2,0,8);
  unsigned int e3 = e12>30?30:e12;
  unsigned int f3 = (s1 == s2)?(get_binaryf32(get_binaryf32((1<<23)+f1,0,25) + get_binaryf32(((1<<23)+f2)>>e3,0,25),0,25)):(get_binaryf32(get_binaryf32((1<<23)+f1,0,25) - get_binaryf32(((1<<23)+f2)>>e3,0,25),0,25));

  unsigned int e4 = 0; // 8bit
  unsigned int f4 = 0;

  int initial = -1;
  for(int i = 0;i<=24;i++){
    if(get_binaryf32(f3,24-i,25)==1){
      e4 = get_binaryf32(e1 - (initial),0,8);
      break;
    }
    initial++;
  }
  initial = -1;
  for(int i = 0;i<=24;i++){
    if(get_binaryf32(f3,24-i,25)==1){
      if(i==0){
        f4 = get_binaryf32(f3 >> 1,0,25);
        break;
      }
      f4 = get_binaryf32(f3 << (initial),0,25);
      break;
    }
    initial++;
  }

  unsigned int e5 = (e4 > e1+1)?0:e4;
  unsigned int f5 = (e4 > e1+1)?0:f4;
  unsigned int ret = (s1<<31) + (e5 << 23) + get_binaryf32(f5,0,23);

  union{ unsigned int f_i;float f_f;} true_value, ans;
  ans.f_i = ret;
  true_value.f_f = x1_f + x2_f;
  if(fabs(ans.f_f - true_value.f_f) > std::max({fabs(x1_f)*fpu_check,fabs(x2_f)*fpu_check,fabs(true_value.f_f)*fpu_check,epsilon})){
    fprintf(stderr,"invalid result in fadd %f+%f\n",u1.f_f,u2.f_f);
  }
  return ans.f_f;
}

