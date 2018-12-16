	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 252	# initialize gp
#	main program starts
	addi	sp, sp, -124
	sw	ra, 120(sp)
	li	a0, 0
	fli	fa0, l_8376
	fsw	fa0, 0(sp)
	call	min_caml_create_float_array
	li	a1, 60
	li	a2, 0
	li	a3, 0
	li	a4, 0
	li	a5, 0
	li	a6, 0
	mv	a7, gp
	addi	gp, gp, 44
	sw	a0, 40(a7)
	sw	a0, 36(a7)
	sw	a0, 32(a7)
	sw	a0, 28(a7)
	sw	a6, 24(a7)
	sw	a0, 20(a7)
	sw	a0, 16(a7)
	sw	a5, 12(a7)
	sw	a4, 8(a7)
	sw	a3, 4(a7)
	sw	a2, 0(a7)
	mv	a0, a7
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 8(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 12(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 50
	li	a2, 1
	li	a3, -1
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 20(sp)
	call	min_caml_create_array
	li	a1, 1
	li	a2, 1
	lw	a3, 0(a0)
	sw	a0, 24(sp)
	sw	a1, 28(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 28(sp)
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 32(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 36(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 44(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 2
	li	a2, 0
	sw	a0, 52(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 2
	li	a2, 0
	sw	a0, 56(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 76(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 80(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 0
	flw	fa0, 0(sp)
	sw	a0, 84(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 88(sp)
	call	min_caml_create_array
	li	a1, 0
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	lw	a0, 88(sp)
	sw	a0, 0(a2)
	mv	a0, a2
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 0
	flw	fa0, 0(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 96(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 60
	lw	a2, 96(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 100(sp)
	sw	a0, 0(a1)
	li	a2, 0
	flw	fa0, 0(sp)
	sw	a1, 104(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 108(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 108(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	li	a1, 180
	li	a2, 0
	mv	a3, gp
	addi	gp, gp, 12
	flw	fa0, 0(sp)
	fsw	fa0, 8(a3)
	sw	a0, 4(a3)
	sw	a2, 0(a3)
	mv	a0, a3
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 24
	la	a2, read_screen_settings_2611
	sw	a2, 0(a1)
	lw	a2, 12(sp)
	sw	a2, 20(a1)
	lw	a3, 80(sp)
	sw	a3, 16(a1)
	lw	a4, 76(sp)
	sw	a4, 12(a1)
	lw	a5, 72(sp)
	sw	a5, 8(a1)
	lw	a6, 8(sp)
	sw	a6, 4(a1)
	mv	a6, gp
	addi	gp, gp, 8
	la	a7, read_light_2613
	sw	a7, 0(a6)
	lw	a7, 16(sp)
	sw	a7, 4(a6)
	mv	s1, gp
	addi	gp, gp, 8
	la	s2, read_nth_object_2618
	sw	s2, 0(s1)
	lw	s2, 4(sp)
	sw	s2, 4(s1)
	mv	s3, gp
	addi	gp, gp, 8
	la	s4, read_object_2620
	sw	s4, 0(s3)
	sw	s1, 4(s3)
	mv	s1, gp
	addi	gp, gp, 8
	la	s4, read_and_network_2628
	sw	s4, 0(s1)
	lw	s4, 24(sp)
	sw	s4, 4(s1)
	mv	s5, gp
	addi	gp, gp, 24
	la	s6, read_parameter_2630
	sw	s6, 0(s5)
	sw	a1, 20(s5)
	sw	s3, 16(s5)
	sw	a6, 12(s5)
	sw	s1, 8(s5)
	lw	a1, 32(sp)
	sw	a1, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s1, solver_2672
	sw	s1, 0(a6)
	sw	s2, 4(a6)
	mv	s1, gp
	addi	gp, gp, 8
	la	s3, solver_fast_2695
	sw	s3, 0(s1)
	sw	s2, 4(s1)
	mv	s3, gp
	addi	gp, gp, 8
	la	s6, solver_fast2_2713
	sw	s6, 0(s3)
	sw	s2, 4(s3)
	mv	s6, gp
	addi	gp, gp, 8
	la	s7, iter_setup_dirvec_constants_2725
	sw	s7, 0(s6)
	sw	s2, 4(s6)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants_2730
	sw	s8, 0(s7)
	sw	s2, 4(s7)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, check_all_inside_2755
	sw	s9, 0(s8)
	sw	s2, 4(s8)
	mv	s9, gp
	addi	gp, gp, 28
	la	s10, shadow_check_and_group_2761
	sw	s10, 0(s9)
	sw	s1, 24(s9)
	sw	s2, 20(s9)
	lw	s10, 104(sp)
	sw	s10, 16(s9)
	sw	a7, 12(s9)
	lw	s11, 36(sp)
	sw	s11, 8(s9)
	sw	s8, 4(s9)
	mv	tp, gp
	addi	gp, gp, 12
	la	t0, shadow_check_one_or_group_2764
	sw	t0, 0(tp)
	sw	s9, 8(tp)
	sw	s4, 4(tp)
	mv	s9, gp
	addi	gp, gp, 20
	la	t0, shadow_check_one_or_matrix_2767
	sw	t0, 0(s9)
	sw	s1, 16(s9)
	sw	tp, 12(s9)
	sw	s10, 8(s9)
	sw	s11, 4(s9)
	mv	s1, gp
	addi	gp, gp, 24
	la	tp, solve_each_element_2770
	sw	tp, 0(s1)
	lw	tp, 64(sp)
	sw	tp, 20(s1)
	sw	a6, 16(s1)
	sw	s2, 12(s1)
	sw	s11, 8(s1)
	sw	s8, 4(s1)
	mv	t0, gp
	addi	gp, gp, 12
	la	t1, solve_one_or_network_2774
	sw	t1, 0(t0)
	sw	s1, 8(t0)
	sw	s4, 4(t0)
	mv	s1, gp
	addi	gp, gp, 16
	la	t1, trace_or_matrix_2778
	sw	t1, 0(s1)
	sw	tp, 12(s1)
	sw	a6, 8(s1)
	sw	t0, 4(s1)
	mv	a6, gp
	addi	gp, gp, 12
	la	t0, judge_intersection_2782
	sw	t0, 0(a6)
	sw	s1, 8(a6)
	sw	a1, 4(a6)
	mv	s1, gp
	addi	gp, gp, 24
	la	t0, solve_each_element_fast_2784
	sw	t0, 0(s1)
	lw	t0, 68(sp)
	sw	t0, 20(s1)
	sw	s3, 16(s1)
	sw	s2, 12(s1)
	sw	s11, 8(s1)
	sw	s8, 4(s1)
	mv	s8, gp
	addi	gp, gp, 12
	la	t1, solve_one_or_network_fast_2788
	sw	t1, 0(s8)
	sw	s1, 8(s8)
	sw	s4, 4(s8)
	mv	s1, gp
	addi	gp, gp, 12
	la	s4, trace_or_matrix_fast_2792
	sw	s4, 0(s1)
	sw	s3, 8(s1)
	sw	s8, 4(s1)
	mv	s3, gp
	addi	gp, gp, 12
	la	s4, judge_intersection_fast_2796
	sw	s4, 0(s3)
	sw	s1, 8(s3)
	sw	a1, 4(s3)
	mv	s1, gp
	addi	gp, gp, 8
	la	s4, get_nvector_rect_2798
	sw	s4, 0(s1)
	lw	s4, 40(sp)
	sw	s4, 4(s1)
	mv	s8, gp
	addi	gp, gp, 8
	la	t1, get_nvector_plane_2800
	sw	t1, 0(s8)
	sw	s4, 4(s8)
	mv	t1, gp
	addi	gp, gp, 12
	la	t2, get_nvector_second_2802
	sw	t2, 0(t1)
	sw	s4, 8(t1)
	sw	s11, 4(t1)
	mv	t2, gp
	addi	gp, gp, 8
	la	t3, utexture_2807
	sw	t3, 0(t2)
	lw	t3, 44(sp)
	sw	t3, 4(t2)
	mv	t4, gp
	addi	gp, gp, 12
	la	t5, add_light_2810
	sw	t5, 0(t4)
	sw	t3, 8(t4)
	lw	t5, 52(sp)
	sw	t5, 4(t4)
	mv	s10, gp
	addi	gp, gp, 28
	sw	s5, 112(sp)
	la	s5, trace_reflections_2814
	sw	s5, 0(s10)
	sw	s9, 24(s10)
	sw	a0, 20(s10)
	sw	a1, 16(s10)
	sw	s4, 12(s10)
	sw	s3, 8(s10)
	sw	t4, 4(s10)
	mv	s5, gp
	addi	gp, gp, 76
	sw	a0, 116(sp)
	la	a0, trace_ray_2819
	sw	a0, 0(s5)
	sw	t2, 72(s5)
	sw	s10, 68(s5)
	sw	t3, 64(s5)
	sw	t0, 60(s5)
	sw	tp, 56(s5)
	sw	s9, 52(s5)
	sw	s7, 48(s5)
	sw	t5, 44(s5)
	sw	a1, 40(s5)
	sw	s2, 36(s5)
	sw	s4, 32(s5)
	sw	a7, 28(s5)
	sw	a6, 24(s5)
	sw	s11, 20(s5)
	sw	t1, 16(s5)
	sw	s1, 12(s5)
	sw	s8, 8(s5)
	sw	t4, 4(s5)
	mv	a0, gp
	addi	gp, gp, 56
	la	a6, trace_diffuse_ray_2825
	sw	a6, 0(a0)
	sw	t2, 52(a0)
	sw	t3, 48(a0)
	sw	s9, 44(a0)
	sw	a1, 40(a0)
	sw	s2, 36(a0)
	sw	s4, 32(a0)
	sw	a7, 28(a0)
	sw	s3, 24(a0)
	sw	s11, 20(a0)
	sw	t1, 16(a0)
	sw	s1, 12(a0)
	sw	s8, 8(a0)
	lw	a1, 48(sp)
	sw	a1, 4(a0)
	mv	a6, gp
	addi	gp, gp, 8
	la	s1, iter_trace_diffuse_rays_2828
	sw	s1, 0(a6)
	sw	a0, 4(a6)
	mv	a0, gp
	addi	gp, gp, 20
	la	s1, trace_diffuse_ray_80percent_2837
	sw	s1, 0(a0)
	sw	t0, 16(a0)
	sw	s7, 12(a0)
	sw	a6, 8(a0)
	lw	s1, 92(sp)
	sw	s1, 4(a0)
	mv	s3, gp
	addi	gp, gp, 16
	la	s4, calc_diffuse_using_1point_2841
	sw	s4, 0(s3)
	sw	a0, 12(s3)
	sw	t5, 8(s3)
	sw	a1, 4(s3)
	mv	a0, gp
	addi	gp, gp, 12
	la	s4, calc_diffuse_using_5points_2844
	sw	s4, 0(a0)
	sw	t5, 8(a0)
	sw	a1, 4(a0)
	mv	s4, gp
	addi	gp, gp, 8
	la	s8, do_without_neighbors_2850
	sw	s8, 0(s4)
	sw	s3, 4(s4)
	mv	s3, gp
	addi	gp, gp, 8
	la	s8, neighbors_exist_2853
	sw	s8, 0(s3)
	lw	s8, 56(sp)
	sw	s8, 4(s3)
	mv	s9, gp
	addi	gp, gp, 12
	la	s10, try_exploit_neighbors_2866
	sw	s10, 0(s9)
	sw	s4, 8(s9)
	sw	a0, 4(s9)
	mv	a0, gp
	addi	gp, gp, 8
	la	s10, write_ppm_header_2873
	sw	s10, 0(a0)
	sw	s8, 4(a0)
	mv	s10, gp
	addi	gp, gp, 8
	la	s11, write_rgb_2877
	sw	s11, 0(s10)
	sw	t5, 4(s10)
	mv	s11, gp
	addi	gp, gp, 24
	la	t1, pretrace_diffuse_rays_2879
	sw	t1, 0(s11)
	sw	t0, 20(s11)
	sw	s7, 16(s11)
	sw	a6, 12(s11)
	sw	s1, 8(s11)
	sw	a1, 4(s11)
	mv	a1, gp
	addi	gp, gp, 36
	la	a6, pretrace_pixels_2882
	sw	a6, 0(a1)
	sw	a2, 32(a1)
	sw	s5, 28(a1)
	sw	tp, 24(a1)
	sw	a5, 20(a1)
	sw	t5, 16(a1)
	lw	a2, 84(sp)
	sw	a2, 12(a1)
	sw	s11, 8(a1)
	lw	a2, 60(sp)
	sw	a2, 4(a1)
	mv	a5, gp
	addi	gp, gp, 24
	la	a6, pretrace_line_2889
	sw	a6, 0(a5)
	sw	a3, 20(a5)
	sw	a4, 16(a5)
	sw	a1, 12(a5)
	sw	s8, 8(a5)
	sw	a2, 4(a5)
	mv	a1, gp
	addi	gp, gp, 28
	la	a3, scan_pixel_2893
	sw	a3, 0(a1)
	sw	s10, 24(a1)
	sw	s9, 20(a1)
	sw	t5, 16(a1)
	sw	s3, 12(a1)
	sw	s8, 8(a1)
	sw	s4, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	a4, scan_line_2899
	sw	a4, 0(a3)
	sw	a1, 12(a3)
	sw	a5, 8(a3)
	sw	s8, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	a4, create_pixelline_2912
	sw	a4, 0(a1)
	sw	s8, 4(a1)
	mv	a4, gp
	addi	gp, gp, 8
	la	a6, calc_dirvec_2919
	sw	a6, 0(a4)
	sw	s1, 4(a4)
	mv	a6, gp
	addi	gp, gp, 8
	la	s3, calc_dirvecs_2927
	sw	s3, 0(a6)
	sw	a4, 4(a6)
	mv	a4, gp
	addi	gp, gp, 8
	la	s3, calc_dirvec_rows_2932
	sw	s3, 0(a4)
	sw	a6, 4(a4)
	mv	a6, gp
	addi	gp, gp, 8
	la	s3, create_dirvecs_2941
	sw	s3, 0(a6)
	sw	s1, 4(a6)
	mv	s3, gp
	addi	gp, gp, 8
	la	s4, init_dirvec_constants_2943
	sw	s4, 0(s3)
	sw	s6, 4(s3)
	mv	s4, gp
	addi	gp, gp, 16
	la	s5, init_vecset_constants_2946
	sw	s5, 0(s4)
	sw	s6, 12(s4)
	sw	s3, 8(s4)
	sw	s1, 4(s4)
	mv	s1, gp
	addi	gp, gp, 16
	la	s3, setup_rect_reflection_2957
	sw	s3, 0(s1)
	lw	s3, 116(sp)
	sw	s3, 12(s1)
	sw	a7, 8(s1)
	sw	s6, 4(s1)
	mv	s5, gp
	addi	gp, gp, 16
	la	s7, setup_surface_reflection_2960
	sw	s7, 0(s5)
	sw	s3, 12(s5)
	sw	a7, 8(s5)
	sw	s6, 4(s5)
	mv	s3, gp
	addi	gp, gp, 16
	la	s7, setup_reflections_2963
	sw	s7, 0(s3)
	sw	s5, 12(s3)
	sw	s1, 8(s3)
	sw	s2, 4(s3)
	mv	s11, gp
	addi	gp, gp, 64
	la	s1, rt_2965
	sw	s1, 0(s11)
	sw	a0, 60(s11)
	lw	a0, 100(sp)
	sw	a0, 56(s11)
	sw	s3, 52(s11)
	sw	a3, 48(s11)
	lw	a0, 112(sp)
	sw	a0, 44(s11)
	sw	a5, 40(s11)
	lw	a0, 104(sp)
	sw	a0, 36(s11)
	sw	a7, 32(s11)
	sw	s6, 28(s11)
	sw	s4, 24(s11)
	sw	s8, 20(s11)
	sw	a2, 16(s11)
	sw	a1, 12(s11)
	sw	a6, 8(s11)
	sw	a4, 4(s11)
	li	a0, 128
	li	a1, 128
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	ra, 120(sp)
	addi	sp, sp, 124
#	main program ends
end:
	b	end
veccpy_2510:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_2510_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecunit_sgn_2513:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a0)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa1, l_8376
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10433
	bne	a1, zero, beq_else_10435
	fli	fa1, l_8377
	fdiv	fa0, fa1, fa0
	b	beq_cont_10436
beq_else_10435:
	fli	fa1, l_8378
	fdiv	fa0, fa1, fa0
beq_cont_10436:
	b	beq_cont_10434
beq_else_10433:
	fli	fa0, l_8377
beq_cont_10434:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2513_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod_2516:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
veciprod_2516_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod2_2519:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 4(a0)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
veciprod2_2519_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccum_2524:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa1, 0(a0)
	flw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	flw	fa2, 4(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	flw	fa2, 8(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecaccum_2524_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecadd_2528:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
vecadd_2528_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecscale_2531:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecscale_2531_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccumv_2534:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a0)
	flw	fa1, 0(a1)
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	flw	fa0, 4(a0)
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 4(a0)
	flw	fa0, 8(a0)
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a0)
vecaccumv_2534_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
read_screen_settings_2611:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a0, 20(s11)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a0, 0(sp)
	sw	a2, 4(sp)
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	sw	a4, 16(sp)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 16(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	fli	fa1, l_8433
	fmul	fa0, fa0, fa1
	fsw	fa1, 20(sp)
	fsw	fa0, 24(sp)
	call	min_caml_cos
	flw	fa1, 24(sp)
	fsw	fa0, 28(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	fsw	fa0, 32(sp)
	call	min_caml_read_float
	flw	fa1, 20(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, 36(sp)
	call	min_caml_cos
	flw	fa1, 36(sp)
	fsw	fa0, 40(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 28(sp)
	fmul	fa2, fa1, fa0
	fli	fa3, l_8434
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8436
	flw	fa4, 32(sp)
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 40(sp)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_8376
	fsw	fa3, 4(a1)
	fneg	fa3, fa0
	fsw	fa3, 8(a1)
	fneg	fa3, fa4
	fmul	fa0, fa3, fa0
	lw	a1, 4(sp)
	fsw	fa0, 0(a1)
	fneg	fa0, fa1
	fsw	fa0, 4(a1)
	fmul	fa0, fa3, fa2
	fsw	fa0, 8(a1)
	lw	a1, 16(sp)
	flw	fa0, 0(a1)
	flw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	lw	a2, 0(sp)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a1)
	flw	fa1, 4(a0)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a2)
	flw	fa0, 8(a1)
	flw	fa1, 8(a0)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a2)
read_screen_settings_2611_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
read_light_2613:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 4(s11)
	sw	a0, 0(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_8433
	fmul	fa0, fa0, fa1
	fsw	fa0, 4(sp)
	fsw	fa1, 8(sp)
	call	min_caml_sin
	fneg	fa0, fa0
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 8(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(sp)
	fsw	fa0, 12(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 12(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 12(sp)
	call	min_caml_cos
	flw	fa1, 16(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
	lda	a0, min_caml_beam
	sw	a0, 20(sp)
	call	min_caml_read_float
	lw	a0, 20(sp)
	fsw	fa0, 0(a0)
read_light_2613_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
rotate_quadratic_matrix_2615:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	flw	fa0, 0(a1)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 0(a0)
	fsw	fa0, 8(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 12(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 4(a0)
	fsw	fa0, 16(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 20(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	lw	a0, 4(sp)
	flw	fa1, 8(a0)
	fsw	fa0, 24(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 24(sp)
	flw	fa2, 16(sp)
	fmul	fa3, fa2, fa1
	flw	fa4, 20(sp)
	flw	fa5, 12(sp)
	fmul	fa6, fa5, fa4
	fmul	fa7, fa6, fa1
	flw	fs1, 8(sp)
	fmul	fs2, fs1, fa0
	fsub	fa7, fa7, fs2
	fmul	fs2, fs1, fa4
	fmul	fs3, fs2, fa1
	fmul	fs4, fa5, fa0
	fadd	fs3, fs3, fs4
	fmul	fs4, fa2, fa0
	fmul	fa6, fa6, fa0
	fmul	fs5, fs1, fa1
	fadd	fa6, fa6, fs5
	fmul	fa0, fs2, fa0
	fmul	fa1, fa5, fa1
	fsub	fa0, fa0, fa1
	fneg	fa1, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, fs1, fa2
	lw	a0, 0(sp)
	flw	fa5, 0(a0)
	flw	fs1, 4(a0)
	flw	fs2, 8(a0)
	fmul	fs5, fa3, fa3
	fmul	fs5, fa5, fs5
	fmul	fs6, fs4, fs4
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa1, fa1
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 0(a0)
	fmul	fs5, fa7, fa7
	fmul	fs5, fa5, fs5
	fmul	fs6, fa6, fa6
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa4, fa4
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 4(a0)
	fmul	fs5, fs3, fs3
	fmul	fs5, fa5, fs5
	fmul	fs6, fa0, fa0
	fmul	fs6, fs1, fs6
	fadd	fs5, fs5, fs6
	fmul	fs6, fa2, fa2
	fmul	fs6, fs2, fs6
	fadd	fs5, fs5, fs6
	fsw	fs5, 8(a0)
	fli	fs5, l_8470
	fmul	fs6, fa5, fa7
	fmul	fs6, fs6, fs3
	fmul	fs7, fs1, fa6
	fmul	fs7, fs7, fa0
	fadd	fs6, fs6, fs7
	fmul	fs7, fs2, fa4
	fmul	fs7, fs7, fa2
	fadd	fs6, fs6, fs7
	fmul	fs6, fs5, fs6
	lw	a0, 4(sp)
	fsw	fs6, 0(a0)
	fmul	fa3, fa5, fa3
	fmul	fa5, fa3, fs3
	fmul	fs1, fs1, fs4
	fmul	fa0, fs1, fa0
	fadd	fa0, fa5, fa0
	fmul	fa1, fs2, fa1
	fmul	fa2, fa1, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, fs5, fa0
	fsw	fa0, 4(a0)
	fmul	fa0, fa3, fa7
	fmul	fa2, fs1, fa6
	fadd	fa0, fa0, fa2
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa0, fs5, fa0
	fsw	fa0, 8(a0)
rotate_quadratic_matrix_2615_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
read_nth_object_2618:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_10445
	li	a0, 0
	b	read_nth_object_2618_ret
beq_else_10445:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_8376
	sw	a0, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	sw	a0, 28(sp)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 28(sp)
	fsw	fa0, 8(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	sw	a0, 32(sp)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 32(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	flw	fa1, 24(sp)
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	li	a1, 2
	sw	a0, 36(sp)
	mv	a0, a1
	fmv	fa0, fa1
	call	min_caml_create_float_array
	sw	a0, 40(sp)
	call	min_caml_read_float
	lw	a0, 40(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 40(sp)
	fsw	fa0, 4(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	sw	a0, 44(sp)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 0(a0)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	lw	a0, 44(sp)
	fsw	fa0, 8(a0)
	li	a1, 3
	flw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_10446
	b	beq_cont_10447
beq_else_10446:
	sw	a0, 48(sp)
	call	min_caml_read_float
	fli	fa1, l_8433
	fmul	fa0, fa0, fa1
	lw	a0, 48(sp)
	fsw	fa0, 0(a0)
	fsw	fa1, 52(sp)
	call	min_caml_read_float
	flw	fa1, 52(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 48(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 52(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 48(sp)
	fsw	fa0, 8(a0)
beq_cont_10447:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10448
	li	a2, 1
	b	beq_cont_10449
beq_else_10448:
	lw	a2, 36(sp)
beq_cont_10449:
	li	a3, 4
	flw	fa0, 24(sp)
	sw	a2, 56(sp)
	sw	a0, 48(sp)
	mv	a0, a3
	call	min_caml_create_float_array
	mv	a1, gp
	addi	gp, gp, 44
	sw	a0, 40(a1)
	lw	a0, 48(sp)
	sw	a0, 36(a1)
	lw	a2, 44(sp)
	sw	a2, 32(a1)
	lw	a2, 40(sp)
	sw	a2, 28(a1)
	lw	a2, 56(sp)
	sw	a2, 24(a1)
	lw	a2, 32(sp)
	sw	a2, 20(a1)
	lw	a2, 28(sp)
	sw	a2, 16(a1)
	lw	a3, 20(sp)
	sw	a3, 12(a1)
	lw	a4, 16(sp)
	sw	a4, 8(a1)
	lw	a4, 12(sp)
	sw	a4, 4(a1)
	lw	a5, 8(sp)
	sw	a5, 0(a1)
	lw	a5, 4(sp)
	slli	a5, a5, 2
	lw	a6, 0(sp)
	add	t6, a6, a5
	sw	a1, 0(t6)
	li	t6, 3
	bne	a4, t6, beq_else_10450
	flw	fa0, 0(a2)
	flw	fa1, 24(sp)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10452
	bne	a1, zero, beq_else_10454
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10456
	fli	fa2, l_8377
	b	beq_cont_10457
beq_else_10456:
	fli	fa2, l_8378
beq_cont_10457:
	b	beq_cont_10455
beq_else_10454:
	fli	fa2, l_8376
beq_cont_10455:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10453
beq_else_10452:
	fli	fa0, l_8376
beq_cont_10453:
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10458
	bne	a1, zero, beq_else_10460
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10462
	fli	fa2, l_8377
	b	beq_cont_10463
beq_else_10462:
	fli	fa2, l_8378
beq_cont_10463:
	b	beq_cont_10461
beq_else_10460:
	fli	fa2, l_8376
beq_cont_10461:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10459
beq_else_10458:
	fli	fa0, l_8376
beq_cont_10459:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10464
	bne	a1, zero, beq_else_10466
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10468
	fli	fa1, l_8377
	b	beq_cont_10469
beq_else_10468:
	fli	fa1, l_8378
beq_cont_10469:
	b	beq_cont_10467
beq_else_10466:
	fli	fa1, l_8376
beq_cont_10467:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	beq_cont_10465
beq_else_10464:
	fli	fa0, l_8376
beq_cont_10465:
	fsw	fa0, 8(a2)
	b	beq_cont_10451
beq_else_10450:
	li	t6, 2
	bne	a4, t6, beq_cont_10470
	lw	a1, 36(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2513
beq_cont_10470:
beq_cont_10451:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_10471
	b	beq_cont_10472
beq_else_10471:
	lw	a0, 28(sp)
	lw	a1, 48(sp)
	call	rotate_quadratic_matrix_2615
beq_cont_10472:
	li	a0, 1
read_nth_object_2618_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
read_object_2620:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	lw	a1, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_10473
	b	read_object_2620_ret
bge_else_10473:
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10475
	lda	a0, min_caml_n_objects
	lw	a1, 4(sp)
	sw	a1, 0(a0)
	b	read_object_2620_ret
beq_else_10475:
	lw	a0, 4(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2620_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_net_item_2624:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, beq_else_10477
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2624_ret
beq_else_10477:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2624
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2624_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_or_network_2626:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2624
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_10478
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2626_ret
beq_else_10478:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2626
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2626_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_and_network_2628:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 4(s11)
	li	a2, 0
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item_2624
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_10479
	b	read_and_network_2628_ret
beq_else_10479:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2628_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_parameter_2630:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a0, 20(s11)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	a2, 12(sp)
	mv	s11, a0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	call	read_or_network_2626
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2630_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
solver_rect_surface_2632:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a5, a2, 2
	add	t6, a1, a5
	flw	fa3, 0(t6)
	fli	fa4, l_8376
	feq	a5, fa3, fa4
	bne	a5, zero, beq_else_10482
	lw	a5, 24(a0)
	lw	a0, 16(a0)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fle	a6, fa4, fa3
	xori	a6, a6, 1	# boolean not
	xor	a5, a5, a6
	slli	a6, a2, 2
	add	t6, a0, a6
	flw	fa3, 0(t6)
	bne	a5, zero, beq_cont_10483
	fneg	fa3, fa3
beq_cont_10483:
	fsub	fa0, fa3, fa0
	slli	a2, a2, 2
	add	t6, a1, a2
	flw	fa3, 0(t6)
	fdiv	fa0, fa0, fa3
	slli	a2, a3, 2
	add	t6, a0, a2
	flw	fa3, 0(t6)
	slli	a2, a3, 2
	add	t6, a1, a2
	flw	fa4, 0(t6)
	fmul	fa4, fa0, fa4
	fadd	fa1, fa4, fa1
	fabs	fa1, fa1
	fle	a2, fa3, fa1
	bne	a2, zero, beq_else_10484
	slli	a2, a4, 2
	add	t6, a0, a2
	flw	fa1, 0(t6)
	slli	a0, a4, 2
	add	t6, a1, a0
	flw	fa3, 0(t6)
	fmul	fa3, fa0, fa3
	fadd	fa2, fa3, fa2
	fabs	fa2, fa2
	fle	a0, fa1, fa2
	bne	a0, zero, beq_else_10485
	lda	a0, min_caml_solver_dist
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_rect_surface_2632_ret
beq_else_10485:
	li	a0, 0
	b	solver_rect_surface_2632_ret
beq_else_10484:
	li	a0, 0
	b	solver_rect_surface_2632_ret
beq_else_10482:
	li	a0, 0
solver_rect_surface_2632_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_2641:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	li	a2, 0
	li	a3, 1
	li	a4, 2
	fsw	fa0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa1, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	call	solver_rect_surface_2632
	bne	a0, zero, beq_else_10486
	li	a2, 1
	li	a3, 2
	li	a4, 0
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	solver_rect_surface_2632
	bne	a0, zero, beq_else_10487
	li	a2, 2
	li	a3, 0
	li	a4, 1
	flw	fa0, 4(sp)
	flw	fa1, 0(sp)
	flw	fa2, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	solver_rect_surface_2632
	bne	a0, zero, beq_else_10488
	li	a0, 0
	b	solver_rect_2641_ret
beq_else_10488:
	li	a0, 3
	b	solver_rect_2641_ret
beq_else_10487:
	li	a0, 2
	b	solver_rect_2641_ret
beq_else_10486:
	li	a0, 1
solver_rect_2641_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
solver_surface_2647:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 16(a0)
	fsw	fa2, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa0, 8(sp)
	sw	a0, 12(sp)
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	veciprod_2516
	fli	fa1, l_8376
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10489
	lda	a0, min_caml_solver_dist
	flw	fa1, 8(sp)
	flw	fa2, 4(sp)
	flw	fa3, 0(sp)
	lw	a1, 12(sp)
	sw	a0, 16(sp)
	fsw	fa0, 20(sp)
	mv	a0, a1
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	veciprod2_2519
	fneg	fa0, fa0
	flw	fa1, 20(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 16(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_2647_ret
beq_else_10489:
	li	a0, 0
solver_surface_2647_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
quadratic_2653:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fmul	fa3, fa0, fa0
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa4, 0(a2)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	flw	fa5, 8(a2)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	bne	a0, zero, beq_else_10490
	fmv	fa0, fa3
	b	quadratic_2653_ret
beq_else_10490:
	fmul	fa4, fa1, fa2
	flw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	flw	fa4, 4(a1)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
quadratic_2653_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
bilinear_2658:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fmul	fa6, fa0, fa3
	lw	a1, 36(a0)
	lw	a2, 16(a0)
	lw	a0, 12(a0)
	flw	fa7, 0(a2)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	flw	fs1, 4(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	flw	fs1, 8(a2)
	fmul	fa7, fa7, fs1
	fadd	fa6, fa6, fa7
	bne	a0, zero, beq_else_10491
	fmv	fa0, fa6
	b	bilinear_2658_ret
beq_else_10491:
	fmul	fa7, fa2, fa4
	fmul	fs1, fa1, fa5
	fadd	fa7, fa7, fs1
	flw	fs1, 0(a1)
	fmul	fa7, fa7, fs1
	fmul	fa5, fa0, fa5
	fmul	fa2, fa2, fa3
	fadd	fa2, fa5, fa2
	flw	fa5, 4(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	fli	fa1, l_8470
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_2658_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_2666:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	flw	fa3, 0(a1)
	flw	fa4, 4(a1)
	flw	fa5, 8(a1)
	fsw	fa2, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa0, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	fmv	fa2, fa5
	fmv	fa1, fa4
	fmv	fa0, fa3
	call	quadratic_2653
	fli	fa1, l_8376
	feq	a0, fa0, fa1
	bne	a0, zero, beq_else_10492
	lw	a0, 16(sp)
	flw	fa2, 0(a0)
	flw	fa3, 4(a0)
	flw	fa4, 8(a0)
	flw	fa5, 8(sp)
	flw	fa6, 4(sp)
	flw	fa7, 0(sp)
	lw	a0, 12(sp)
	fsw	fa1, 20(sp)
	fsw	fa0, 24(sp)
	fmv	fa1, fa3
	fmv	fa0, fa2
	fmv	fa3, fa5
	fmv	fa2, fa4
	fmv	fa5, fa7
	fmv	fa4, fa6
	call	bilinear_2658
	flw	fa1, 8(sp)
	flw	fa2, 4(sp)
	flw	fa3, 0(sp)
	lw	a0, 12(sp)
	fsw	fa0, 28(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	quadratic_2653
	lw	a0, 12(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10493
	fli	fa1, l_8377
	fsub	fa0, fa0, fa1
beq_cont_10493:
	flw	fa1, 28(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 24(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 20(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10494
	fsqrt	fa0, fa0
	bne	a1, zero, beq_cont_10495
	fneg	fa0, fa0
beq_cont_10495:
	lda	a0, min_caml_solver_dist
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2666_ret
beq_else_10494:
	li	a0, 0
	b	solver_second_2666_ret
beq_else_10492:
	li	a0, 0
solver_second_2666_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
solver_2672:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
	slli	a0, a0, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	flw	fa0, 0(a2)
	lw	a3, 20(a0)
	lw	a4, 4(a0)
	flw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a3)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a3)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a4, t6, beq_else_10496
	call	solver_rect_2641
	b	solver_2672_ret
beq_else_10496:
	li	t6, 2
	bne	a4, t6, beq_else_10497
	call	solver_surface_2647
	b	solver_2672_ret
beq_else_10497:
	call	solver_second_2666
solver_2672_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_fast_2676:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa3, 0(a2)
	fsub	fa3, fa3, fa0
	flw	fa4, 4(a2)
	fmul	fa3, fa3, fa4
	lw	a0, 16(a0)
	flw	fa4, 4(a0)
	flw	fa5, 4(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa1
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, beq_else_10498
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, beq_else_10500
	flw	fa4, 4(a2)
	fli	fa5, l_8376
	feq	a3, fa4, fa5
	xori	a3, a3, 1	# boolean not
	b	beq_cont_10501
beq_else_10500:
	li	a3, 0
beq_cont_10501:
	b	beq_cont_10499
beq_else_10498:
	li	a3, 0
beq_cont_10499:
	bne	a3, zero, beq_else_10502
	flw	fa3, 8(a2)
	fsub	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, beq_else_10503
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a3, fa4, fa5
	bne	a3, zero, beq_else_10505
	flw	fa4, 12(a2)
	fli	fa5, l_8376
	feq	a3, fa4, fa5
	xori	a3, a3, 1	# boolean not
	b	beq_cont_10506
beq_else_10505:
	li	a3, 0
beq_cont_10506:
	b	beq_cont_10504
beq_else_10503:
	li	a3, 0
beq_cont_10504:
	bne	a3, zero, beq_else_10507
	flw	fa3, 16(a2)
	fsub	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	a3, fa3, fa0
	bne	a3, zero, beq_else_10508
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10510
	flw	fa0, 20(a2)
	fli	fa1, l_8376
	feq	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10511
beq_else_10510:
	li	a0, 0
beq_cont_10511:
	b	beq_cont_10509
beq_else_10508:
	li	a0, 0
beq_cont_10509:
	bne	a0, zero, beq_else_10512
	li	a0, 0
	b	solver_rect_fast_2676_ret
beq_else_10512:
	lda	a0, min_caml_solver_dist
	fsw	fa2, 0(a0)
	li	a0, 3
	b	solver_rect_fast_2676_ret
beq_else_10507:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 2
	b	solver_rect_fast_2676_ret
beq_else_10502:
	lda	a0, min_caml_solver_dist
	fsw	fa3, 0(a0)
	li	a0, 1
solver_rect_fast_2676_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast_2683:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fli	fa3, l_8376
	flw	fa4, 0(a1)
	fle	a0, fa3, fa4
	bne	a0, zero, beq_else_10513
	lda	a0, min_caml_solver_dist
	flw	fa3, 4(a1)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast_2683_ret
beq_else_10513:
	li	a0, 0
solver_surface_fast_2683_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast_2689:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	flw	fa3, 0(a1)
	fli	fa4, l_8376
	feq	a2, fa3, fa4
	bne	a2, zero, beq_else_10514
	flw	fa5, 4(a1)
	fmul	fa5, fa5, fa0
	flw	fa6, 8(a1)
	fmul	fa6, fa6, fa1
	fadd	fa5, fa5, fa6
	flw	fa6, 12(a1)
	fmul	fa6, fa6, fa2
	fadd	fa5, fa5, fa6
	sw	a1, 0(sp)
	fsw	fa4, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa5, 12(sp)
	sw	a0, 16(sp)
	call	quadratic_2653
	lw	a0, 16(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10515
	fli	fa1, l_8377
	fsub	fa0, fa0, fa1
beq_cont_10515:
	flw	fa1, 12(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 8(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 4(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10516
	bne	a1, zero, beq_else_10517
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a1, 0(sp)
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	beq_cont_10518
beq_else_10517:
	lda	a0, min_caml_solver_dist
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a1, 0(sp)
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
beq_cont_10518:
	li	a0, 1
	b	solver_second_fast_2689_ret
beq_else_10516:
	li	a0, 0
	b	solver_second_fast_2689_ret
beq_else_10514:
	li	a0, 0
solver_second_fast_2689_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
solver_fast_2695:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	flw	fa0, 0(a2)
	lw	a4, 20(a3)
	lw	a5, 4(a3)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a4)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	li	t6, 1
	bne	a5, t6, beq_else_10519
	mv	a0, a3
	call	solver_rect_fast_2676
	b	solver_fast_2695_ret
beq_else_10519:
	li	t6, 2
	bne	a5, t6, beq_else_10520
	mv	a1, a2
	mv	a0, a3
	call	solver_surface_fast_2683
	b	solver_fast_2695_ret
beq_else_10520:
	mv	a1, a2
	mv	a0, a3
	call	solver_second_fast_2689
solver_fast_2695_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast2_2699:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	fli	fa0, l_8376
	flw	fa1, 0(a1)
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10521
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast2_2699_ret
beq_else_10521:
	li	a0, 0
solver_surface_fast2_2699_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast2_2706:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa3, 0(a1)
	fli	fa4, l_8376
	feq	a3, fa3, fa4
	bne	a3, zero, beq_else_10522
	flw	fa5, 4(a1)
	fmul	fa0, fa5, fa0
	flw	fa5, 8(a1)
	fmul	fa1, fa5, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 12(a2)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	a2, fa1, fa4
	bne	a2, zero, beq_else_10523
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10524
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	b	beq_cont_10525
beq_else_10524:
	lda	a0, min_caml_solver_dist
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
beq_cont_10525:
	li	a0, 1
	b	solver_second_fast2_2706_ret
beq_else_10523:
	li	a0, 0
	b	solver_second_fast2_2706_ret
beq_else_10522:
	li	a0, 0
solver_second_fast2_2706_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2713:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 4(a2)
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	lw	a5, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a5, a0
	lw	a0, 0(t6)
	li	t6, 1
	bne	a4, t6, beq_else_10526
	mv	t4, a2
	mv	a2, a0
	mv	a0, t4
	call	solver_rect_fast_2676
	b	solver_fast2_2713_ret
beq_else_10526:
	li	t6, 2
	bne	a4, t6, beq_else_10527
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	call	solver_surface_fast2_2699
	b	solver_fast2_2713_ret
beq_else_10527:
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	call	solver_second_fast2_2706
solver_fast2_2713_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2716:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 6
	fli	fa0, l_8376
	sw	a1, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(sp)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10528
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_cont_10530
	fneg	fa0, fa0
beq_cont_10530:
	fsw	fa0, 0(a0)
	fli	fa0, l_8377
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 4(a0)
	b	beq_cont_10529
beq_else_10528:
	fsw	fa1, 4(a0)
beq_cont_10529:
	flw	fa0, 4(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10531
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_cont_10533
	fneg	fa0, fa0
beq_cont_10533:
	fsw	fa0, 8(a0)
	fli	fa0, l_8377
	flw	fa2, 4(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 12(a0)
	b	beq_cont_10532
beq_else_10531:
	fsw	fa1, 12(a0)
beq_cont_10532:
	flw	fa0, 8(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10534
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_cont_10536
	fneg	fa0, fa0
beq_cont_10536:
	fsw	fa0, 16(a0)
	fli	fa0, l_8377
	flw	fa1, 8(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_10535
beq_else_10534:
	fsw	fa1, 20(a0)
beq_cont_10535:
setup_rect_table_2716_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_surface_table_2719:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 4
	fli	fa0, l_8376
	fsw	fa0, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	lw	a2, 4(sp)
	lw	a2, 16(a2)
	flw	fa1, 0(a2)
	fmul	fa0, fa0, fa1
	flw	fa1, 4(a1)
	flw	fa2, 4(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	flw	fa1, 0(sp)
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10537
	fli	fa1, l_8378
	fdiv	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 0(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 4(a0)
	flw	fa1, 4(a2)
	fdiv	fa1, fa1, fa0
	fneg	fa1, fa1
	fsw	fa1, 8(a0)
	flw	fa1, 8(a2)
	fdiv	fa0, fa1, fa0
	fneg	fa0, fa0
	fsw	fa0, 12(a0)
	b	beq_cont_10538
beq_else_10537:
	fsw	fa1, 0(a0)
beq_cont_10538:
setup_surface_table_2719_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_second_table_2722:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	li	a2, 5
	fli	fa0, l_8376
	fsw	fa0, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
	flw	fa2, 8(a1)
	lw	a2, 4(sp)
	sw	a0, 12(sp)
	mv	a0, a2
	call	quadratic_2653
	lw	a0, 8(sp)
	flw	fa1, 0(a0)
	lw	a1, 4(sp)
	lw	a2, 36(a1)
	lw	a3, 16(a1)
	lw	a1, 12(a1)
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fneg	fa1, fa1
	flw	fa2, 4(a0)
	flw	fa3, 4(a3)
	fmul	fa2, fa2, fa3
	fneg	fa2, fa2
	flw	fa3, 8(a0)
	flw	fa4, 8(a3)
	fmul	fa3, fa3, fa4
	fneg	fa3, fa3
	lw	a3, 12(sp)
	fsw	fa0, 0(a3)
	bne	a1, zero, beq_else_10539
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_10540
beq_else_10539:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_8470
	fdiv	fa4, fa4, fa5
	fsub	fa1, fa1, fa4
	fsw	fa1, 4(a3)
	flw	fa1, 8(a0)
	flw	fa4, 0(a2)
	fmul	fa1, fa1, fa4
	flw	fa4, 0(a0)
	flw	fa6, 8(a2)
	fmul	fa4, fa4, fa6
	fadd	fa1, fa1, fa4
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa2, fa1
	fsw	fa1, 8(a3)
	flw	fa1, 4(a0)
	flw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	flw	fa2, 0(a0)
	flw	fa4, 4(a2)
	fmul	fa2, fa2, fa4
	fadd	fa1, fa1, fa2
	fdiv	fa1, fa1, fa5
	fsub	fa1, fa3, fa1
	fsw	fa1, 12(a3)
beq_cont_10540:
	flw	fa1, 0(sp)
	feq	a0, fa0, fa1
	bne	a0, zero, beq_cont_10541
	fli	fa1, l_8377
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
beq_cont_10541:
	mv	a0, a3
setup_second_table_2722_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
iter_setup_dirvec_constants_2725:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a2, 4(s11)
	blt	a1, zero, iter_setup_dirvec_constants_2725_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_10542
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2716
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10543
beq_else_10542:
	li	t6, 2
	bne	a5, t6, beq_else_10544
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2719
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10545
beq_else_10544:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2722
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_10545:
beq_cont_10543:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_setup_dirvec_constants_2725_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
setup_startp_constants_2730:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a2, 4(s11)
	blt	a1, zero, setup_startp_constants_2730_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 40(a2)
	lw	a4, 20(a2)
	lw	a5, 16(a2)
	lw	a6, 4(a2)
	flw	fa0, 0(a0)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	flw	fa0, 4(a0)
	flw	fa1, 4(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 4(a3)
	flw	fa0, 8(a0)
	flw	fa1, 8(a4)
	fsub	fa0, fa0, fa1
	fsw	fa0, 8(a3)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	li	t6, 2
	bne	a6, t6, beq_else_10546
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2519
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_10547
beq_else_10546:
	li	t6, 2
	bgt	a6, t6, ble_else_10548
	b	ble_cont_10549
ble_else_10548:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2653
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_cont_10550
	fli	fa1, l_8377
	fsub	fa0, fa0, fa1
beq_cont_10550:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_10549:
beq_cont_10547:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_constants_2730_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2735:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, beq_else_10551
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	a2, fa0, fa1
	bne	a2, zero, beq_else_10553
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10554
beq_else_10553:
	li	a0, 0
beq_cont_10554:
	b	beq_cont_10552
beq_else_10551:
	li	a0, 0
beq_cont_10552:
	bne	a0, zero, beq_else_10555
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2735_ret
beq_else_10555:
	mv	a0, a1
is_rect_outside_2735_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_second_outside_2745:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)
	call	quadratic_2653
	lw	a0, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10556
	fli	fa1, l_8377
	fsub	fa0, fa0, fa1
beq_cont_10556:
	fli	fa1, l_8376
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_2745_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
is_outside_2750:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 24(a0)
	lw	a2, 20(a0)
	lw	a3, 16(a0)
	lw	a4, 4(a0)
	flw	fa3, 0(a2)
	fsub	fa0, fa0, fa3
	flw	fa3, 4(a2)
	fsub	fa1, fa1, fa3
	flw	fa3, 8(a2)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a4, t6, beq_else_10557
	call	is_rect_outside_2735
	b	is_outside_2750_ret
beq_else_10557:
	li	t6, 2
	bne	a4, t6, beq_else_10558
	sw	a1, 0(sp)
	mv	a0, a3
	call	veciprod2_2519
	fli	fa1, l_8376
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
	b	is_outside_2750_ret
beq_else_10558:
	call	is_second_outside_2745
is_outside_2750_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
check_all_inside_2755:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_10559
	li	a0, 1
	b	check_all_inside_2755_ret
beq_else_10559:
	slli	a3, a3, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	fsw	fa2, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa0, 8(sp)
	sw	a1, 12(sp)
	sw	s11, 16(sp)
	sw	a0, 20(sp)
	mv	a0, a2
	call	is_outside_2750
	bne	a0, zero, beq_else_10560
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2755_ret
beq_else_10560:
	li	a0, 0
check_all_inside_2755_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_and_group_2761:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a2, 24(s11)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	li	t6, -1
	bne	s1, t6, beq_else_10561
	li	a0, 0
	b	shadow_check_and_group_2761_ret
beq_else_10561:
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	sw	a7, 0(sp)
	sw	a6, 4(sp)
	sw	a5, 8(sp)
	sw	a1, 12(sp)
	sw	s11, 16(sp)
	sw	a0, 20(sp)
	sw	a3, 24(sp)
	sw	s1, 28(sp)
	mv	a1, a4
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	bne	a0, zero, beq_else_10562
	li	a0, 0
	b	beq_cont_10563
beq_else_10562:
	fli	fa1, l_8710
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_10563:
	bne	a0, zero, beq_else_10564
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10565
	li	a0, 0
	b	shadow_check_and_group_2761_ret
beq_else_10565:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2761_ret
beq_else_10564:
	fli	fa1, l_8711
	fadd	fa0, fa0, fa1
	lw	a0, 8(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a1, 4(sp)
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa3, fa0
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	li	a0, 0
	lw	a1, 12(sp)
	lw	s11, 0(sp)
	fmv	ft11, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10566
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2761_ret
beq_else_10566:
	li	a0, 1
shadow_check_and_group_2761_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
shadow_check_one_or_group_2764:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	t6, -1
	bne	a4, t6, beq_else_10567
	li	a0, 0
	b	shadow_check_one_or_group_2764_ret
beq_else_10567:
	slli	a4, a4, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	li	a4, 0
	sw	a1, 0(sp)
	sw	s11, 4(sp)
	sw	a0, 8(sp)
	mv	a1, a3
	mv	a0, a4
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10568
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2764_ret
beq_else_10568:
	li	a0, 1
shadow_check_one_or_group_2764_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
shadow_check_one_or_matrix_2767:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a6, 0(t6)
	lw	a7, 0(a6)
	li	t6, -1
	bne	a7, t6, beq_else_10569
	li	a0, 0
	b	shadow_check_one_or_matrix_2767_ret
beq_else_10569:
	sw	a6, 0(sp)
	sw	a3, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	a7, t6, beq_else_10570
	li	a0, 1
	b	beq_cont_10571
beq_else_10570:
	mv	a1, a4
	mv	a0, a7
	mv	s11, a2
	mv	a2, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10572
	li	a0, 0
	b	beq_cont_10573
beq_else_10572:
	fli	fa0, l_8723
	lda	a0, min_caml_solver_dist
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10574
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10576
	li	a0, 0
	b	beq_cont_10577
beq_else_10576:
	li	a0, 1
beq_cont_10577:
	b	beq_cont_10575
beq_else_10574:
	li	a0, 0
beq_cont_10575:
beq_cont_10573:
beq_cont_10571:
	bne	a0, zero, beq_else_10578
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2767_ret
beq_else_10578:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10579
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2767_ret
beq_else_10579:
	li	a0, 1
shadow_check_one_or_matrix_2767_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
solve_each_element_2770:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	li	t6, -1
	bne	s1, t6, beq_else_10580
	b	solve_each_element_2770_ret
beq_else_10580:
	sw	a6, 0(sp)
	sw	a7, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	s11, 20(sp)
	sw	a0, 24(sp)
	sw	a5, 28(sp)
	sw	s1, 32(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	mv	a2, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10582
	lw	a0, 32(sp)
	slli	a0, a0, 2
	lw	a1, 28(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10583
	b	solve_each_element_2770_ret
beq_else_10583:
	lw	a0, 24(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2770_ret
beq_else_10582:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fli	fa1, l_8376
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10585
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10586
	fli	fa1, l_8711
	fadd	fa0, fa0, fa1
	lw	a2, 12(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 8(sp)
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	li	a3, 0
	lw	a4, 16(sp)
	lw	s11, 4(sp)
	sw	a0, 36(sp)
	fsw	fa3, 40(sp)
	fsw	fa2, 44(sp)
	fsw	fa1, 48(sp)
	sw	a1, 52(sp)
	fsw	fa0, 56(sp)
	mv	a1, a4
	mv	a0, a3
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10587
	b	beq_cont_10588
beq_else_10587:
	lw	a0, 52(sp)
	flw	fa0, 56(sp)
	fsw	fa0, 0(a0)
	lw	a0, 0(sp)
	flw	fa0, 48(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 44(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 40(sp)
	fsw	fa0, 8(a0)
	lda	a0, min_caml_intersected_object_id
	lw	a1, 32(sp)
	sw	a1, 0(a0)
	lda	a0, min_caml_intsec_rectside
	lw	a1, 36(sp)
	sw	a1, 0(a0)
beq_cont_10588:
beq_cont_10586:
beq_cont_10585:
	lw	a0, 24(sp)
	addi	a0, a0, 1
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2770_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
solve_one_or_network_2774:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10589
	b	solve_one_or_network_2774_ret
beq_else_10589:
	slli	a5, a5, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	mv	a1, a4
	mv	a0, a5
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_one_or_network_2774_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_2778:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a6, 0(t6)
	lw	a7, 0(a6)
	li	t6, -1
	bne	a7, t6, beq_else_10591
	b	trace_or_matrix_2778_ret
beq_else_10591:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	a7, t6, beq_else_10593
	li	a3, 1
	mv	a1, a6
	mv	a0, a3
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10594
beq_else_10593:
	sw	a6, 16(sp)
	sw	a5, 20(sp)
	mv	a1, a2
	mv	a0, a7
	mv	s11, a4
	mv	a2, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10595
	b	beq_cont_10596
beq_else_10595:
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10597
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10597:
beq_cont_10596:
beq_cont_10594:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2778_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
judge_intersection_2782:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lda	a3, min_caml_tmin
	fli	fa0, l_8747
	fsw	fa0, 0(a3)
	li	a4, 0
	lw	a2, 0(a2)
	sw	a3, 0(sp)
	mv	s11, a1
	mv	a1, a2
	mv	a2, a0
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8723
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10598
	fli	fa1, l_8751
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_2782_ret
beq_else_10598:
	li	a0, 0
judge_intersection_2782_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solve_each_element_fast_2784:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 0(a2)
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	t6, -1
	bne	s2, t6, beq_else_10599
	b	solve_each_element_fast_2784_ret
beq_else_10599:
	sw	a6, 0(sp)
	sw	a7, 4(sp)
	sw	a3, 8(sp)
	sw	s1, 12(sp)
	sw	a2, 16(sp)
	sw	a1, 20(sp)
	sw	s11, 24(sp)
	sw	a0, 28(sp)
	sw	a5, 32(sp)
	sw	s2, 36(sp)
	mv	a1, a2
	mv	a0, s2
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10601
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10602
	b	solve_each_element_fast_2784_ret
beq_else_10602:
	lw	a0, 28(sp)
	addi	a0, a0, 1
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2784_ret
beq_else_10601:
	lda	a1, min_caml_solver_dist
	flw	fa0, 0(a1)
	fli	fa1, l_8376
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10604
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10605
	fli	fa1, l_8711
	fadd	fa0, fa0, fa1
	lw	a2, 12(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 8(sp)
	flw	fa2, 0(a3)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a2)
	fmul	fa2, fa2, fa0
	flw	fa3, 4(a3)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a2)
	fmul	fa3, fa3, fa0
	flw	fa4, 8(a3)
	fadd	fa3, fa3, fa4
	li	a2, 0
	lw	a3, 20(sp)
	lw	s11, 4(sp)
	sw	a0, 40(sp)
	fsw	fa3, 44(sp)
	fsw	fa2, 48(sp)
	fsw	fa1, 52(sp)
	sw	a1, 56(sp)
	fsw	fa0, 60(sp)
	mv	a1, a3
	mv	a0, a2
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10606
	b	beq_cont_10607
beq_else_10606:
	lw	a0, 56(sp)
	flw	fa0, 60(sp)
	fsw	fa0, 0(a0)
	lw	a0, 0(sp)
	flw	fa0, 52(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 48(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 44(sp)
	fsw	fa0, 8(a0)
	lda	a0, min_caml_intersected_object_id
	lw	a1, 36(sp)
	sw	a1, 0(a0)
	lda	a0, min_caml_intsec_rectside
	lw	a1, 40(sp)
	sw	a1, 0(a0)
beq_cont_10607:
beq_cont_10605:
beq_cont_10604:
	lw	a0, 28(sp)
	addi	a0, a0, 1
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2784_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
solve_one_or_network_fast_2788:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10608
	b	solve_one_or_network_fast_2788_ret
beq_else_10608:
	slli	a5, a5, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	li	a5, 0
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	mv	a1, a4
	mv	a0, a5
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_one_or_network_fast_2788_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_fast_2792:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	lw	a6, 0(a5)
	li	t6, -1
	bne	a6, t6, beq_else_10610
	b	trace_or_matrix_fast_2792_ret
beq_else_10610:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	a6, t6, beq_else_10612
	li	a3, 1
	mv	a1, a5
	mv	a0, a3
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10613
beq_else_10612:
	sw	a5, 16(sp)
	sw	a4, 20(sp)
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10614
	b	beq_cont_10615
beq_else_10614:
	lda	a0, min_caml_solver_dist
	flw	fa0, 0(a0)
	lda	a0, min_caml_tmin
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10616
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10616:
beq_cont_10615:
beq_cont_10613:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2792_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
judge_intersection_fast_2796:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lda	a3, min_caml_tmin
	fli	fa0, l_8747
	fsw	fa0, 0(a3)
	li	a4, 0
	lw	a2, 0(a2)
	sw	a3, 0(sp)
	mv	s11, a1
	mv	a1, a2
	mv	a2, a0
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8723
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10617
	fli	fa1, l_8751
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_fast_2796_ret
beq_else_10617:
	li	a0, 0
judge_intersection_fast_2796_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
get_nvector_rect_2798:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 4(s11)
	lda	a2, min_caml_intsec_rectside
	lw	a2, 0(a2)
	fli	fa0, l_8376
	fsw	fa0, 0(a1)
	fsw	fa0, 4(a1)
	fsw	fa0, 8(a1)
	addi	a2, a2, -1
	slli	a3, a2, 2
	add	t6, a0, a3
	flw	fa1, 0(t6)
	feq	a0, fa1, fa0
	bne	a0, zero, beq_else_10618
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10620
	fli	fa0, l_8377
	b	beq_cont_10621
beq_else_10620:
	fli	fa0, l_8378
beq_cont_10621:
	b	beq_cont_10619
beq_else_10618:
	fli	fa0, l_8376
beq_cont_10619:
	fneg	fa0, fa0
	slli	a0, a2, 2
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2798_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_plane_2800:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 4(s11)
	lw	a0, 16(a0)
	flw	fa0, 0(a0)
	fneg	fa0, fa0
	fsw	fa0, 0(a1)
	flw	fa0, 4(a0)
	fneg	fa0, fa0
	fsw	fa0, 4(a1)
	flw	fa0, 8(a0)
	fneg	fa0, fa0
	fsw	fa0, 8(a1)
get_nvector_plane_2800_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_second_2802:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	flw	fa0, 0(a2)
	lw	a3, 36(a0)
	lw	a4, 24(a0)
	lw	a5, 20(a0)
	lw	a6, 16(a0)
	lw	a0, 12(a0)
	flw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a5)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a5)
	fsub	fa2, fa2, fa3
	flw	fa3, 0(a6)
	fmul	fa3, fa0, fa3
	flw	fa4, 4(a6)
	fmul	fa4, fa1, fa4
	flw	fa5, 8(a6)
	fmul	fa5, fa2, fa5
	bne	a0, zero, beq_else_10624
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_10625
beq_else_10624:
	flw	fa6, 8(a3)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_8470
	fdiv	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	fsw	fa3, 0(a1)
	flw	fa3, 8(a3)
	fmul	fa3, fa0, fa3
	flw	fa6, 0(a3)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	fdiv	fa2, fa2, fa7
	fadd	fa2, fa4, fa2
	fsw	fa2, 4(a1)
	flw	fa2, 4(a3)
	fmul	fa0, fa0, fa2
	flw	fa2, 0(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fdiv	fa0, fa0, fa7
	fadd	fa0, fa5, fa0
	fsw	fa0, 8(a1)
beq_cont_10625:
	mv	a0, a1
	mv	a1, a4
	call	vecunit_sgn_2513
get_nvector_second_2802_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
utexture_2807:
	addi	sp, sp, -84
	sw	ra, 80(sp)
	lw	a2, 4(s11)
	lw	a3, 32(a0)
	lw	a4, 20(a0)
	lw	a5, 16(a0)
	lw	a0, 0(a0)
	flw	fa0, 0(a3)
	fsw	fa0, 0(a2)
	flw	fa0, 4(a3)
	fsw	fa0, 4(a2)
	flw	fa0, 8(a3)
	fsw	fa0, 8(a2)
	li	t6, 1
	bne	a0, t6, beq_else_10626
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fli	fa1, l_8848
	fmul	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8849
	fmul	fa0, fa0, fa1
	fli	fa2, l_8838
	flw	fa3, 16(sp)
	fsub	fa0, fa3, fa0
	fle	a0, fa2, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 12(sp)
	flw	fa0, 8(a1)
	lw	a1, 8(sp)
	flw	fa3, 8(a1)
	fsub	fa0, fa0, fa3
	flw	fa3, 4(sp)
	fmul	fa3, fa0, fa3
	sw	a0, 20(sp)
	fsw	fa2, 24(sp)
	fsw	fa0, 28(sp)
	fsw	fa1, 32(sp)
	fmv	fa0, fa3
	call	min_caml_floor
	flw	fa1, 32(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 28(sp)
	fsub	fa0, fa1, fa0
	flw	fa1, 24(sp)
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_10627
	bne	a0, zero, beq_else_10629
	fli	fa0, l_8831
	b	beq_cont_10630
beq_else_10629:
	fli	fa0, l_8376
beq_cont_10630:
	b	beq_cont_10628
beq_else_10627:
	bne	a0, zero, beq_else_10631
	fli	fa0, l_8376
	b	beq_cont_10632
beq_else_10631:
	fli	fa0, l_8831
beq_cont_10632:
beq_cont_10628:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2807_ret
beq_else_10626:
	li	t6, 2
	bne	a0, t6, beq_else_10634
	flw	fa0, 4(a1)
	fli	fa1, l_8842
	fmul	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 36(sp)
	sw	a1, 12(sp)
	call	min_caml_sin
	lw	a0, 12(sp)
	flw	fa1, 4(a0)
	flw	fa2, 36(sp)
	fmul	fa1, fa1, fa2
	fsw	fa0, 40(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 40(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8831
	fmul	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8377
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2807_ret
beq_else_10634:
	li	t6, 3
	bne	a0, t6, beq_else_10636
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	fsqrt	fa0, fa0
	fli	fa1, l_8838
	fdiv	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 44(sp)
	call	min_caml_floor
	flw	fa1, 44(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8824
	fmul	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 52(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 52(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8831
	fmul	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_8377
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2807_ret
beq_else_10636:
	li	t6, 4
	bne	a0, t6, utexture_2807_ret
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a5)
	fsqrt	fa1, fa1
	fmul	fa0, fa0, fa1
	flw	fa1, 8(a1)
	flw	fa2, 8(a4)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a5)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8822
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	sw	a2, 0(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 60(sp)
	sw	a5, 64(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	bne	a0, zero, beq_else_10638
	fli	fa0, l_8825
	b	beq_cont_10639
beq_else_10638:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8823
	fmul	fa0, fa0, fa1
	fli	fa1, l_8824
	fdiv	fa0, fa0, fa1
beq_cont_10639:
	fsw	fa0, 68(sp)
	call	min_caml_floor
	flw	fa1, 68(sp)
	fsub	fa0, fa1, fa0
	lw	a0, 12(sp)
	flw	fa1, 4(a0)
	lw	a0, 8(sp)
	flw	fa2, 4(a0)
	fsub	fa1, fa1, fa2
	lw	a0, 64(sp)
	flw	fa2, 4(a0)
	fsqrt	fa2, fa2
	fmul	fa1, fa1, fa2
	flw	fa2, 60(sp)
	fabs	fa3, fa2
	flw	fa4, 56(sp)
	fle	a0, fa4, fa3
	fsw	fa0, 72(sp)
	bne	a0, zero, beq_else_10640
	fli	fa0, l_8825
	b	beq_cont_10641
beq_else_10640:
	fdiv	fa1, fa1, fa2
	fabs	fa1, fa1
	fmv	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8823
	fmul	fa0, fa0, fa1
	fli	fa1, l_8824
	fdiv	fa0, fa0, fa1
beq_cont_10641:
	fsw	fa0, 76(sp)
	call	min_caml_floor
	flw	fa1, 76(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8829
	fli	fa2, l_8830
	flw	fa3, 72(sp)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fli	fa1, l_8376
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10642
	fli	fa0, l_8376
beq_cont_10642:
	fli	fa1, l_8831
	fmul	fa0, fa1, fa0
	fli	fa1, l_8832
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
utexture_2807_ret:
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
add_light_2810:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_8376
	fle	a2, fa0, fa3
	sw	a0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa1, 12(sp)
	bne	a2, zero, beq_cont_10644
	call	vecaccum_2524
beq_cont_10644:
	flw	fa0, 8(sp)
	flw	fa1, 12(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, add_light_2810_ret
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	flw	fa1, 4(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
add_light_2810_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_reflections_2814:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	lw	a2, 24(s11)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	blt	a0, zero, trace_reflections_2814_ret
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	a3, 0(t6)
	flw	fa2, 8(a3)
	lw	s1, 4(a3)
	lw	a3, 0(a3)
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	a7, 12(sp)
	sw	a1, 16(sp)
	fsw	fa0, 20(sp)
	fsw	fa2, 24(sp)
	sw	a5, 28(sp)
	sw	s1, 32(sp)
	sw	a2, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	mv	a0, s1
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10646
	b	beq_cont_10647
beq_else_10646:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	bne	a0, a1, beq_cont_10648
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10649
	lw	a0, 32(sp)
	lw	a1, 0(a0)
	lw	a0, 28(sp)
	sw	a1, 48(sp)
	call	veciprod_2516
	flw	fa1, 20(sp)
	flw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 16(sp)
	lw	a1, 48(sp)
	fsw	fa0, 52(sp)
	call	veciprod_2516
	flw	fa1, 24(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, 52(sp)
	flw	fa2, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10649:
beq_cont_10648:
beq_cont_10647:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 20(sp)
	flw	fa1, 8(sp)
	lw	a1, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_reflections_2814_ret:
	lw	ra, 56(sp)
	addi	sp, sp, 60
	jr	ra
trace_ray_2819:
	addi	sp, sp, -148
	sw	ra, 144(sp)
	lw	a3, 72(s11)
	lw	a4, 68(s11)
	lw	a5, 64(s11)
	lw	a6, 60(s11)
	lw	a7, 56(s11)
	lw	s1, 52(s11)
	lw	s2, 48(s11)
	lw	s3, 44(s11)
	lw	s4, 40(s11)
	lw	s5, 36(s11)
	lw	s6, 32(s11)
	lw	s7, 28(s11)
	lw	s8, 24(s11)
	lw	s9, 20(s11)
	lw	s10, 16(s11)
	lw	tp, 12(s11)
	lw	t0, 8(s11)
	lw	t1, 4(s11)
	li	t6, 4
	bgt	a0, t6, trace_ray_2819_ret
	lw	t2, 28(a2)
	lw	t3, 16(a2)
	lw	t4, 12(a2)
	lw	t5, 8(a2)
	sw	a2, 0(sp)
	lw	a2, 4(a2)
	sw	s11, 4(sp)
	fsw	fa1, 8(sp)
	sw	a4, 12(sp)
	sw	s2, 16(sp)
	sw	a6, 20(sp)
	sw	t1, 24(sp)
	sw	s1, 28(sp)
	sw	s4, 32(sp)
	sw	s6, 36(sp)
	sw	t2, 40(sp)
	sw	a5, 44(sp)
	sw	t3, 48(sp)
	sw	t4, 52(sp)
	sw	a2, 56(sp)
	sw	a3, 60(sp)
	sw	s9, 64(sp)
	sw	a7, 68(sp)
	sw	s10, 72(sp)
	sw	t0, 76(sp)
	sw	tp, 80(sp)
	sw	s5, 84(sp)
	sw	s3, 88(sp)
	fsw	fa0, 92(sp)
	sw	s7, 96(sp)
	sw	a1, 100(sp)
	sw	t5, 104(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	mv	s11, s8
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10650
	li	a0, -1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 104(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_10651
	b	trace_ray_2819_ret
beq_else_10651:
	lw	a0, 100(sp)
	lw	a1, 96(sp)
	call	veciprod_2516
	fneg	fa0, fa0
	fli	fa1, l_8376
	fle	a0, fa0, fa1
	bne	a0, zero, trace_ray_2819_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 92(sp)
	fmul	fa0, fa0, fa1
	lda	a0, min_caml_beam
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 88(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2819_ret
beq_else_10650:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 84(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	flw	fa0, 0(a2)
	flw	fa1, 92(sp)
	fmul	fa0, fa0, fa1
	sw	a3, 112(sp)
	fsw	fa0, 116(sp)
	sw	a2, 120(sp)
	sw	a0, 124(sp)
	sw	a1, 128(sp)
	li	t6, 1
	bne	a4, t6, beq_else_10654
	lw	a4, 100(sp)
	lw	s11, 80(sp)
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10655
beq_else_10654:
	li	t6, 2
	bne	a4, t6, beq_else_10656
	lw	s11, 76(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10657
beq_else_10656:
	lw	s11, 72(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10657:
beq_cont_10655:
	lw	a0, 68(sp)
	lw	a1, 64(sp)
	call	veccpy_2510
	lw	a0, 128(sp)
	lw	a1, 64(sp)
	lw	s11, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 124(sp)
	slli	a0, a0, 2
	lda	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 108(sp)
	slli	a2, a1, 2
	lw	a3, 104(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 56(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 64(sp)
	mv	a1, a2
	call	veccpy_2510
	fli	fa0, l_8830
	lw	a0, 120(sp)
	flw	fa1, 0(a0)
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10658
	li	a1, 0
	lw	a2, 108(sp)
	slli	a3, a2, 2
	lw	a4, 52(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	b	beq_cont_10659
beq_else_10658:
	li	a1, 1
	lw	a2, 108(sp)
	slli	a3, a2, 2
	lw	a4, 52(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 48(sp)
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a4, 44(sp)
	mv	a0, a1
	mv	a1, a4
	call	veccpy_2510
	lw	a0, 108(sp)
	slli	a1, a0, 2
	lw	a2, 48(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8873
	flw	fa1, 116(sp)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2531
	lw	a0, 108(sp)
	slli	a1, a0, 2
	lw	a2, 40(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 36(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2510
beq_cont_10659:
	fli	fa0, l_8876
	lw	a0, 100(sp)
	lw	a1, 36(sp)
	fsw	fa0, 132(sp)
	call	veciprod_2516
	flw	fa1, 132(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 100(sp)
	lw	a1, 36(sp)
	call	vecaccum_2524
	lw	a0, 120(sp)
	flw	fa0, 4(a0)
	flw	fa1, 92(sp)
	fmul	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 32(sp)
	lw	a2, 0(a2)
	lw	s11, 28(sp)
	fsw	fa0, 136(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10660
	lw	a0, 36(sp)
	lw	a1, 96(sp)
	call	veciprod_2516
	fneg	fa0, fa0
	flw	fa1, 116(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 100(sp)
	lw	a1, 96(sp)
	fsw	fa0, 140(sp)
	call	veciprod_2516
	fneg	fa1, fa0
	flw	fa0, 140(sp)
	flw	fa2, 136(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10660:
	lw	a0, 20(sp)
	lw	a1, 64(sp)
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 64(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lda	a0, min_caml_n_reflections
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 116(sp)
	flw	fa1, 136(sp)
	lw	a1, 100(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_8881
	flw	fa1, 92(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_2819_ret
	lw	a0, 108(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10661
	b	bge_cont_10662
bge_else_10661:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 104(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10662:
	lw	a1, 112(sp)
	li	t6, 2
	bne	a1, t6, beq_cont_10663
	fli	fa0, l_8377
	lw	a1, 120(sp)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lda	a1, min_caml_tmin
	flw	fa1, 0(a1)
	flw	fa2, 8(sp)
	fadd	fa1, fa2, fa1
	lw	a1, 100(sp)
	lw	a2, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10663:
trace_ray_2819_ret:
	lw	ra, 144(sp)
	addi	sp, sp, 148
	jr	ra
trace_diffuse_ray_2825:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lw	a1, 52(s11)
	lw	a2, 48(s11)
	lw	a3, 44(s11)
	lw	a4, 40(s11)
	lw	a5, 36(s11)
	lw	a6, 32(s11)
	lw	a7, 28(s11)
	lw	s1, 24(s11)
	lw	s2, 20(s11)
	lw	s3, 16(s11)
	lw	s4, 12(s11)
	lw	s5, 8(s11)
	lw	s6, 4(s11)
	sw	a2, 0(sp)
	sw	s6, 4(sp)
	fsw	fa0, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a3, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a1, 32(sp)
	sw	s3, 36(sp)
	sw	s5, 40(sp)
	sw	s4, 44(sp)
	sw	a0, 48(sp)
	sw	a5, 52(sp)
	mv	s11, s1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10665
	b	trace_diffuse_ray_2825_ret
beq_else_10665:
	lda	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 52(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 4(a0)
	sw	a2, 56(sp)
	sw	a0, 60(sp)
	li	t6, 1
	bne	a3, t6, beq_else_10667
	lw	s11, 44(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10668
beq_else_10667:
	li	t6, 2
	bne	a3, t6, beq_else_10669
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10670
beq_else_10669:
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10670:
beq_cont_10668:
	lw	a0, 60(sp)
	lw	a1, 28(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	lw	a1, 24(sp)
	lw	a1, 0(a1)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, trace_diffuse_ray_2825_ret
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	veciprod_2516
	fneg	fa0, fa0
	fli	fa1, l_8376
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10671
	b	beq_cont_10672
beq_else_10671:
	fli	fa0, l_8376
beq_cont_10672:
	flw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 56(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2524
trace_diffuse_ray_2825_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
iter_trace_diffuse_rays_2828:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a4, 4(s11)
	blt	a3, zero, iter_trace_diffuse_rays_2828_ret
	slli	a5, a3, 2
	add	t6, a0, a5
	lw	a5, 0(t6)
	lw	a5, 0(a5)
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a3, 20(sp)
	mv	a0, a5
	call	veciprod_2516
	fli	fa1, l_8376
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10673
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8901
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10674
beq_else_10673:
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8899
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10674:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_trace_diffuse_rays_2828_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent_2837:
	addi	sp, sp, -52
	sw	ra, 48(sp)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	sw	a1, 0(sp)
	sw	a5, 4(sp)
	sw	a4, 8(sp)
	sw	a2, 12(sp)
	sw	a3, 16(sp)
	sw	a6, 20(sp)
	sw	a0, 24(sp)
	bne	a0, zero, beq_else_10675
	b	beq_cont_10676
beq_else_10675:
	lw	a7, 0(a6)
	sw	a7, 28(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 28(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10676:
	lw	a0, 24(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10677
	b	beq_cont_10678
beq_else_10677:
	lw	a1, 20(sp)
	lw	a2, 4(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 32(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 32(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10678:
	lw	a0, 24(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10679
	b	beq_cont_10680
beq_else_10679:
	lw	a1, 20(sp)
	lw	a2, 8(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 36(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10680:
	lw	a0, 24(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10681
	b	beq_cont_10682
beq_else_10681:
	lw	a1, 20(sp)
	lw	a2, 12(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 40(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 40(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10682:
	lw	a0, 24(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10683
	b	trace_diffuse_ray_80percent_2837_ret
beq_else_10683:
	lw	a0, 20(sp)
	lw	a0, 16(a0)
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	sw	a0, 44(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 44(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_diffuse_ray_80percent_2837_ret:
	lw	ra, 48(sp)
	addi	sp, sp, 52
	jr	ra
calc_diffuse_using_1point_2841:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	lw	a5, 28(a0)
	lw	a6, 24(a0)
	lw	a7, 20(a0)
	lw	s1, 16(a0)
	lw	a0, 4(a0)
	slli	s2, a1, 2
	add	t6, a7, s2
	lw	a7, 0(t6)
	sw	a4, 0(sp)
	sw	a3, 4(sp)
	sw	s1, 8(sp)
	sw	a2, 12(sp)
	sw	a0, 16(sp)
	sw	a5, 20(sp)
	sw	a1, 24(sp)
	sw	a6, 28(sp)
	mv	a1, a7
	mv	a0, a4
	call	veccpy_2510
	lw	a0, 28(sp)
	lw	a0, 0(a0)
	lw	a1, 24(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	slli	a3, a1, 2
	lw	a4, 16(sp)
	add	t6, a4, a3
	lw	a3, 0(t6)
	lw	s11, 12(sp)
	mv	a1, a2
	mv	a2, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	slli	a0, a0, 2
	lw	a1, 8(sp)
	add	t6, a1, a0
	lw	a1, 0(t6)
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	call	vecaccumv_2534
calc_diffuse_using_1point_2841_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_5points_2844:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a1, 0(t6)
	lw	a1, 20(a1)
	addi	a7, a0, -1
	slli	a7, a7, 2
	add	t6, a2, a7
	lw	a7, 0(t6)
	lw	a7, 20(a7)
	slli	s1, a0, 2
	add	t6, a2, s1
	lw	s1, 0(t6)
	lw	s1, 20(s1)
	addi	s2, a0, 1
	slli	s2, s2, 2
	add	t6, a2, s2
	lw	s2, 0(t6)
	lw	s2, 20(s2)
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	lw	a3, 20(a3)
	slli	s3, a4, 2
	add	t6, a1, s3
	lw	a1, 0(t6)
	sw	a5, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	sw	a3, 12(sp)
	sw	s2, 16(sp)
	sw	s1, 20(sp)
	sw	a6, 24(sp)
	sw	a7, 28(sp)
	sw	a4, 32(sp)
	mv	a0, a6
	call	veccpy_2510
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2528
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2528
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2528
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2528
	lw	a0, 8(sp)
	slli	a0, a0, 2
	lw	a1, 4(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 16(a0)
	lw	a1, 32(sp)
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a0, 0(sp)
	lw	a2, 24(sp)
	call	vecaccumv_2534
calc_diffuse_using_5points_2844_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
do_without_neighbors_2850:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_2850_ret
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, do_without_neighbors_2850_ret
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10685
	b	beq_cont_10686
beq_else_10685:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10686:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
do_without_neighbors_2850_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_exist_2853:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10687
	li	a0, 0
	b	neighbors_exist_2853_ret
ble_else_10687:
	bgt	a1, zero, ble_else_10688
	li	a0, 0
	b	neighbors_exist_2853_ret
ble_else_10688:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10689
	li	a0, 0
	b	neighbors_exist_2853_ret
ble_else_10689:
	bgt	a0, zero, ble_else_10690
	li	a0, 0
	b	neighbors_exist_2853_ret
ble_else_10690:
	li	a0, 1
neighbors_exist_2853_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
neighbors_are_available_2860:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	slli	a5, a0, 2
	add	t6, a2, a5
	lw	a5, 0(t6)
	lw	a5, 8(a5)
	slli	a6, a4, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	slli	a6, a0, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a6, a4, 2
	add	t6, a1, a6
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10691
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10692
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10693
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10694
	li	a0, 1
	b	neighbors_are_available_2860_ret
beq_else_10694:
	li	a0, 0
	b	neighbors_are_available_2860_ret
beq_else_10693:
	li	a0, 0
	b	neighbors_are_available_2860_ret
beq_else_10692:
	li	a0, 0
	b	neighbors_are_available_2860_ret
beq_else_10691:
	li	a0, 0
neighbors_are_available_2860_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
try_exploit_neighbors_2866:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_2866_ret
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, try_exploit_neighbors_2866_ret
	sw	a1, 0(sp)
	sw	s11, 4(sp)
	sw	a4, 8(sp)
	sw	a2, 12(sp)
	sw	a7, 16(sp)
	sw	s2, 20(sp)
	sw	a5, 24(sp)
	sw	a6, 28(sp)
	sw	a3, 32(sp)
	sw	a0, 36(sp)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	call	neighbors_are_available_2860
	bne	a0, zero, beq_else_10695
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2866_ret
beq_else_10695:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10696
	b	beq_cont_10697
beq_else_10696:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10697:
	lw	a0, 24(sp)
	addi	a5, a0, 1
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 12(sp)
	lw	a3, 32(sp)
	lw	a4, 8(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
try_exploit_neighbors_2866_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
write_ppm_header_2873:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a0, 4(s11)
	li	a1, 80
	sw	a0, 0(sp)
	mv	a0, a1
	call	min_caml_print_char
	li	a0, 51
	call	min_caml_print_char
	li	a0, 10
	call	min_caml_print_char
	lw	a0, 0(sp)
	lw	a1, 0(a0)
	mv	a0, a1
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	lw	a0, 4(a0)
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	li	a0, 255
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_ppm_header_2873_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
write_rgb_2877:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10698
	blt	a0, zero, bge_else_10700
	b	bge_cont_10701
bge_else_10700:
	li	a0, 0
bge_cont_10701:
	b	ble_cont_10699
ble_else_10698:
	li	a0, 255
ble_cont_10699:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10702
	blt	a0, zero, bge_else_10704
	b	bge_cont_10705
bge_else_10704:
	li	a0, 0
bge_cont_10705:
	b	ble_cont_10703
ble_else_10702:
	li	a0, 255
ble_cont_10703:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 8(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10706
	blt	a0, zero, bge_else_10708
	b	bge_cont_10709
bge_else_10708:
	li	a0, 0
bge_cont_10709:
	b	ble_cont_10707
ble_else_10706:
	li	a0, 255
ble_cont_10707:
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_rgb_2877_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
pretrace_diffuse_rays_2879:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_2879_ret
	lw	a7, 28(a0)
	lw	s1, 24(a0)
	lw	s2, 20(a0)
	lw	s3, 12(a0)
	lw	s4, 8(a0)
	lw	s5, 4(a0)
	slli	s6, a1, 2
	add	t6, s4, s6
	lw	s4, 0(t6)
	blt	s4, zero, pretrace_diffuse_rays_2879_ret
	slli	s4, a1, 2
	add	t6, s3, s4
	lw	s3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s3, zero, beq_else_10710
	b	beq_cont_10711
beq_else_10710:
	lw	s1, 0(s1)
	fli	fa0, l_8376
	fsw	fa0, 0(a6)
	fsw	fa0, 4(a6)
	fsw	fa0, 8(a6)
	slli	s1, s1, 2
	add	t6, a5, s1
	lw	a5, 0(t6)
	slli	s1, a1, 2
	add	t6, a7, s1
	lw	a7, 0(t6)
	slli	s1, a1, 2
	add	t6, s5, s1
	lw	s1, 0(t6)
	sw	a6, 12(sp)
	sw	s2, 16(sp)
	sw	a7, 20(sp)
	sw	a5, 24(sp)
	sw	a4, 28(sp)
	sw	s1, 32(sp)
	sw	a3, 36(sp)
	mv	a1, s1
	mv	a0, a2
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 32(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 24(sp)
	lw	a1, 20(sp)
	lw	a2, 32(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 12(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2510
beq_cont_10711:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_diffuse_rays_2879_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
pretrace_pixels_2882:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lw	a3, 32(s11)
	lw	a4, 28(s11)
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	blt	a1, zero, pretrace_pixels_2882_ret
	lda	s4, min_caml_scan_pitch
	flw	fa3, 0(s4)
	lw	s3, 0(s3)
	sub	s3, a1, s3
	sw	s11, 0(sp)
	sw	s2, 4(sp)
	sw	a2, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	sw	a7, 32(sp)
	fsw	fa2, 36(sp)
	fsw	fa1, 40(sp)
	sw	s1, 44(sp)
	fsw	fa0, 48(sp)
	sw	a6, 52(sp)
	fsw	fa3, 56(sp)
	mv	a0, s3
	call	min_caml_float_of_int
	flw	fa1, 56(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 52(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	flw	fa2, 48(sp)
	fadd	fa1, fa1, fa2
	lw	a1, 44(sp)
	fsw	fa1, 0(a1)
	flw	fa1, 4(a0)
	fmul	fa1, fa0, fa1
	flw	fa3, 40(sp)
	fadd	fa1, fa1, fa3
	fsw	fa1, 4(a1)
	flw	fa1, 8(a0)
	fmul	fa0, fa0, fa1
	flw	fa1, 36(sp)
	fadd	fa0, fa0, fa1
	fsw	fa0, 8(a1)
	li	a0, 0
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	vecunit_sgn_2513
	fli	fa0, l_8376
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	fsw	fa0, 60(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2510
	li	a0, 0
	fli	fa0, l_8377
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 16(sp)
	add	t6, a3, a2
	lw	a2, 0(t6)
	flw	fa1, 60(sp)
	lw	a4, 44(sp)
	lw	s11, 12(sp)
	mv	a1, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	lw	a3, 32(sp)
	mv	a0, a1
	mv	a1, a3
	call	veccpy_2510
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 24(a1)
	lw	a3, 8(sp)
	sw	a3, 0(a1)
	slli	a1, a0, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a4, 0
	lw	s11, 4(sp)
	mv	a0, a1
	mv	a1, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a1, a0, -1
	lw	a0, 8(sp)
	addi	a0, a0, 1
	li	t6, 5
	blt	a0, t6, bge_else_10712
	addi	a2, a0, -5
	b	bge_cont_10713
bge_else_10712:
	mv	a2, a0
bge_cont_10713:
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 36(sp)
	lw	a0, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_pixels_2882_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
pretrace_line_2889:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lda	s1, min_caml_scan_pitch
	flw	fa0, 0(s1)
	lw	a7, 4(a7)
	sub	a1, a1, a7
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a5, 8(sp)
	sw	a6, 12(sp)
	sw	a3, 16(sp)
	sw	a4, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_float_of_int
	flw	fa1, 24(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	lw	a1, 16(sp)
	flw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	flw	fa2, 4(a0)
	fmul	fa2, fa0, fa2
	flw	fa3, 4(a1)
	fadd	fa2, fa2, fa3
	flw	fa3, 8(a0)
	fmul	fa0, fa0, fa3
	flw	fa3, 8(a1)
	fadd	fa0, fa0, fa3
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	fmv	ft11, fa2
	fmv	fa2, fa0
	fmv	fa0, fa1
	fmv	fa1, ft11
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_line_2889_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
scan_pixel_2893:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_10714
	b	scan_pixel_2893_ret
ble_else_10714:
	slli	s2, a0, 2
	add	t6, a3, s2
	lw	s2, 0(t6)
	lw	s2, 0(s2)
	sw	s11, 0(sp)
	sw	a5, 4(sp)
	sw	a2, 8(sp)
	sw	a6, 12(sp)
	sw	s3, 16(sp)
	sw	a3, 20(sp)
	sw	a4, 24(sp)
	sw	a1, 28(sp)
	sw	a0, 32(sp)
	sw	s1, 36(sp)
	mv	a1, s2
	mv	a0, a7
	call	veccpy_2510
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10716
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a3, 0
	lw	s11, 16(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10717
beq_else_10716:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10717:
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 32(sp)
	addi	a0, a0, 1
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_pixel_2893_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
scan_line_2899:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10718
	b	scan_line_2899_ret
ble_else_10718:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10720
	b	ble_cont_10721
ble_else_10720:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10721:
	li	a0, 0
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	lw	a3, 12(sp)
	lw	a4, 8(sp)
	lw	s11, 24(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	addi	a1, a1, 2
	li	t6, 5
	blt	a1, t6, bge_else_10722
	addi	a4, a1, -5
	b	bge_cont_10723
bge_else_10722:
	mv	a4, a1
bge_cont_10723:
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2899_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_float5x3array_2905:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a0, 3
	fli	fa0, l_8376
	fsw	fa0, 0(sp)
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	lw	a1, 4(sp)
	sw	a0, 4(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_float_array
	lw	a1, 4(sp)
	sw	a0, 8(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_float_array
	lw	a1, 4(sp)
	sw	a0, 12(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_float_array
	lw	a1, 4(sp)
	sw	a0, 16(a1)
	mv	a0, a1
create_float5x3array_2905_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
create_pixel_2907:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	a0, 3
	fli	fa0, l_8376
	call	min_caml_create_float_array
	sw	a0, 0(sp)
	call	create_float5x3array_2905
	li	a1, 5
	li	a2, 0
	sw	a0, 4(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 5
	li	a2, 0
	sw	a0, 8(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 12(sp)
	call	create_float5x3array_2905
	sw	a0, 16(sp)
	call	create_float5x3array_2905
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2905
	mv	a1, gp
	addi	gp, gp, 32
	sw	a0, 28(a1)
	lw	a0, 24(sp)
	sw	a0, 24(a1)
	lw	a0, 20(sp)
	sw	a0, 20(a1)
	lw	a0, 16(sp)
	sw	a0, 16(a1)
	lw	a0, 12(sp)
	sw	a0, 12(a1)
	lw	a0, 8(sp)
	sw	a0, 8(a1)
	lw	a0, 4(sp)
	sw	a0, 4(a1)
	lw	a0, 0(sp)
	sw	a0, 0(a1)
	mv	a0, a1
create_pixel_2907_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
init_line_elements_2909:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, bge_else_10725
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2907
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, bge_else_10726
	sw	a0, 8(sp)
	call	create_pixel_2907
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2909
	b	init_line_elements_2909_ret
bge_else_10726:
	mv	a0, a3
	b	init_line_elements_2909_ret
bge_else_10725:
init_line_elements_2909_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_pixelline_2912:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2907
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	blt	a1, zero, bge_else_10727
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	call	create_pixel_2907
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2909
	b	create_pixelline_2912_ret
bge_else_10727:
create_pixelline_2912_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2916:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	fmul	fa0, fa0, fa0
	fli	fa2, l_8881
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_8377
	fdiv	fa2, fa2, fa0
	fsw	fa0, 0(sp)
	fsw	fa1, 4(sp)
	fmv	fa0, fa2
	call	min_caml_atan
	flw	fa1, 4(sp)
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	call	min_caml_sin
	flw	fa1, 8(sp)
	fsw	fa0, 12(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 12(sp)
	fdiv	fa0, fa1, fa0
	flw	fa1, 0(sp)
	fmul	fa0, fa0, fa1
adjust_position_2916_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
calc_dirvec_2919:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10728
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8377
	fadd	fa2, fa2, fa3
	fsqrt	fa2, fa2
	fdiv	fa0, fa0, fa2
	fdiv	fa1, fa1, fa2
	fdiv	fa2, fa3, fa2
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	slli	a1, a2, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fsw	fa0, 0(a1)
	fsw	fa1, 4(a1)
	fsw	fa2, 8(a1)
	addi	a1, a2, 40
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa3, fa1
	fsw	fa0, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa3, 8(a1)
	addi	a1, a2, 80
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa4, fa0
	fsw	fa2, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa3, 8(a1)
	addi	a1, a2, 1
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fneg	fa2, fa2
	fsw	fa4, 0(a1)
	fsw	fa3, 4(a1)
	fsw	fa2, 8(a1)
	addi	a1, a2, 41
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a1, 0(t6)
	lw	a1, 0(a1)
	fsw	fa4, 0(a1)
	fsw	fa2, 4(a1)
	fsw	fa1, 8(a1)
	addi	a1, a2, 81
	slli	a1, a1, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	lw	a0, 0(a0)
	fsw	fa2, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa1, 8(a0)
	b	calc_dirvec_2919_ret
bge_else_10728:
	fsw	fa2, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	fsw	fa3, 16(sp)
	sw	a0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_2916
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 28(sp)
	call	adjust_position_2916
	fmv	fa1, fa0
	flw	fa0, 24(sp)
	flw	fa2, 0(sp)
	flw	fa3, 16(sp)
	lw	a0, 28(sp)
	lw	a1, 8(sp)
	lw	a2, 4(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_2919_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvecs_2927:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvecs_2927_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a3, 20(sp)
	call	min_caml_float_of_int
	fli	fa1, l_9036
	fmul	fa0, fa0, fa1
	fli	fa2, l_9037
	fsub	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_8376
	flw	fa3, 8(sp)
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	lw	s11, 20(sp)
	fsw	fa0, 24(sp)
	fsw	fa1, 28(sp)
	fmv	fa1, fa0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	call	min_caml_float_of_int
	flw	fa1, 28(sp)
	fmul	fa0, fa0, fa1
	fli	fa1, l_8881
	fadd	fa2, fa0, fa1
	li	a0, 0
	lw	a1, 12(sp)
	addi	a2, a1, 2
	flw	fa0, 24(sp)
	flw	fa3, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 20(sp)
	mv	a1, a3
	fmv	fa1, fa0
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	a1, 16(sp)
	addi	a1, a1, 1
	li	t6, 5
	blt	a1, t6, bge_cont_10730
	addi	a1, a1, -5
bge_cont_10730:
	flw	fa0, 8(sp)
	lw	a2, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvecs_2927_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvec_rows_2932:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvec_rows_2932_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_9036
	fmul	fa0, fa0, fa1
	fli	fa1, l_9037
	fsub	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 4(sp)
	addi	a0, a0, -1
	lw	a1, 12(sp)
	addi	a1, a1, 2
	li	t6, 5
	blt	a1, t6, bge_cont_10731
	addi	a1, a1, -5
bge_cont_10731:
	lw	a2, 8(sp)
	addi	a2, a2, 4
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_rows_2932_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvec_elements_2938:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	blt	a1, zero, create_dirvec_elements_2938_ret
	li	a2, 3
	fli	fa0, l_8376
	fsw	fa0, 0(sp)
	sw	a0, 4(sp)
	sw	a1, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	lda	a0, min_caml_n_objects
	lw	a2, 0(a0)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 16(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_2938_ret
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	sw	a1, 24(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 24(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 20(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	create_dirvec_elements_2938
create_dirvec_elements_2938_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_dirvecs_2941:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	lw	a1, 4(s11)
	blt	a0, zero, create_dirvecs_2941_ret
	li	a2, 120
	li	a3, 3
	fli	fa0, l_8376
	sw	s11, 0(sp)
	fsw	fa0, 4(sp)
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	sw	a2, 16(sp)
	mv	a0, a3
	call	min_caml_create_float_array
	mv	a1, a0
	lda	a0, min_caml_n_objects
	lw	a2, 0(a0)
	sw	a0, 20(sp)
	sw	a1, 24(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 24(sp)
	sw	a0, 0(a1)
	lw	a0, 16(sp)
	call	min_caml_create_array
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	li	a2, 3
	flw	fa0, 4(sp)
	sw	a0, 28(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 20(sp)
	lw	a0, 0(a0)
	sw	a1, 32(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 32(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 28(sp)
	sw	a0, 472(a1)
	li	a0, 117
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	create_dirvec_elements_2938
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvecs_2941_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
init_dirvec_constants_2943:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	blt	a1, zero, init_dirvec_constants_2943_ret
	slli	a3, a1, 2
	add	t6, a0, a3
	lw	a3, 0(t6)
	lda	a4, min_caml_n_objects
	lw	a5, 0(a4)
	addi	a5, a5, -1
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a4, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	mv	a1, a5
	mv	a0, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 16(sp)
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_2943_ret
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a3, 8(sp)
	lw	a3, 0(a3)
	addi	a3, a3, -1
	lw	s11, 4(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a1, a0, -1
	lw	a0, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
init_dirvec_constants_2943_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
init_vecset_constants_2946:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, init_vecset_constants_2946_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a4, 0(t6)
	lw	a5, 476(a4)
	lda	a6, min_caml_n_objects
	lw	a6, 0(a6)
	addi	a6, a6, -1
	sw	s11, 0(sp)
	sw	a3, 4(sp)
	sw	a0, 8(sp)
	sw	a4, 12(sp)
	sw	a2, 16(sp)
	mv	a0, a5
	mv	s11, a1
	mv	a1, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a1, 118
	lw	a0, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_2946_ret
	slli	a1, a0, 2
	lw	a2, 4(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	li	a2, 119
	lw	s11, 16(sp)
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
init_vecset_constants_2946_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
setup_rect_reflection_2957:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a0, a0, 2
	lda	a5, min_caml_n_reflections
	lw	a6, 0(a5)
	fli	fa0, l_8377
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a3)
	fneg	fa1, fa1
	flw	fa2, 4(a3)
	fneg	fa2, fa2
	flw	fa3, 8(a3)
	fneg	fa3, fa3
	addi	a1, a0, 1
	flw	fa4, 0(a3)
	li	a7, 3
	fli	fa5, l_8376
	sw	a5, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa5, 8(sp)
	sw	a3, 12(sp)
	sw	a0, 16(sp)
	sw	a2, 20(sp)
	sw	a6, 24(sp)
	sw	a1, 28(sp)
	fsw	fa0, 32(sp)
	sw	a4, 36(sp)
	fsw	fa3, 40(sp)
	fsw	fa2, 44(sp)
	fsw	fa4, 48(sp)
	mv	a0, a7
	fmv	fa0, fa5
	call	min_caml_create_float_array
	mv	a1, a0
	lda	a0, min_caml_n_objects
	lw	a2, 0(a0)
	sw	a0, 52(sp)
	sw	a1, 56(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 56(sp)
	sw	a0, 0(a1)
	flw	fa0, 48(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 44(sp)
	fsw	fa0, 4(a0)
	flw	fa1, 40(sp)
	fsw	fa1, 8(a0)
	lw	a0, 52(sp)
	lw	a2, 0(a0)
	addi	a2, a2, -1
	lw	s11, 36(sp)
	sw	a1, 60(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 32(sp)
	fsw	fa0, 8(a0)
	lw	a1, 60(sp)
	sw	a1, 4(a0)
	lw	a1, 28(sp)
	sw	a1, 0(a0)
	lw	a1, 24(sp)
	slli	a2, a1, 2
	lw	a3, 20(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	a2, 16(sp)
	addi	a4, a2, 2
	lw	a5, 12(sp)
	flw	fa1, 4(a5)
	li	a6, 3
	flw	fa2, 8(sp)
	sw	a0, 64(sp)
	sw	a4, 68(sp)
	fsw	fa1, 72(sp)
	mv	a0, a6
	fmv	fa0, fa2
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 52(sp)
	lw	a2, 0(a0)
	sw	a1, 76(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 76(sp)
	sw	a0, 0(a1)
	flw	fa0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa1, 72(sp)
	fsw	fa1, 4(a0)
	flw	fa1, 40(sp)
	fsw	fa1, 8(a0)
	lw	a0, 52(sp)
	lw	a2, 0(a0)
	addi	a2, a2, -1
	lw	s11, 36(sp)
	sw	a1, 80(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 32(sp)
	fsw	fa0, 8(a0)
	lw	a1, 80(sp)
	sw	a1, 4(a0)
	lw	a1, 68(sp)
	sw	a1, 0(a0)
	lw	a1, 64(sp)
	slli	a1, a1, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	lw	a0, 24(sp)
	addi	a1, a0, 2
	lw	a3, 16(sp)
	addi	a3, a3, 3
	lw	a4, 12(sp)
	flw	fa1, 8(a4)
	li	a4, 3
	flw	fa2, 8(sp)
	sw	a1, 84(sp)
	sw	a3, 88(sp)
	fsw	fa1, 92(sp)
	mv	a0, a4
	fmv	fa0, fa2
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 52(sp)
	lw	a2, 0(a0)
	sw	a1, 96(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 96(sp)
	sw	a0, 0(a1)
	flw	fa0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 44(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 92(sp)
	fsw	fa0, 8(a0)
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	s11, 36(sp)
	sw	a1, 100(sp)
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 32(sp)
	fsw	fa0, 8(a0)
	lw	a1, 100(sp)
	sw	a1, 4(a0)
	lw	a1, 88(sp)
	sw	a1, 0(a0)
	lw	a1, 84(sp)
	slli	a1, a1, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	sw	a0, 0(t6)
	lw	a0, 24(sp)
	addi	a0, a0, 3
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_rect_reflection_2957_ret:
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
setup_surface_reflection_2960:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lda	a5, min_caml_n_reflections
	lw	a6, 0(a5)
	fli	fa0, l_8377
	lw	a7, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	sw	a5, 0(sp)
	sw	a2, 4(sp)
	sw	a6, 8(sp)
	sw	a0, 12(sp)
	fsw	fa0, 16(sp)
	sw	a4, 20(sp)
	sw	a3, 24(sp)
	sw	a1, 28(sp)
	mv	a0, a3
	call	veciprod_2516
	fli	fa1, l_8470
	lw	a0, 28(sp)
	flw	fa2, 0(a0)
	fmul	fa2, fa1, fa2
	fmul	fa2, fa2, fa0
	lw	a1, 24(sp)
	flw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	flw	fa3, 4(a0)
	fmul	fa3, fa1, fa3
	fmul	fa3, fa3, fa0
	flw	fa4, 4(a1)
	fsub	fa3, fa3, fa4
	flw	fa4, 8(a0)
	fmul	fa1, fa1, fa4
	fmul	fa0, fa1, fa0
	flw	fa1, 8(a1)
	fsub	fa0, fa0, fa1
	li	a0, 3
	fli	fa1, l_8376
	fsw	fa0, 32(sp)
	fsw	fa3, 36(sp)
	fsw	fa2, 40(sp)
	fmv	fa0, fa1
	call	min_caml_create_float_array
	mv	a1, a0
	lda	a0, min_caml_n_objects
	lw	a2, 0(a0)
	sw	a0, 44(sp)
	sw	a1, 48(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 48(sp)
	sw	a0, 0(a1)
	flw	fa0, 40(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 36(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 32(sp)
	fsw	fa0, 8(a0)
	lw	a0, 44(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	s11, 20(sp)
	sw	a1, 52(sp)
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	mv	a0, gp
	addi	gp, gp, 12
	flw	fa0, 16(sp)
	fsw	fa0, 8(a0)
	lw	a1, 52(sp)
	sw	a1, 4(a0)
	lw	a1, 12(sp)
	sw	a1, 0(a0)
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	a1, 0(sp)
	sw	a0, 0(a1)
setup_surface_reflection_2960_ret:
	lw	ra, 56(sp)
	addi	sp, sp, 60
	jr	ra
setup_reflections_2963:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, setup_reflections_2963_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, setup_reflections_2963_ret
	fli	fa0, l_8377
	flw	fa1, 0(a4)
	fle	a4, fa0, fa1
	bne	a4, zero, setup_reflections_2963_ret
	li	t6, 1
	bne	a6, t6, beq_else_10734
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2963_ret
beq_else_10734:
	li	t6, 2
	bne	a6, t6, setup_reflections_2963_ret
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_reflections_2963_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
rt_2965:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	lw	a2, 60(s11)
	lw	a3, 56(s11)
	lw	a4, 52(s11)
	lw	a5, 48(s11)
	lw	a6, 44(s11)
	lw	a7, 40(s11)
	lw	s1, 36(s11)
	lw	s2, 32(s11)
	lw	s3, 28(s11)
	lw	s4, 24(s11)
	lw	s5, 20(s11)
	lw	s6, 16(s11)
	lw	s7, 12(s11)
	lw	s8, 8(s11)
	lw	s9, 4(s11)
	sw	a0, 0(s5)
	sw	a1, 4(s5)
	srai	s5, a0, 1
	sw	s5, 0(s6)
	srai	a1, a1, 1
	sw	a1, 4(s6)
	lda	a1, min_caml_scan_pitch
	fli	fa0, l_9143
	sw	a5, 0(sp)
	sw	a7, 4(sp)
	sw	a4, 8(sp)
	sw	s1, 12(sp)
	sw	s3, 16(sp)
	sw	s2, 20(sp)
	sw	a3, 24(sp)
	sw	s4, 28(sp)
	sw	s9, 32(sp)
	sw	s8, 36(sp)
	sw	a2, 40(sp)
	sw	a6, 44(sp)
	sw	s7, 48(sp)
	sw	a1, 52(sp)
	fsw	fa0, 56(sp)
	call	min_caml_float_of_int
	flw	fa1, 56(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, 52(sp)
	fsw	fa0, 0(a0)
	lw	s11, 48(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 48(sp)
	sw	a0, 60(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 48(sp)
	sw	a0, 64(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 44(sp)
	sw	a0, 68(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 4
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 9
	li	a1, 0
	li	a2, 0
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 4
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 24(sp)
	lw	a1, 20(sp)
	call	veccpy_2510
	lda	a0, min_caml_n_objects
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 12(sp)
	lw	s11, 16(sp)
	sw	a0, 72(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 72(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a1, 0
	li	a2, 0
	lw	a0, 64(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	li	a4, 2
	lw	a1, 60(sp)
	lw	a2, 64(sp)
	lw	a3, 68(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
rt_2965_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
	.data
l_9143:	# 128.000000
	.word	1124073472
l_9037:	# 0.900000
	.word	1063675494
l_9036:	# 0.200000
	.word	1045220557
l_8901:	# -150.000000
	.word	-1021968384
l_8899:	# 150.000000
	.word	1125515264
l_8881:	# 0.100000
	.word	1036831949
l_8876:	# -2.000000
	.word	-1073741824
l_8873:	# 0.003906
	.word	998244352
l_8849:	# 20.000000
	.word	1101004800
l_8848:	# 0.050000
	.word	1028443341
l_8842:	# 0.250000
	.word	1048576000
l_8838:	# 10.000000
	.word	1092616192
l_8832:	# 0.300000
	.word	1050253722
l_8831:	# 255.000000
	.word	1132396544
l_8830:	# 0.500000
	.word	1056964608
l_8829:	# 0.150000
	.word	1041865114
l_8825:	# 15.000000
	.word	1097859072
l_8824:	# 3.141593
	.word	1078530011
l_8823:	# 30.000000
	.word	1106247680
l_8822:	# 0.000100
	.word	953267991
l_8751:	# 100000000.000000
	.word	1287568416
l_8747:	# 1000000000.000000
	.word	1315859240
l_8723:	# -0.100000
	.word	-1110651699
l_8711:	# 0.010000
	.word	1008981770
l_8710:	# -0.200000
	.word	-1102263091
l_8470:	# 2.000000
	.word	1073741824
l_8436:	# -200.000000
	.word	-1018691584
l_8434:	# 200.000000
	.word	1128792064
l_8433:	# 0.017453
	.word	1016003125
l_8378:	# -1.000000
	.word	-1082130432
l_8377:	# 1.000000
	.word	1065353216
l_8376:	# 0.000000
	.word	0
min_caml_n_objects:
	.word	0
min_caml_intsec_rectside:
	.word	0
min_caml_intersected_object_id:
	.word	0
min_caml_n_reflections:
	.word	0
min_caml_beam:
	.word	1132396544
min_caml_solver_dist:
	.word	0
min_caml_tmin:
	.word	1315859240
min_caml_scan_pitch:
	.word	0
