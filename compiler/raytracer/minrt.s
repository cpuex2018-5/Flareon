	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 220	# initialize gp
#	main program starts
	addi	sp, sp, -160
	sw	ra, 156(sp)
	li	a0, 1
	li	a1, 0
	call	min_caml_create_array
	li	a1, 0
	fli	fa0, l_8282
	sw	a0, 0(sp)
	fsw	fa0, 4(sp)
	mv	a0, a1
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
	flw	fa0, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 12(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 1
	fli	fa0, l_8737
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 50
	li	a2, 1
	li	a3, -1
	sw	a0, 24(sp)
	sw	a1, 28(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 28(sp)
	call	min_caml_create_array
	li	a1, 1
	li	a2, 1
	lw	a3, 0(a0)
	sw	a0, 32(sp)
	sw	a1, 36(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 36(sp)
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 4(sp)
	sw	a0, 40(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 1
	li	a2, 0
	sw	a0, 44(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8653
	sw	a0, 48(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 52(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 1
	li	a2, 0
	sw	a0, 56(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 60(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 2
	li	a2, 0
	sw	a0, 76(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 2
	li	a2, 0
	sw	a0, 80(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 4(sp)
	sw	a0, 84(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 88(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 96(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 0
	flw	fa0, 4(sp)
	sw	a0, 112(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 116(sp)
	call	min_caml_create_array
	li	a1, 0
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	lw	a0, 116(sp)
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
	flw	fa0, 4(sp)
	sw	a0, 120(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 124(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 60
	lw	a2, 124(sp)
	sw	a0, 128(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 128(sp)
	sw	a0, 0(a1)
	li	a2, 0
	flw	fa0, 4(sp)
	sw	a1, 132(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 136(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 136(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	li	a1, 180
	li	a2, 0
	mv	a3, gp
	addi	gp, gp, 12
	flw	fa0, 4(sp)
	fsw	fa0, 8(a3)
	sw	a0, 4(a3)
	sw	a2, 0(a3)
	mv	a0, a3
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	min_caml_create_array
	li	a1, 1
	li	a2, 0
	sw	a0, 140(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 24
	la	a2, read_screen_settings_2581
	sw	a2, 0(a1)
	lw	a2, 16(sp)
	sw	a2, 20(a1)
	lw	a3, 108(sp)
	sw	a3, 16(a1)
	lw	a4, 104(sp)
	sw	a4, 12(a1)
	lw	a5, 100(sp)
	sw	a5, 8(a1)
	lw	a6, 12(sp)
	sw	a6, 4(a1)
	mv	a6, gp
	addi	gp, gp, 12
	la	a7, read_light_2583
	sw	a7, 0(a6)
	lw	a7, 20(sp)
	sw	a7, 8(a6)
	lw	s1, 24(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object_2588
	sw	s3, 0(s2)
	lw	s3, 8(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, read_object_2590
	sw	s5, 0(s4)
	sw	s2, 8(s4)
	lw	s2, 0(sp)
	sw	s2, 4(s4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, read_and_network_2598
	sw	s6, 0(s5)
	lw	s6, 32(sp)
	sw	s6, 4(s5)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter_2600
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	s4, 16(s7)
	sw	a6, 12(s7)
	sw	s5, 8(s7)
	lw	a1, 40(sp)
	sw	a1, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_surface_2602
	sw	s4, 0(a6)
	lw	s4, 44(sp)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_rect_2611
	sw	s8, 0(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, solver_surface_2617
	sw	s8, 0(a6)
	sw	s4, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, solver_second_2636
	sw	s9, 0(s8)
	sw	s4, 4(s8)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver_2642
	sw	s10, 0(s9)
	sw	a6, 16(s9)
	sw	s8, 12(s9)
	sw	s5, 8(s9)
	sw	s3, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, solver_rect_fast_2646
	sw	s5, 0(a6)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast_2653
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast_2659
	sw	s10, 0(s8)
	sw	s4, 4(s8)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast_2665
	sw	s11, 0(s10)
	sw	s5, 16(s10)
	sw	s8, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast2_2669
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, solver_second_fast2_2676
	sw	s11, 0(s8)
	sw	s4, 4(s8)
	mv	s11, gp
	addi	gp, gp, 20
	la	tp, solver_fast2_2683
	sw	tp, 0(s11)
	sw	s5, 16(s11)
	sw	s8, 12(s11)
	sw	a6, 8(s11)
	sw	s3, 4(s11)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, iter_setup_dirvec_constants_2695
	sw	s5, 0(a6)
	sw	s3, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants_2700
	sw	s8, 0(s5)
	sw	s3, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	tp, check_all_inside_2725
	sw	tp, 0(s8)
	sw	s3, 4(s8)
	mv	tp, gp
	addi	gp, gp, 32
	la	t0, shadow_check_and_group_2731
	sw	t0, 0(tp)
	sw	s10, 28(tp)
	sw	s4, 24(tp)
	sw	s3, 20(tp)
	lw	t0, 132(sp)
	sw	t0, 16(tp)
	sw	a7, 12(tp)
	lw	t1, 56(sp)
	sw	t1, 8(tp)
	sw	s8, 4(tp)
	mv	t2, gp
	addi	gp, gp, 12
	la	t3, shadow_check_one_or_group_2734
	sw	t3, 0(t2)
	sw	tp, 8(t2)
	sw	s6, 4(t2)
	mv	tp, gp
	addi	gp, gp, 24
	la	t3, shadow_check_one_or_matrix_2737
	sw	t3, 0(tp)
	sw	s10, 20(tp)
	sw	s4, 16(tp)
	sw	t2, 12(tp)
	sw	t0, 8(tp)
	sw	t1, 4(tp)
	mv	s10, gp
	addi	gp, gp, 40
	la	t2, solve_each_element_2740
	sw	t2, 0(s10)
	lw	t2, 52(sp)
	sw	t2, 36(s10)
	lw	t3, 92(sp)
	sw	t3, 32(s10)
	sw	s4, 28(s10)
	sw	s9, 24(s10)
	sw	s3, 20(s10)
	lw	t4, 48(sp)
	sw	t4, 16(s10)
	sw	t1, 12(s10)
	lw	t5, 60(sp)
	sw	t5, 8(s10)
	sw	s8, 4(s10)
	mv	t0, gp
	addi	gp, gp, 12
	sw	s7, 144(sp)
	la	s7, solve_one_or_network_2744
	sw	s7, 0(t0)
	sw	s10, 8(t0)
	sw	s6, 4(t0)
	mv	s7, gp
	addi	gp, gp, 24
	la	s10, trace_or_matrix_2748
	sw	s10, 0(s7)
	sw	t2, 20(s7)
	sw	t3, 16(s7)
	sw	s4, 12(s7)
	sw	s9, 8(s7)
	sw	t0, 4(s7)
	mv	s9, gp
	addi	gp, gp, 16
	la	s10, judge_intersection_2752
	sw	s10, 0(s9)
	sw	s7, 12(s9)
	sw	t2, 8(s9)
	sw	a1, 4(s9)
	mv	s7, gp
	addi	gp, gp, 40
	la	s10, solve_each_element_fast_2754
	sw	s10, 0(s7)
	sw	t2, 36(s7)
	lw	s10, 96(sp)
	sw	s10, 32(s7)
	sw	s11, 28(s7)
	sw	s4, 24(s7)
	sw	s3, 20(s7)
	sw	t4, 16(s7)
	sw	t1, 12(s7)
	sw	t5, 8(s7)
	sw	s8, 4(s7)
	mv	s8, gp
	addi	gp, gp, 12
	la	t0, solve_one_or_network_fast_2758
	sw	t0, 0(s8)
	sw	s7, 8(s8)
	sw	s6, 4(s8)
	mv	s6, gp
	addi	gp, gp, 20
	la	s7, trace_or_matrix_fast_2762
	sw	s7, 0(s6)
	sw	t2, 16(s6)
	sw	s11, 12(s6)
	sw	s4, 8(s6)
	sw	s8, 4(s6)
	mv	s4, gp
	addi	gp, gp, 16
	la	s7, judge_intersection_fast_2766
	sw	s7, 0(s4)
	sw	s6, 12(s4)
	sw	t2, 8(s4)
	sw	a1, 4(s4)
	mv	s6, gp
	addi	gp, gp, 12
	la	s7, get_nvector_rect_2768
	sw	s7, 0(s6)
	lw	s7, 64(sp)
	sw	s7, 8(s6)
	sw	t4, 4(s6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, get_nvector_plane_2770
	sw	s11, 0(s8)
	sw	s7, 4(s8)
	mv	s11, gp
	addi	gp, gp, 12
	la	t0, get_nvector_second_2772
	sw	t0, 0(s11)
	sw	s7, 8(s11)
	sw	t1, 4(s11)
	mv	t0, gp
	addi	gp, gp, 8
	sw	a6, 148(sp)
	la	a6, utexture_2777
	sw	a6, 0(t0)
	lw	a6, 68(sp)
	sw	a6, 4(t0)
	mv	a4, gp
	addi	gp, gp, 12
	la	a3, add_light_2780
	sw	a3, 0(a4)
	sw	a6, 8(a4)
	lw	a3, 76(sp)
	sw	a3, 4(a4)
	mv	a5, gp
	addi	gp, gp, 36
	la	a2, trace_reflections_2784
	sw	a2, 0(a5)
	sw	tp, 32(a5)
	lw	a2, 140(sp)
	sw	a2, 28(a5)
	sw	a1, 24(a5)
	sw	s7, 20(a5)
	sw	s4, 16(a5)
	sw	t4, 12(a5)
	sw	t5, 8(a5)
	sw	a4, 4(a5)
	mv	a2, gp
	addi	gp, gp, 100
	sw	s4, 152(sp)
	la	s4, trace_ray_2789
	sw	s4, 0(a2)
	sw	t0, 96(a2)
	sw	a5, 92(a2)
	sw	t2, 88(a2)
	sw	a6, 84(a2)
	sw	s10, 80(a2)
	sw	t3, 76(a2)
	sw	tp, 72(a2)
	sw	s5, 68(a2)
	sw	a3, 64(a2)
	sw	a1, 60(a2)
	sw	s3, 56(a2)
	sw	s7, 52(a2)
	sw	a0, 48(a2)
	sw	s2, 44(a2)
	sw	a7, 40(a2)
	sw	s9, 36(a2)
	sw	t4, 32(a2)
	sw	t1, 28(a2)
	sw	t5, 24(a2)
	sw	s11, 20(a2)
	sw	s6, 16(a2)
	sw	s8, 12(a2)
	sw	s1, 8(a2)
	sw	a4, 4(a2)
	mv	a4, gp
	addi	gp, gp, 60
	la	a5, trace_diffuse_ray_2795
	sw	a5, 0(a4)
	sw	t0, 56(a4)
	sw	a6, 52(a4)
	sw	tp, 48(a4)
	sw	a1, 44(a4)
	sw	s3, 40(a4)
	sw	s7, 36(a4)
	sw	a7, 32(a4)
	lw	a1, 152(sp)
	sw	a1, 28(a4)
	sw	t1, 24(a4)
	sw	t5, 20(a4)
	sw	s11, 16(a4)
	sw	s6, 12(a4)
	sw	s8, 8(a4)
	lw	a1, 72(sp)
	sw	a1, 4(a4)
	mv	a5, gp
	addi	gp, gp, 8
	la	a6, iter_trace_diffuse_rays_2798
	sw	a6, 0(a5)
	sw	a4, 4(a5)
	mv	a4, gp
	addi	gp, gp, 24
	la	a6, trace_diffuse_ray_80percent_2807
	sw	a6, 0(a4)
	sw	s10, 20(a4)
	sw	s5, 16(a4)
	sw	s2, 12(a4)
	sw	a5, 8(a4)
	lw	a6, 120(sp)
	sw	a6, 4(a4)
	mv	s1, gp
	addi	gp, gp, 16
	la	s4, calc_diffuse_using_1point_2811
	sw	s4, 0(s1)
	sw	a4, 12(s1)
	sw	a3, 8(s1)
	sw	a1, 4(s1)
	mv	a4, gp
	addi	gp, gp, 12
	la	s4, calc_diffuse_using_5points_2814
	sw	s4, 0(a4)
	sw	a3, 8(a4)
	sw	a1, 4(a4)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, do_without_neighbors_2820
	sw	s6, 0(s4)
	sw	s1, 4(s4)
	mv	s1, gp
	addi	gp, gp, 8
	la	s6, neighbors_exist_2823
	sw	s6, 0(s1)
	lw	s6, 80(sp)
	sw	s6, 4(s1)
	mv	s7, gp
	addi	gp, gp, 12
	la	s8, try_exploit_neighbors_2836
	sw	s8, 0(s7)
	sw	s4, 8(s7)
	sw	a4, 4(s7)
	mv	a4, gp
	addi	gp, gp, 8
	la	s8, write_ppm_header_2843
	sw	s8, 0(a4)
	sw	s6, 4(a4)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, write_rgb_2847
	sw	s9, 0(s8)
	sw	a3, 4(s8)
	mv	s9, gp
	addi	gp, gp, 28
	la	s11, pretrace_diffuse_rays_2849
	sw	s11, 0(s9)
	sw	s10, 24(s9)
	sw	s5, 20(s9)
	sw	s2, 16(s9)
	sw	a5, 12(s9)
	sw	a6, 8(s9)
	sw	a1, 4(s9)
	mv	a1, gp
	addi	gp, gp, 40
	la	a5, pretrace_pixels_2852
	sw	a5, 0(a1)
	lw	a5, 16(sp)
	sw	a5, 36(a1)
	sw	a2, 32(a1)
	sw	t3, 28(a1)
	lw	a2, 100(sp)
	sw	a2, 24(a1)
	lw	a2, 88(sp)
	sw	a2, 20(a1)
	sw	a3, 16(a1)
	lw	a5, 112(sp)
	sw	a5, 12(a1)
	sw	s9, 8(a1)
	lw	a5, 84(sp)
	sw	a5, 4(a1)
	mv	s5, gp
	addi	gp, gp, 28
	la	s9, pretrace_line_2859
	sw	s9, 0(s5)
	lw	s9, 108(sp)
	sw	s9, 24(s5)
	lw	s9, 104(sp)
	sw	s9, 20(s5)
	sw	a2, 16(s5)
	sw	a1, 12(s5)
	sw	s6, 8(s5)
	sw	a5, 4(s5)
	mv	a1, gp
	addi	gp, gp, 28
	la	s9, scan_pixel_2863
	sw	s9, 0(a1)
	sw	s8, 24(a1)
	sw	s7, 20(a1)
	sw	a3, 16(a1)
	sw	s1, 12(a1)
	sw	s6, 8(a1)
	sw	s4, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	s1, scan_line_2869
	sw	s1, 0(a3)
	sw	a1, 12(a3)
	sw	s5, 8(a3)
	sw	s6, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	s1, create_pixelline_2882
	sw	s1, 0(a1)
	sw	s6, 4(a1)
	mv	s1, gp
	addi	gp, gp, 8
	la	s4, calc_dirvec_2889
	sw	s4, 0(s1)
	sw	a6, 4(s1)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, calc_dirvecs_2897
	sw	s7, 0(s4)
	sw	s1, 4(s4)
	mv	s1, gp
	addi	gp, gp, 8
	la	s7, calc_dirvec_rows_2902
	sw	s7, 0(s1)
	sw	s4, 4(s1)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, create_dirvec_elements_2908
	sw	s7, 0(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 16
	la	s8, create_dirvecs_2911
	sw	s8, 0(s7)
	sw	s2, 12(s7)
	sw	a6, 8(s7)
	sw	s4, 4(s7)
	mv	s4, gp
	addi	gp, gp, 12
	la	s8, init_dirvec_constants_2913
	sw	s8, 0(s4)
	sw	s2, 8(s4)
	lw	s8, 148(sp)
	sw	s8, 4(s4)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, init_vecset_constants_2916
	sw	s10, 0(s9)
	sw	s2, 16(s9)
	sw	s8, 12(s9)
	sw	s4, 8(s9)
	sw	a6, 4(s9)
	mv	a6, gp
	addi	gp, gp, 24
	la	s4, setup_rect_reflection_2927
	sw	s4, 0(a6)
	lw	s4, 140(sp)
	sw	s4, 20(a6)
	sw	a0, 16(a6)
	sw	s2, 12(a6)
	sw	a7, 8(a6)
	sw	s8, 4(a6)
	mv	s10, gp
	addi	gp, gp, 24
	la	s11, setup_surface_reflection_2930
	sw	s11, 0(s10)
	sw	s4, 20(s10)
	sw	a0, 16(s10)
	sw	s2, 12(s10)
	sw	a7, 8(s10)
	sw	s8, 4(s10)
	mv	a0, gp
	addi	gp, gp, 16
	la	s4, setup_reflections_2933
	sw	s4, 0(a0)
	sw	s10, 12(a0)
	sw	a6, 8(a0)
	sw	s3, 4(a0)
	mv	s11, gp
	addi	gp, gp, 72
	la	a6, rt_2935
	sw	a6, 0(s11)
	sw	a4, 68(s11)
	lw	a4, 128(sp)
	sw	a4, 64(s11)
	sw	a0, 60(s11)
	sw	a2, 56(s11)
	sw	a3, 52(s11)
	lw	a0, 144(sp)
	sw	a0, 48(s11)
	sw	s5, 44(s11)
	sw	s2, 40(s11)
	lw	a0, 132(sp)
	sw	a0, 36(s11)
	sw	a7, 32(s11)
	sw	s8, 28(s11)
	sw	s9, 24(s11)
	sw	s6, 20(s11)
	sw	a5, 16(s11)
	sw	a1, 12(s11)
	sw	s7, 8(s11)
	sw	s1, 4(s11)
	li	a0, 128
	li	a1, 128
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	ra, 156(sp)
	addi	sp, sp, 160
#	main program ends
end:
	b	end
veccpy_2480:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_2480_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecunit_sgn_2483:
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
	fli	fa1, l_8282
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10481
	bne	a1, zero, beq_else_10483
	fli	fa1, l_8283
	fdiv	fa0, fa1, fa0
	b	beq_cont_10484
beq_else_10483:
	fli	fa1, l_8284
	fdiv	fa0, fa1, fa0
beq_cont_10484:
	b	beq_cont_10482
beq_else_10481:
	fli	fa0, l_8283
beq_cont_10482:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2483_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod_2486:
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
veciprod_2486_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod2_2489:
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
veciprod2_2489_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccum_2494:
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
vecaccum_2494_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecadd_2498:
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
vecadd_2498_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecscale_2501:
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
vecscale_2501_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccumv_2504:
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
vecaccumv_2504_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
read_screen_settings_2581:
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
	fli	fa1, l_8339
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
	fli	fa3, l_8340
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8342
	flw	fa4, 32(sp)
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 40(sp)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_8282
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
read_screen_settings_2581_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
read_light_2583:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 8(s11)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_8339
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(sp)
	fsw	fa1, 12(sp)
	call	min_caml_sin
	fneg	fa0, fa0
	lw	a0, 4(sp)
	fsw	fa0, 4(a0)
	call	min_caml_read_float
	flw	fa1, 12(sp)
	fmul	fa0, fa0, fa1
	flw	fa1, 8(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 16(sp)
	fsw	fa0, 20(sp)
	fmv	fa0, fa1
	call	min_caml_sin
	flw	fa1, 20(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 16(sp)
	call	min_caml_cos
	flw	fa1, 20(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 4(sp)
	fsw	fa0, 8(a0)
	call	min_caml_read_float
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
read_light_2583_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
rotate_quadratic_matrix_2585:
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
	fli	fs5, l_8376
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
rotate_quadratic_matrix_2585_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
read_nth_object_2588:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_10493
	li	a0, 0
	b	read_nth_object_2588_ret
beq_else_10493:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_8282
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
	bne	a1, zero, beq_else_10494
	b	beq_cont_10495
beq_else_10494:
	sw	a0, 48(sp)
	call	min_caml_read_float
	fli	fa1, l_8339
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
beq_cont_10495:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10496
	li	a2, 1
	b	beq_cont_10497
beq_else_10496:
	lw	a2, 36(sp)
beq_cont_10497:
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
	bne	a4, t6, beq_else_10498
	flw	fa0, 0(a2)
	flw	fa1, 24(sp)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10500
	bne	a1, zero, beq_else_10502
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10504
	fli	fa2, l_8283
	b	beq_cont_10505
beq_else_10504:
	fli	fa2, l_8284
beq_cont_10505:
	b	beq_cont_10503
beq_else_10502:
	fli	fa2, l_8282
beq_cont_10503:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10501
beq_else_10500:
	fli	fa0, l_8282
beq_cont_10501:
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10506
	bne	a1, zero, beq_else_10508
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10510
	fli	fa2, l_8283
	b	beq_cont_10511
beq_else_10510:
	fli	fa2, l_8284
beq_cont_10511:
	b	beq_cont_10509
beq_else_10508:
	fli	fa2, l_8282
beq_cont_10509:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10507
beq_else_10506:
	fli	fa0, l_8282
beq_cont_10507:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10512
	bne	a1, zero, beq_else_10514
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10516
	fli	fa1, l_8283
	b	beq_cont_10517
beq_else_10516:
	fli	fa1, l_8284
beq_cont_10517:
	b	beq_cont_10515
beq_else_10514:
	fli	fa1, l_8282
beq_cont_10515:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	beq_cont_10513
beq_else_10512:
	fli	fa0, l_8282
beq_cont_10513:
	fsw	fa0, 8(a2)
	b	beq_cont_10499
beq_else_10498:
	li	t6, 2
	bne	a4, t6, beq_cont_10518
	lw	a1, 36(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2483
beq_cont_10518:
beq_cont_10499:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_10519
	b	beq_cont_10520
beq_else_10519:
	lw	a0, 28(sp)
	lw	a1, 48(sp)
	call	rotate_quadratic_matrix_2585
beq_cont_10520:
	li	a0, 1
read_nth_object_2588_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
read_object_2590:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_10521
	b	read_object_2590_ret
bge_else_10521:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10523
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2590_ret
beq_else_10523:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2590_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_net_item_2594:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, beq_else_10525
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2594_ret
beq_else_10525:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2594
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2594_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_or_network_2596:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2594
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_10526
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2596_ret
beq_else_10526:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2596
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2596_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_and_network_2598:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 4(s11)
	li	a2, 0
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item_2594
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_10527
	b	read_and_network_2598_ret
beq_else_10527:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2598_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_parameter_2600:
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
	call	read_or_network_2596
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2600_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
solver_rect_surface_2602:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_8282
	feq	a6, fa3, fa4
	bne	a6, zero, beq_else_10530
	lw	a6, 24(a0)
	lw	a0, 16(a0)
	slli	a7, a2, 2
	add	t6, a1, a7
	flw	fa3, 0(t6)
	fle	a7, fa4, fa3
	xori	a7, a7, 1	# boolean not
	xor	a6, a6, a7
	slli	a7, a2, 2
	add	t6, a0, a7
	flw	fa3, 0(t6)
	bne	a6, zero, beq_cont_10531
	fneg	fa3, fa3
beq_cont_10531:
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
	bne	a2, zero, beq_else_10532
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
	bne	a0, zero, beq_else_10533
	fsw	fa0, 0(a5)
	li	a0, 1
	b	solver_rect_surface_2602_ret
beq_else_10533:
	li	a0, 0
	b	solver_rect_surface_2602_ret
beq_else_10532:
	li	a0, 0
	b	solver_rect_surface_2602_ret
beq_else_10530:
	li	a0, 0
solver_rect_surface_2602_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_2611:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	s11, 4(s11)
	li	a2, 0
	li	a3, 1
	li	a4, 2
	fsw	fa0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa1, 8(sp)
	sw	a1, 12(sp)
	sw	a0, 16(sp)
	sw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10534
	li	a2, 1
	li	a3, 2
	li	a4, 0
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10535
	li	a2, 2
	li	a3, 0
	li	a4, 1
	flw	fa0, 4(sp)
	flw	fa1, 0(sp)
	flw	fa2, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10536
	li	a0, 0
	b	solver_rect_2611_ret
beq_else_10536:
	li	a0, 3
	b	solver_rect_2611_ret
beq_else_10535:
	li	a0, 2
	b	solver_rect_2611_ret
beq_else_10534:
	li	a0, 1
solver_rect_2611_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_surface_2617:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	lw	a0, 16(a0)
	sw	a2, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 12(sp)
	sw	a0, 16(sp)
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	call	veciprod_2486
	fli	fa1, l_8282
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10537
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	veciprod2_2489
	fneg	fa0, fa0
	flw	fa1, 20(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_2617_ret
beq_else_10537:
	li	a0, 0
solver_surface_2617_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
quadratic_2623:
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
	bne	a0, zero, beq_else_10538
	fmv	fa0, fa3
	b	quadratic_2623_ret
beq_else_10538:
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
quadratic_2623_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
bilinear_2628:
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
	bne	a0, zero, beq_else_10539
	fmv	fa0, fa6
	b	bilinear_2628_ret
beq_else_10539:
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
	fli	fa1, l_8376
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_2628_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_2636:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	flw	fa4, 4(a1)
	flw	fa5, 8(a1)
	sw	a2, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa1, 8(sp)
	fsw	fa0, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	fmv	fa2, fa5
	fmv	fa1, fa4
	fmv	fa0, fa3
	call	quadratic_2623
	fli	fa1, l_8282
	feq	a0, fa0, fa1
	bne	a0, zero, beq_else_10540
	lw	a0, 20(sp)
	flw	fa2, 0(a0)
	flw	fa3, 4(a0)
	flw	fa4, 8(a0)
	flw	fa5, 12(sp)
	flw	fa6, 8(sp)
	flw	fa7, 4(sp)
	lw	a0, 16(sp)
	fsw	fa1, 24(sp)
	fsw	fa0, 28(sp)
	fmv	fa1, fa3
	fmv	fa0, fa2
	fmv	fa3, fa5
	fmv	fa2, fa4
	fmv	fa5, fa7
	fmv	fa4, fa6
	call	bilinear_2628
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 32(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	quadratic_2623
	lw	a0, 16(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10541
	fli	fa1, l_8283
	fsub	fa0, fa0, fa1
beq_cont_10541:
	flw	fa1, 32(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 28(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 24(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10542
	fsqrt	fa0, fa0
	bne	a1, zero, beq_cont_10543
	fneg	fa0, fa0
beq_cont_10543:
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2636_ret
beq_else_10542:
	li	a0, 0
	b	solver_second_2636_ret
beq_else_10540:
	li	a0, 0
solver_second_2636_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
solver_2642:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	add	t6, a6, a0
	lw	a0, 0(t6)
	flw	fa0, 0(a2)
	lw	a6, 20(a0)
	lw	a7, 4(a0)
	flw	fa1, 0(a6)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a6)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a6)
	fsub	fa2, fa2, fa3
	li	t6, 1
	bne	a7, t6, beq_else_10544
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2642_ret
beq_else_10544:
	li	t6, 2
	bne	a7, t6, beq_else_10545
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2642_ret
beq_else_10545:
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2642_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_fast_2646:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
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
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10546
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10548
	flw	fa4, 4(a2)
	fli	fa5, l_8282
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
	b	beq_cont_10549
beq_else_10548:
	li	a4, 0
beq_cont_10549:
	b	beq_cont_10547
beq_else_10546:
	li	a4, 0
beq_cont_10547:
	bne	a4, zero, beq_else_10550
	flw	fa3, 8(a2)
	fsub	fa3, fa3, fa1
	flw	fa4, 12(a2)
	fmul	fa3, fa3, fa4
	flw	fa4, 0(a0)
	flw	fa5, 0(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa0
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10551
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10553
	flw	fa4, 12(a2)
	fli	fa5, l_8282
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
	b	beq_cont_10554
beq_else_10553:
	li	a4, 0
beq_cont_10554:
	b	beq_cont_10552
beq_else_10551:
	li	a4, 0
beq_cont_10552:
	bne	a4, zero, beq_else_10555
	flw	fa3, 16(a2)
	fsub	fa2, fa3, fa2
	flw	fa3, 20(a2)
	fmul	fa2, fa2, fa3
	flw	fa3, 0(a0)
	flw	fa4, 0(a1)
	fmul	fa4, fa2, fa4
	fadd	fa0, fa4, fa0
	fabs	fa0, fa0
	fle	a4, fa3, fa0
	bne	a4, zero, beq_else_10556
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10558
	flw	fa0, 20(a2)
	fli	fa1, l_8282
	feq	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10559
beq_else_10558:
	li	a0, 0
beq_cont_10559:
	b	beq_cont_10557
beq_else_10556:
	li	a0, 0
beq_cont_10557:
	bne	a0, zero, beq_else_10560
	li	a0, 0
	b	solver_rect_fast_2646_ret
beq_else_10560:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2646_ret
beq_else_10555:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2646_ret
beq_else_10550:
	fsw	fa3, 0(a3)
	li	a0, 1
solver_rect_fast_2646_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast_2653:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa3, l_8282
	flw	fa4, 0(a1)
	fle	a2, fa3, fa4
	bne	a2, zero, beq_else_10561
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
	b	solver_surface_fast_2653_ret
beq_else_10561:
	li	a0, 0
solver_surface_fast_2653_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast_2659:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8282
	feq	a3, fa3, fa4
	bne	a3, zero, beq_else_10562
	flw	fa5, 4(a1)
	fmul	fa5, fa5, fa0
	flw	fa6, 8(a1)
	fmul	fa6, fa6, fa1
	fadd	fa5, fa5, fa6
	flw	fa6, 12(a1)
	fmul	fa6, fa6, fa2
	fadd	fa5, fa5, fa6
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	fsw	fa4, 8(sp)
	fsw	fa3, 12(sp)
	fsw	fa5, 16(sp)
	sw	a0, 20(sp)
	call	quadratic_2623
	lw	a0, 20(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10563
	fli	fa1, l_8283
	fsub	fa0, fa0, fa1
beq_cont_10563:
	flw	fa1, 16(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 12(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 8(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10564
	bne	a1, zero, beq_else_10565
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_10566
beq_else_10565:
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_10566:
	li	a0, 1
	b	solver_second_fast_2659_ret
beq_else_10564:
	li	a0, 0
	b	solver_second_fast_2659_ret
beq_else_10562:
	li	a0, 0
solver_second_fast_2659_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_fast_2665:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a6, a7
	lw	a6, 0(t6)
	flw	fa0, 0(a2)
	lw	a7, 20(a6)
	lw	s1, 4(a6)
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	flw	fa1, 4(a2)
	flw	fa2, 4(a7)
	fsub	fa1, fa1, fa2
	flw	fa2, 8(a2)
	flw	fa3, 8(a7)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a2, 0(t6)
	li	t6, 1
	bne	s1, t6, beq_else_10567
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2665_ret
beq_else_10567:
	li	t6, 2
	bne	s1, t6, beq_else_10568
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2665_ret
beq_else_10568:
	mv	a1, a2
	mv	a0, a6
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2665_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast2_2669:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa0, l_8282
	flw	fa1, 0(a1)
	fle	a3, fa0, fa1
	bne	a3, zero, beq_else_10569
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast2_2669_ret
beq_else_10569:
	li	a0, 0
solver_surface_fast2_2669_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast2_2676:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8282
	feq	a4, fa3, fa4
	bne	a4, zero, beq_else_10570
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
	bne	a2, zero, beq_else_10571
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10572
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_10573
beq_else_10572:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_10573:
	li	a0, 1
	b	solver_second_fast2_2676_ret
beq_else_10571:
	li	a0, 0
	b	solver_second_fast2_2676_ret
beq_else_10570:
	li	a0, 0
solver_second_fast2_2676_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2683:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a6, a0, 2
	add	t6, a5, a6
	lw	a5, 0(t6)
	lw	a6, 40(a5)
	lw	a7, 4(a5)
	flw	fa0, 0(a6)
	flw	fa1, 4(a6)
	flw	fa2, 8(a6)
	lw	s1, 4(a1)
	lw	a1, 0(a1)
	slli	a0, a0, 2
	add	t6, s1, a0
	lw	a0, 0(t6)
	li	t6, 1
	bne	a7, t6, beq_else_10574
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2683_ret
beq_else_10574:
	li	t6, 2
	bne	a7, t6, beq_else_10575
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2683_ret
beq_else_10575:
	mv	a2, a6
	mv	a1, a0
	mv	s11, a3
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2683_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2686:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 6
	fli	fa0, l_8282
	sw	a1, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(sp)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10576
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_cont_10578
	fneg	fa0, fa0
beq_cont_10578:
	fsw	fa0, 0(a0)
	fli	fa0, l_8283
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 4(a0)
	b	beq_cont_10577
beq_else_10576:
	fsw	fa1, 4(a0)
beq_cont_10577:
	flw	fa0, 4(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10579
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_cont_10581
	fneg	fa0, fa0
beq_cont_10581:
	fsw	fa0, 8(a0)
	fli	fa0, l_8283
	flw	fa2, 4(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 12(a0)
	b	beq_cont_10580
beq_else_10579:
	fsw	fa1, 12(a0)
beq_cont_10580:
	flw	fa0, 8(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10582
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_cont_10584
	fneg	fa0, fa0
beq_cont_10584:
	fsw	fa0, 16(a0)
	fli	fa0, l_8283
	flw	fa1, 8(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_10583
beq_else_10582:
	fsw	fa1, 20(a0)
beq_cont_10583:
setup_rect_table_2686_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_surface_table_2689:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 4
	fli	fa0, l_8282
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
	bne	a1, zero, beq_else_10585
	fli	fa1, l_8284
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
	b	beq_cont_10586
beq_else_10585:
	fsw	fa1, 0(a0)
beq_cont_10586:
setup_surface_table_2689_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_second_table_2692:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	li	a2, 5
	fli	fa0, l_8282
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
	call	quadratic_2623
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
	bne	a1, zero, beq_else_10587
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_10588
beq_else_10587:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_8376
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
beq_cont_10588:
	flw	fa1, 0(sp)
	feq	a0, fa0, fa1
	bne	a0, zero, beq_cont_10589
	fli	fa1, l_8283
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
beq_cont_10589:
	mv	a0, a3
setup_second_table_2692_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
iter_setup_dirvec_constants_2695:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a2, 4(s11)
	blt	a1, zero, iter_setup_dirvec_constants_2695_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_10590
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2686
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10591
beq_else_10590:
	li	t6, 2
	bne	a5, t6, beq_else_10592
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2689
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10593
beq_else_10592:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2692
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_10593:
beq_cont_10591:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_setup_dirvec_constants_2695_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
setup_startp_constants_2700:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a2, 4(s11)
	blt	a1, zero, setup_startp_constants_2700_ret
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
	bne	a6, t6, beq_else_10594
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2489
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_10595
beq_else_10594:
	li	t6, 2
	bgt	a6, t6, ble_else_10596
	b	ble_cont_10597
ble_else_10596:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2623
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_cont_10598
	fli	fa1, l_8283
	fsub	fa0, fa0, fa1
beq_cont_10598:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_10597:
beq_cont_10595:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_constants_2700_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2705:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, beq_else_10599
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	a2, fa0, fa1
	bne	a2, zero, beq_else_10601
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10602
beq_else_10601:
	li	a0, 0
beq_cont_10602:
	b	beq_cont_10600
beq_else_10599:
	li	a0, 0
beq_cont_10600:
	bne	a0, zero, beq_else_10603
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2705_ret
beq_else_10603:
	mv	a0, a1
is_rect_outside_2705_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_second_outside_2715:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)
	call	quadratic_2623
	lw	a0, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10604
	fli	fa1, l_8283
	fsub	fa0, fa0, fa1
beq_cont_10604:
	fli	fa1, l_8282
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_2715_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
is_outside_2720:
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
	bne	a4, t6, beq_else_10605
	call	is_rect_outside_2705
	b	is_outside_2720_ret
beq_else_10605:
	li	t6, 2
	bne	a4, t6, beq_else_10606
	sw	a1, 0(sp)
	mv	a0, a3
	call	veciprod2_2489
	fli	fa1, l_8282
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
	b	is_outside_2720_ret
beq_else_10606:
	call	is_second_outside_2715
is_outside_2720_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
check_all_inside_2725:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_10607
	li	a0, 1
	b	check_all_inside_2725_ret
beq_else_10607:
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
	call	is_outside_2720
	bne	a0, zero, beq_else_10608
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2725_ret
beq_else_10608:
	li	a0, 0
check_all_inside_2725_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_and_group_2731:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	lw	a2, 28(s11)
	lw	a3, 24(s11)
	lw	a4, 20(s11)
	lw	a5, 16(s11)
	lw	a6, 12(s11)
	lw	a7, 8(s11)
	lw	s1, 4(s11)
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	li	t6, -1
	bne	s2, t6, beq_else_10609
	li	a0, 0
	b	shadow_check_and_group_2731_ret
beq_else_10609:
	slli	s2, a0, 2
	add	t6, a1, s2
	lw	s2, 0(t6)
	sw	s1, 0(sp)
	sw	a7, 4(sp)
	sw	a6, 8(sp)
	sw	a1, 12(sp)
	sw	s11, 16(sp)
	sw	a0, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a3, 32(sp)
	mv	a1, a5
	mv	a0, s2
	mv	s11, a2
	mv	a2, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a1, 32(sp)
	flw	fa0, 0(a1)
	bne	a0, zero, beq_else_10610
	li	a0, 0
	b	beq_cont_10611
beq_else_10610:
	fli	fa1, l_8616
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_10611:
	bne	a0, zero, beq_else_10612
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10613
	li	a0, 0
	b	shadow_check_and_group_2731_ret
beq_else_10613:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2731_ret
beq_else_10612:
	fli	fa1, l_8617
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
	bne	a0, zero, beq_else_10614
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2731_ret
beq_else_10614:
	li	a0, 1
shadow_check_and_group_2731_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
shadow_check_one_or_group_2734:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	t6, -1
	bne	a4, t6, beq_else_10615
	li	a0, 0
	b	shadow_check_one_or_group_2734_ret
beq_else_10615:
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
	bne	a0, zero, beq_else_10616
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2734_ret
beq_else_10616:
	li	a0, 1
shadow_check_one_or_group_2734_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
shadow_check_one_or_matrix_2737:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a7, 0(t6)
	lw	s1, 0(a7)
	li	t6, -1
	bne	s1, t6, beq_else_10617
	li	a0, 0
	b	shadow_check_one_or_matrix_2737_ret
beq_else_10617:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10618
	li	a0, 1
	b	beq_cont_10619
beq_else_10618:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10620
	li	a0, 0
	b	beq_cont_10621
beq_else_10620:
	fli	fa0, l_8629
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10622
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10624
	li	a0, 0
	b	beq_cont_10625
beq_else_10624:
	li	a0, 1
beq_cont_10625:
	b	beq_cont_10623
beq_else_10622:
	li	a0, 0
beq_cont_10623:
beq_cont_10621:
beq_cont_10619:
	bne	a0, zero, beq_else_10626
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2737_ret
beq_else_10626:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10627
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2737_ret
beq_else_10627:
	li	a0, 1
shadow_check_one_or_matrix_2737_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_2740:
	addi	sp, sp, -76
	sw	ra, 72(sp)
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	slli	s5, a0, 2
	add	t6, a1, s5
	lw	s5, 0(t6)
	li	t6, -1
	bne	s5, t6, beq_else_10628
	b	solve_each_element_2740_ret
beq_else_10628:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	a3, 20(sp)
	sw	a5, 24(sp)
	sw	a2, 28(sp)
	sw	a1, 32(sp)
	sw	s11, 36(sp)
	sw	a0, 40(sp)
	sw	a7, 44(sp)
	sw	s5, 48(sp)
	mv	a1, a2
	mv	a0, s5
	mv	s11, a6
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10630
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10631
	b	solve_each_element_2740_ret
beq_else_10631:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2740_ret
beq_else_10630:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8282
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10633
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10634
	fli	fa1, l_8617
	fadd	fa0, fa0, fa1
	lw	a2, 28(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 16(sp)
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
	lw	a4, 32(sp)
	lw	s11, 12(sp)
	sw	a0, 52(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 60(sp)
	fsw	fa1, 64(sp)
	fsw	fa0, 68(sp)
	mv	a1, a4
	mv	a0, a3
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10635
	b	beq_cont_10636
beq_else_10635:
	lw	a0, 20(sp)
	flw	fa0, 68(sp)
	fsw	fa0, 0(a0)
	lw	a0, 8(sp)
	flw	fa0, 64(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 60(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 56(sp)
	fsw	fa0, 8(a0)
	lw	a0, 4(sp)
	lw	a1, 48(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
beq_cont_10636:
beq_cont_10634:
beq_cont_10633:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2740_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
solve_one_or_network_2744:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10637
	b	solve_one_or_network_2744_ret
beq_else_10637:
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
solve_one_or_network_2744_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_2748:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a1, s1
	lw	s1, 0(t6)
	lw	s2, 0(s1)
	li	t6, -1
	bne	s2, t6, beq_else_10639
	b	trace_or_matrix_2748_ret
beq_else_10639:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_10641
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10642
beq_else_10641:
	sw	s1, 16(sp)
	sw	a7, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s2
	mv	s11, a6
	mv	a2, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10643
	b	beq_cont_10644
beq_else_10643:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10645
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10645:
beq_cont_10644:
beq_cont_10642:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2748_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_2752:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8653
	fsw	fa0, 0(a2)
	li	a4, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	mv	a2, a0
	mv	s11, a1
	mv	a1, a3
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8629
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10646
	fli	fa1, l_8657
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_2752_ret
beq_else_10646:
	li	a0, 0
judge_intersection_2752_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solve_each_element_fast_2754:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	lw	s5, 0(a2)
	slli	s6, a0, 2
	add	t6, a1, s6
	lw	s6, 0(t6)
	li	t6, -1
	bne	s6, t6, beq_else_10647
	b	solve_each_element_fast_2754_ret
beq_else_10647:
	sw	s1, 0(sp)
	sw	s3, 4(sp)
	sw	s2, 8(sp)
	sw	s4, 12(sp)
	sw	a4, 16(sp)
	sw	s5, 20(sp)
	sw	a3, 24(sp)
	sw	a6, 28(sp)
	sw	a2, 32(sp)
	sw	a1, 36(sp)
	sw	s11, 40(sp)
	sw	a0, 44(sp)
	sw	a7, 48(sp)
	sw	s6, 52(sp)
	mv	a1, a2
	mv	a0, s6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10649
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10650
	b	solve_each_element_fast_2754_ret
beq_else_10650:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2754_ret
beq_else_10649:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8282
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10652
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10653
	fli	fa1, l_8617
	fadd	fa0, fa0, fa1
	lw	a2, 20(sp)
	flw	fa1, 0(a2)
	fmul	fa1, fa1, fa0
	lw	a3, 16(sp)
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
	lw	a3, 36(sp)
	lw	s11, 12(sp)
	sw	a0, 56(sp)
	fsw	fa3, 60(sp)
	fsw	fa2, 64(sp)
	fsw	fa1, 68(sp)
	fsw	fa0, 72(sp)
	mv	a1, a3
	mv	a0, a2
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10654
	b	beq_cont_10655
beq_else_10654:
	lw	a0, 24(sp)
	flw	fa0, 72(sp)
	fsw	fa0, 0(a0)
	lw	a0, 8(sp)
	flw	fa0, 68(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 64(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 60(sp)
	fsw	fa0, 8(a0)
	lw	a0, 4(sp)
	lw	a1, 52(sp)
	sw	a1, 0(a0)
	lw	a0, 0(sp)
	lw	a1, 56(sp)
	sw	a1, 0(a0)
beq_cont_10655:
beq_cont_10653:
beq_cont_10652:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2754_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
solve_one_or_network_fast_2758:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10656
	b	solve_one_or_network_fast_2758_ret
beq_else_10656:
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
solve_one_or_network_fast_2758_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_fast_2762:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a7, a0, 2
	add	t6, a1, a7
	lw	a7, 0(t6)
	lw	s1, 0(a7)
	li	t6, -1
	bne	s1, t6, beq_else_10658
	b	trace_or_matrix_fast_2762_ret
beq_else_10658:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10660
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10661
beq_else_10660:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10662
	b	beq_cont_10663
beq_else_10662:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10664
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10664:
beq_cont_10663:
beq_cont_10661:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2762_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_fast_2766:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8653
	fsw	fa0, 0(a2)
	li	a4, 0
	lw	a3, 0(a3)
	sw	a2, 0(sp)
	mv	a2, a0
	mv	s11, a1
	mv	a1, a3
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 0(sp)
	flw	fa0, 0(a0)
	fli	fa1, l_8629
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10665
	fli	fa1, l_8657
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_fast_2766_ret
beq_else_10665:
	li	a0, 0
judge_intersection_fast_2766_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
get_nvector_rect_2768:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lw	a2, 0(a2)
	fli	fa0, l_8282
	fsw	fa0, 0(a1)
	fsw	fa0, 4(a1)
	fsw	fa0, 8(a1)
	addi	a2, a2, -1
	slli	a3, a2, 2
	add	t6, a0, a3
	flw	fa1, 0(t6)
	feq	a0, fa1, fa0
	bne	a0, zero, beq_else_10666
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10668
	fli	fa0, l_8283
	b	beq_cont_10669
beq_else_10668:
	fli	fa0, l_8284
beq_cont_10669:
	b	beq_cont_10667
beq_else_10666:
	fli	fa0, l_8282
beq_cont_10667:
	fneg	fa0, fa0
	slli	a0, a2, 2
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2768_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_plane_2770:
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
get_nvector_plane_2770_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_second_2772:
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
	bne	a0, zero, beq_else_10672
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_10673
beq_else_10672:
	flw	fa6, 8(a3)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_8376
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
beq_cont_10673:
	mv	a0, a1
	mv	a1, a4
	call	vecunit_sgn_2483
get_nvector_second_2772_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
utexture_2777:
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
	bne	a0, t6, beq_else_10674
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fli	fa1, l_8754
	fmul	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8755
	fmul	fa0, fa0, fa1
	fli	fa2, l_8744
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
	bne	a1, zero, beq_else_10675
	bne	a0, zero, beq_else_10677
	fli	fa0, l_8737
	b	beq_cont_10678
beq_else_10677:
	fli	fa0, l_8282
beq_cont_10678:
	b	beq_cont_10676
beq_else_10675:
	bne	a0, zero, beq_else_10679
	fli	fa0, l_8282
	b	beq_cont_10680
beq_else_10679:
	fli	fa0, l_8737
beq_cont_10680:
beq_cont_10676:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2777_ret
beq_else_10674:
	li	t6, 2
	bne	a0, t6, beq_else_10682
	flw	fa0, 4(a1)
	fli	fa1, l_8748
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
	fli	fa1, l_8737
	fmul	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8283
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2777_ret
beq_else_10682:
	li	t6, 3
	bne	a0, t6, beq_else_10684
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
	fli	fa1, l_8744
	fdiv	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 44(sp)
	call	min_caml_floor
	flw	fa1, 44(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8730
	fmul	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 52(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 52(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8737
	fmul	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_8283
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2777_ret
beq_else_10684:
	li	t6, 4
	bne	a0, t6, utexture_2777_ret
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
	fli	fa3, l_8728
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	sw	a2, 0(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 60(sp)
	sw	a5, 64(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	bne	a0, zero, beq_else_10686
	fli	fa0, l_8731
	b	beq_cont_10687
beq_else_10686:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8729
	fmul	fa0, fa0, fa1
	fli	fa1, l_8730
	fdiv	fa0, fa0, fa1
beq_cont_10687:
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
	bne	a0, zero, beq_else_10688
	fli	fa0, l_8731
	b	beq_cont_10689
beq_else_10688:
	fdiv	fa1, fa1, fa2
	fabs	fa1, fa1
	fmv	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8729
	fmul	fa0, fa0, fa1
	fli	fa1, l_8730
	fdiv	fa0, fa0, fa1
beq_cont_10689:
	fsw	fa0, 76(sp)
	call	min_caml_floor
	flw	fa1, 76(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8735
	fli	fa2, l_8736
	flw	fa3, 72(sp)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fli	fa1, l_8282
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10690
	fli	fa0, l_8282
beq_cont_10690:
	fli	fa1, l_8737
	fmul	fa0, fa1, fa0
	fli	fa1, l_8738
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
utexture_2777_ret:
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
add_light_2780:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_8282
	fle	a2, fa0, fa3
	sw	a0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa1, 12(sp)
	bne	a2, zero, beq_cont_10692
	call	vecaccum_2494
beq_cont_10692:
	flw	fa0, 8(sp)
	flw	fa1, 12(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, add_light_2780_ret
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
add_light_2780_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_reflections_2784:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lw	a2, 32(s11)
	lw	a3, 28(s11)
	lw	a4, 24(s11)
	lw	a5, 20(s11)
	lw	a6, 16(s11)
	lw	a7, 12(s11)
	lw	s1, 8(s11)
	lw	s2, 4(s11)
	blt	a0, zero, trace_reflections_2784_ret
	slli	s3, a0, 2
	add	t6, a3, s3
	lw	a3, 0(t6)
	flw	fa2, 8(a3)
	lw	s3, 4(a3)
	lw	a3, 0(a3)
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa1, 8(sp)
	sw	s2, 12(sp)
	sw	a1, 16(sp)
	fsw	fa0, 20(sp)
	fsw	fa2, 24(sp)
	sw	a5, 28(sp)
	sw	s3, 32(sp)
	sw	a2, 36(sp)
	sw	a4, 40(sp)
	sw	a3, 44(sp)
	sw	a7, 48(sp)
	sw	s1, 52(sp)
	mv	a0, s3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10694
	b	beq_cont_10695
beq_else_10694:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	bne	a0, a1, beq_cont_10696
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10697
	lw	a0, 32(sp)
	lw	a1, 0(a0)
	lw	a0, 28(sp)
	sw	a1, 56(sp)
	call	veciprod_2486
	flw	fa1, 20(sp)
	flw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 16(sp)
	lw	a1, 56(sp)
	fsw	fa0, 60(sp)
	call	veciprod_2486
	flw	fa1, 24(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, 60(sp)
	flw	fa2, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10697:
beq_cont_10696:
beq_cont_10695:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 20(sp)
	flw	fa1, 8(sp)
	lw	a1, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_reflections_2784_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
trace_ray_2789:
	addi	sp, sp, -172
	sw	ra, 168(sp)
	lw	a3, 96(s11)
	lw	a4, 92(s11)
	lw	a5, 88(s11)
	lw	a6, 84(s11)
	lw	a7, 80(s11)
	lw	s1, 76(s11)
	lw	s2, 72(s11)
	lw	s3, 68(s11)
	lw	s4, 64(s11)
	lw	s5, 60(s11)
	lw	s6, 56(s11)
	lw	s7, 52(s11)
	lw	s8, 48(s11)
	lw	s9, 44(s11)
	lw	s10, 40(s11)
	lw	tp, 36(s11)
	lw	t0, 32(s11)
	lw	t1, 28(s11)
	lw	t2, 24(s11)
	lw	t3, 20(s11)
	lw	t4, 16(s11)
	lw	t5, 12(s11)
	sw	a5, 0(sp)
	lw	a5, 8(s11)
	sw	s11, 4(sp)
	lw	s11, 4(s11)
	li	t6, 4
	bgt	a0, t6, trace_ray_2789_ret
	sw	a4, 8(sp)
	lw	a4, 28(a2)
	sw	s8, 12(sp)
	lw	s8, 16(a2)
	sw	s3, 16(sp)
	lw	s3, 12(a2)
	sw	s9, 20(sp)
	lw	s9, 8(a2)
	sw	a2, 24(sp)
	lw	a2, 4(a2)
	fsw	fa1, 28(sp)
	sw	a7, 32(sp)
	sw	s11, 36(sp)
	sw	s2, 40(sp)
	sw	s5, 44(sp)
	sw	s7, 48(sp)
	sw	a4, 52(sp)
	sw	a6, 56(sp)
	sw	s8, 60(sp)
	sw	s3, 64(sp)
	sw	a2, 68(sp)
	sw	t0, 72(sp)
	sw	a3, 76(sp)
	sw	t1, 80(sp)
	sw	s1, 84(sp)
	sw	t3, 88(sp)
	sw	t5, 92(sp)
	sw	t4, 96(sp)
	sw	s6, 100(sp)
	sw	t2, 104(sp)
	sw	s4, 108(sp)
	sw	a5, 112(sp)
	fsw	fa0, 116(sp)
	sw	s10, 120(sp)
	sw	a1, 124(sp)
	sw	s9, 128(sp)
	sw	a0, 132(sp)
	mv	a0, a1
	mv	s11, tp
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10698
	li	a0, -1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_10699
	b	trace_ray_2789_ret
beq_else_10699:
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	call	veciprod_2486
	fneg	fa0, fa0
	fli	fa1, l_8282
	fle	a0, fa0, fa1
	bne	a0, zero, trace_ray_2789_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 116(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 112(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 108(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2789_ret
beq_else_10698:
	lw	a0, 104(sp)
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 100(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	flw	fa0, 0(a2)
	flw	fa1, 116(sp)
	fmul	fa0, fa0, fa1
	sw	a3, 136(sp)
	fsw	fa0, 140(sp)
	sw	a2, 144(sp)
	sw	a0, 148(sp)
	sw	a1, 152(sp)
	li	t6, 1
	bne	a4, t6, beq_else_10702
	lw	a4, 124(sp)
	lw	s11, 96(sp)
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10703
beq_else_10702:
	li	t6, 2
	bne	a4, t6, beq_else_10704
	lw	s11, 92(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10705
beq_else_10704:
	lw	s11, 88(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10705:
beq_cont_10703:
	lw	a0, 84(sp)
	lw	a1, 80(sp)
	call	veccpy_2480
	lw	a0, 152(sp)
	lw	a1, 80(sp)
	lw	s11, 76(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 148(sp)
	slli	a0, a0, 2
	lw	a1, 72(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 68(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 80(sp)
	mv	a1, a2
	call	veccpy_2480
	fli	fa0, l_8736
	lw	a0, 144(sp)
	flw	fa1, 0(a0)
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10706
	li	a1, 0
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	b	beq_cont_10707
beq_else_10706:
	li	a1, 1
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 60(sp)
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a4, 56(sp)
	mv	a0, a1
	mv	a1, a4
	call	veccpy_2480
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 60(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8779
	flw	fa1, 140(sp)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2501
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 52(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2480
beq_cont_10707:
	fli	fa0, l_8782
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	fsw	fa0, 156(sp)
	call	veciprod_2486
	flw	fa1, 156(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	call	vecaccum_2494
	lw	a0, 144(sp)
	flw	fa0, 4(a0)
	flw	fa1, 116(sp)
	fmul	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 44(sp)
	lw	a2, 0(a2)
	lw	s11, 40(sp)
	fsw	fa0, 160(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10708
	lw	a0, 48(sp)
	lw	a1, 120(sp)
	call	veciprod_2486
	fneg	fa0, fa0
	flw	fa1, 140(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	fsw	fa0, 164(sp)
	call	veciprod_2486
	fneg	fa1, fa0
	flw	fa0, 164(sp)
	flw	fa2, 160(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10708:
	lw	a0, 32(sp)
	lw	a1, 80(sp)
	call	veccpy_2480
	lw	a0, 20(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 80(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 140(sp)
	flw	fa1, 160(sp)
	lw	a1, 124(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_8787
	flw	fa1, 116(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_2789_ret
	lw	a0, 132(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10709
	b	bge_cont_10710
bge_else_10709:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10710:
	lw	a1, 136(sp)
	li	t6, 2
	bne	a1, t6, beq_cont_10711
	fli	fa0, l_8283
	lw	a1, 144(sp)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 0(sp)
	flw	fa1, 0(a1)
	flw	fa2, 28(sp)
	fadd	fa1, fa2, fa1
	lw	a1, 124(sp)
	lw	a2, 24(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10711:
trace_ray_2789_ret:
	lw	ra, 168(sp)
	addi	sp, sp, 172
	jr	ra
trace_diffuse_ray_2795:
	addi	sp, sp, -72
	sw	ra, 68(sp)
	lw	a1, 56(s11)
	lw	a2, 52(s11)
	lw	a3, 48(s11)
	lw	a4, 44(s11)
	lw	a5, 40(s11)
	lw	a6, 36(s11)
	lw	a7, 32(s11)
	lw	s1, 28(s11)
	lw	s2, 24(s11)
	lw	s3, 20(s11)
	lw	s4, 16(s11)
	lw	s5, 12(s11)
	lw	s6, 8(s11)
	lw	s7, 4(s11)
	sw	a2, 0(sp)
	sw	s7, 4(sp)
	fsw	fa0, 8(sp)
	sw	a7, 12(sp)
	sw	a6, 16(sp)
	sw	a3, 20(sp)
	sw	a4, 24(sp)
	sw	s2, 28(sp)
	sw	a1, 32(sp)
	sw	s4, 36(sp)
	sw	s6, 40(sp)
	sw	s5, 44(sp)
	sw	a0, 48(sp)
	sw	a5, 52(sp)
	sw	s3, 56(sp)
	mv	s11, s1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10713
	b	trace_diffuse_ray_2795_ret
beq_else_10713:
	lw	a0, 56(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 52(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	lw	a2, 28(a0)
	lw	a3, 4(a0)
	sw	a2, 60(sp)
	sw	a0, 64(sp)
	li	t6, 1
	bne	a3, t6, beq_else_10715
	lw	s11, 44(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10716
beq_else_10715:
	li	t6, 2
	bne	a3, t6, beq_else_10717
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10718
beq_else_10717:
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10718:
beq_cont_10716:
	lw	a0, 64(sp)
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
	bne	a0, zero, trace_diffuse_ray_2795_ret
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	veciprod_2486
	fneg	fa0, fa0
	fli	fa1, l_8282
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10719
	b	beq_cont_10720
beq_else_10719:
	fli	fa0, l_8282
beq_cont_10720:
	flw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 60(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2494
trace_diffuse_ray_2795_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays_2798:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a4, 4(s11)
	blt	a3, zero, iter_trace_diffuse_rays_2798_ret
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
	call	veciprod_2486
	fli	fa1, l_8282
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10721
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8807
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10722
beq_else_10721:
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8805
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10722:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_trace_diffuse_rays_2798_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent_2807:
	addi	sp, sp, -56
	sw	ra, 52(sp)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	sw	a1, 0(sp)
	sw	a6, 4(sp)
	sw	a4, 8(sp)
	sw	a5, 12(sp)
	sw	a2, 16(sp)
	sw	a3, 20(sp)
	sw	a7, 24(sp)
	sw	a0, 28(sp)
	bne	a0, zero, beq_else_10723
	b	beq_cont_10724
beq_else_10723:
	lw	s1, 0(a7)
	sw	s1, 32(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2480
	lw	a0, 12(sp)
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 16(sp)
	lw	s11, 8(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 32(sp)
	lw	a1, 0(sp)
	lw	a2, 16(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10724:
	lw	a0, 28(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10725
	b	beq_cont_10726
beq_else_10725:
	lw	a1, 24(sp)
	lw	a2, 4(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 36(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2480
	lw	a0, 12(sp)
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 16(sp)
	lw	s11, 8(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 36(sp)
	lw	a1, 0(sp)
	lw	a2, 16(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10726:
	lw	a0, 28(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10727
	b	beq_cont_10728
beq_else_10727:
	lw	a1, 24(sp)
	lw	a2, 8(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 40(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2480
	lw	a0, 12(sp)
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 16(sp)
	lw	s11, 8(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 40(sp)
	lw	a1, 0(sp)
	lw	a2, 16(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10728:
	lw	a0, 28(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10729
	b	beq_cont_10730
beq_else_10729:
	lw	a1, 24(sp)
	lw	a2, 12(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 44(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2480
	lw	a0, 12(sp)
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 16(sp)
	lw	s11, 8(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 44(sp)
	lw	a1, 0(sp)
	lw	a2, 16(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10730:
	lw	a0, 28(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10731
	b	trace_diffuse_ray_80percent_2807_ret
beq_else_10731:
	lw	a0, 24(sp)
	lw	a0, 16(a0)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2480
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 16(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a3, 118
	lw	a0, 48(sp)
	lw	a1, 0(sp)
	lw	a2, 16(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_diffuse_ray_80percent_2807_ret:
	lw	ra, 52(sp)
	addi	sp, sp, 56
	jr	ra
calc_diffuse_using_1point_2811:
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
	call	veccpy_2480
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
	call	vecaccumv_2504
calc_diffuse_using_1point_2811_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_5points_2814:
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
	call	veccpy_2480
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2498
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2498
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2498
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2498
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
	call	vecaccumv_2504
calc_diffuse_using_5points_2814_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
do_without_neighbors_2820:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_2820_ret
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, do_without_neighbors_2820_ret
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10733
	b	beq_cont_10734
beq_else_10733:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10734:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
do_without_neighbors_2820_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_exist_2823:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10735
	li	a0, 0
	b	neighbors_exist_2823_ret
ble_else_10735:
	bgt	a1, zero, ble_else_10736
	li	a0, 0
	b	neighbors_exist_2823_ret
ble_else_10736:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10737
	li	a0, 0
	b	neighbors_exist_2823_ret
ble_else_10737:
	bgt	a0, zero, ble_else_10738
	li	a0, 0
	b	neighbors_exist_2823_ret
ble_else_10738:
	li	a0, 1
neighbors_exist_2823_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
neighbors_are_available_2830:
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
	bne	a1, a5, beq_else_10739
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10740
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10741
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10742
	li	a0, 1
	b	neighbors_are_available_2830_ret
beq_else_10742:
	li	a0, 0
	b	neighbors_are_available_2830_ret
beq_else_10741:
	li	a0, 0
	b	neighbors_are_available_2830_ret
beq_else_10740:
	li	a0, 0
	b	neighbors_are_available_2830_ret
beq_else_10739:
	li	a0, 0
neighbors_are_available_2830_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
try_exploit_neighbors_2836:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_2836_ret
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, try_exploit_neighbors_2836_ret
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
	call	neighbors_are_available_2830
	bne	a0, zero, beq_else_10743
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2836_ret
beq_else_10743:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10744
	b	beq_cont_10745
beq_else_10744:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10745:
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
try_exploit_neighbors_2836_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
write_ppm_header_2843:
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
write_ppm_header_2843_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
write_rgb_2847:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10746
	blt	a0, zero, bge_else_10748
	b	bge_cont_10749
bge_else_10748:
	li	a0, 0
bge_cont_10749:
	b	ble_cont_10747
ble_else_10746:
	li	a0, 255
ble_cont_10747:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10750
	blt	a0, zero, bge_else_10752
	b	bge_cont_10753
bge_else_10752:
	li	a0, 0
bge_cont_10753:
	b	ble_cont_10751
ble_else_10750:
	li	a0, 255
ble_cont_10751:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 8(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10754
	blt	a0, zero, bge_else_10756
	b	bge_cont_10757
bge_else_10756:
	li	a0, 0
bge_cont_10757:
	b	ble_cont_10755
ble_else_10754:
	li	a0, 255
ble_cont_10755:
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_rgb_2847_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
pretrace_diffuse_rays_2849:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a2, 24(s11)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_2849_ret
	lw	s1, 28(a0)
	lw	s2, 24(a0)
	lw	s3, 20(a0)
	lw	s4, 12(a0)
	lw	s5, 8(a0)
	lw	s6, 4(a0)
	slli	s7, a1, 2
	add	t6, s5, s7
	lw	s5, 0(t6)
	blt	s5, zero, pretrace_diffuse_rays_2849_ret
	slli	s5, a1, 2
	add	t6, s4, s5
	lw	s4, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s4, zero, beq_else_10758
	b	beq_cont_10759
beq_else_10758:
	lw	s2, 0(s2)
	fli	fa0, l_8282
	fsw	fa0, 0(a7)
	fsw	fa0, 4(a7)
	fsw	fa0, 8(a7)
	slli	s2, s2, 2
	add	t6, a6, s2
	lw	a6, 0(t6)
	slli	s2, a1, 2
	add	t6, s1, s2
	lw	s1, 0(t6)
	slli	s2, a1, 2
	add	t6, s6, s2
	lw	s2, 0(t6)
	sw	a7, 12(sp)
	sw	s3, 16(sp)
	sw	s1, 20(sp)
	sw	a6, 24(sp)
	sw	a5, 28(sp)
	sw	s2, 32(sp)
	sw	a3, 36(sp)
	sw	a4, 40(sp)
	mv	a1, s2
	mv	a0, a2
	call	veccpy_2480
	lw	a0, 40(sp)
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
	call	veccpy_2480
beq_cont_10759:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_diffuse_rays_2849_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
pretrace_pixels_2852:
	addi	sp, sp, -68
	sw	ra, 64(sp)
	lw	a3, 36(s11)
	lw	a4, 32(s11)
	lw	a5, 28(s11)
	lw	a6, 24(s11)
	lw	a7, 20(s11)
	lw	s1, 16(s11)
	lw	s2, 12(s11)
	lw	s3, 8(s11)
	lw	s4, 4(s11)
	blt	a1, zero, pretrace_pixels_2852_ret
	flw	fa3, 0(a7)
	lw	a7, 0(s4)
	sub	a7, a1, a7
	sw	s11, 0(sp)
	sw	s3, 4(sp)
	sw	a2, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a1, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	sw	s1, 32(sp)
	fsw	fa2, 36(sp)
	fsw	fa1, 40(sp)
	sw	s2, 44(sp)
	fsw	fa0, 48(sp)
	sw	a6, 52(sp)
	fsw	fa3, 56(sp)
	mv	a0, a7
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
	call	vecunit_sgn_2483
	fli	fa0, l_8282
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	fsw	fa0, 60(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2480
	li	a0, 0
	fli	fa0, l_8283
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
	call	veccpy_2480
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
	blt	a0, t6, bge_else_10760
	addi	a2, a0, -5
	b	bge_cont_10761
bge_else_10760:
	mv	a2, a0
bge_cont_10761:
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 36(sp)
	lw	a0, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_pixels_2852_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
pretrace_line_2859:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a3, 24(s11)
	lw	a4, 20(s11)
	lw	a5, 16(s11)
	lw	a6, 12(s11)
	lw	a7, 8(s11)
	lw	s1, 4(s11)
	flw	fa0, 0(a5)
	lw	a5, 4(s1)
	sub	a1, a1, a5
	sw	a2, 0(sp)
	sw	a0, 4(sp)
	sw	a6, 8(sp)
	sw	a7, 12(sp)
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
pretrace_line_2859_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
scan_pixel_2863:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_10762
	b	scan_pixel_2863_ret
ble_else_10762:
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
	call	veccpy_2480
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10764
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
	b	beq_cont_10765
beq_else_10764:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10765:
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
scan_pixel_2863_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
scan_line_2869:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10766
	b	scan_line_2869_ret
ble_else_10766:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10768
	b	ble_cont_10769
ble_else_10768:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10769:
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
	blt	a1, t6, bge_else_10770
	addi	a4, a1, -5
	b	bge_cont_10771
bge_else_10770:
	mv	a4, a1
bge_cont_10771:
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2869_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_float5x3array_2875:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a0, 3
	fli	fa0, l_8282
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
create_float5x3array_2875_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
create_pixel_2877:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	a0, 3
	fli	fa0, l_8282
	call	min_caml_create_float_array
	sw	a0, 0(sp)
	call	create_float5x3array_2875
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
	call	create_float5x3array_2875
	sw	a0, 16(sp)
	call	create_float5x3array_2875
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2875
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
create_pixel_2877_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
init_line_elements_2879:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, bge_else_10773
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2877
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, bge_else_10774
	sw	a0, 8(sp)
	call	create_pixel_2877
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2879
	b	init_line_elements_2879_ret
bge_else_10774:
	mv	a0, a3
	b	init_line_elements_2879_ret
bge_else_10773:
init_line_elements_2879_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_pixelline_2882:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2877
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	blt	a1, zero, bge_else_10775
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	call	create_pixel_2877
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2879
	b	create_pixelline_2882_ret
bge_else_10775:
create_pixelline_2882_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2886:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	fmul	fa0, fa0, fa0
	fli	fa2, l_8787
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_8283
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
adjust_position_2886_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
calc_dirvec_2889:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10776
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8283
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
	b	calc_dirvec_2889_ret
bge_else_10776:
	fsw	fa2, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	fsw	fa3, 16(sp)
	sw	a0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_2886
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 28(sp)
	call	adjust_position_2886
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
calc_dirvec_2889_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvecs_2897:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvecs_2897_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a3, 20(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8942
	fmul	fa0, fa0, fa1
	fli	fa2, l_8943
	fsub	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_8282
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
	fli	fa1, l_8787
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
	blt	a1, t6, bge_cont_10778
	addi	a1, a1, -5
bge_cont_10778:
	flw	fa0, 8(sp)
	lw	a2, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvecs_2897_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvec_rows_2902:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvec_rows_2902_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8942
	fmul	fa0, fa0, fa1
	fli	fa1, l_8943
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
	blt	a1, t6, bge_cont_10779
	addi	a1, a1, -5
bge_cont_10779:
	lw	a2, 8(sp)
	addi	a2, a2, 4
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_rows_2902_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvec_elements_2908:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a2, 4(s11)
	blt	a1, zero, create_dirvec_elements_2908_ret
	li	a3, 3
	fli	fa0, l_8282
	sw	s11, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	sw	a2, 16(sp)
	mv	a0, a3
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 16(sp)
	lw	a2, 0(a0)
	sw	a1, 20(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 20(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, create_dirvec_elements_2908_ret
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 16(sp)
	lw	a0, 0(a0)
	sw	a1, 28(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 28(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 24(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	lw	s11, 0(sp)
	mv	a0, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvec_elements_2908_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvecs_2911:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, create_dirvecs_2911_ret
	li	a4, 120
	li	a5, 3
	fli	fa0, l_8282
	sw	s11, 0(sp)
	sw	a3, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a0, 16(sp)
	sw	a4, 20(sp)
	sw	a1, 24(sp)
	mv	a0, a5
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 24(sp)
	lw	a2, 0(a0)
	sw	a1, 28(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 28(sp)
	sw	a0, 0(a1)
	lw	a0, 20(sp)
	call	min_caml_create_array
	lw	a1, 16(sp)
	slli	a2, a1, 2
	lw	a3, 12(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	add	t6, a3, a0
	lw	a0, 0(t6)
	li	a2, 3
	flw	fa0, 8(sp)
	sw	a0, 32(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 24(sp)
	lw	a0, 0(a0)
	sw	a1, 36(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 36(sp)
	sw	a0, 0(a1)
	mv	a0, a1
	lw	a1, 32(sp)
	sw	a0, 472(a1)
	li	a0, 117
	lw	s11, 4(sp)
	mv	t4, a1
	mv	a1, a0
	mv	a0, t4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 16(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvecs_2911_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
init_dirvec_constants_2913:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a1, zero, init_dirvec_constants_2913_ret
	slli	a4, a1, 2
	add	t6, a0, a4
	lw	a4, 0(t6)
	lw	a5, 0(a2)
	addi	a5, a5, -1
	sw	s11, 0(sp)
	sw	a3, 4(sp)
	sw	a2, 8(sp)
	sw	a0, 12(sp)
	sw	a1, 16(sp)
	mv	a1, a5
	mv	a0, a4
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 16(sp)
	addi	a0, a0, -1
	blt	a0, zero, init_dirvec_constants_2913_ret
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
init_dirvec_constants_2913_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
init_vecset_constants_2916:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	blt	a0, zero, init_vecset_constants_2916_ret
	slli	a5, a0, 2
	add	t6, a4, a5
	lw	a5, 0(t6)
	lw	a6, 476(a5)
	lw	a1, 0(a1)
	addi	a1, a1, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a0, 8(sp)
	sw	a5, 12(sp)
	sw	a3, 16(sp)
	mv	a0, a6
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a1, 118
	lw	a0, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 8(sp)
	addi	a0, a0, -1
	blt	a0, zero, init_vecset_constants_2916_ret
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
init_vecset_constants_2916_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
setup_rect_reflection_2927:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	lw	a7, 0(a3)
	fli	fa0, l_8283
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a5)
	fneg	fa1, fa1
	flw	fa2, 4(a5)
	fneg	fa2, fa2
	flw	fa3, 8(a5)
	fneg	fa3, fa3
	addi	a1, a0, 1
	flw	fa4, 0(a5)
	li	s1, 3
	fli	fa5, l_8282
	sw	a3, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa5, 8(sp)
	sw	a5, 12(sp)
	sw	a0, 16(sp)
	sw	a2, 20(sp)
	sw	a7, 24(sp)
	sw	a1, 28(sp)
	fsw	fa0, 32(sp)
	sw	a6, 36(sp)
	fsw	fa3, 40(sp)
	fsw	fa2, 44(sp)
	fsw	fa4, 48(sp)
	sw	a4, 52(sp)
	mv	a0, s1
	fmv	fa0, fa5
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 52(sp)
	lw	a2, 0(a0)
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
setup_rect_reflection_2927_ret:
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
setup_surface_reflection_2930:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a7, 0(a3)
	fli	fa0, l_8283
	lw	s1, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(s1)
	fsub	fa0, fa0, fa1
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a7, 8(sp)
	sw	a0, 12(sp)
	fsw	fa0, 16(sp)
	sw	a6, 20(sp)
	sw	a4, 24(sp)
	sw	a5, 28(sp)
	sw	a1, 32(sp)
	mv	a0, a5
	call	veciprod_2486
	fli	fa1, l_8376
	lw	a0, 32(sp)
	flw	fa2, 0(a0)
	fmul	fa2, fa1, fa2
	fmul	fa2, fa2, fa0
	lw	a1, 28(sp)
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
	fli	fa1, l_8282
	fsw	fa0, 36(sp)
	fsw	fa3, 40(sp)
	fsw	fa2, 44(sp)
	fmv	fa0, fa1
	call	min_caml_create_float_array
	mv	a1, a0
	lw	a0, 24(sp)
	lw	a2, 0(a0)
	sw	a1, 48(sp)
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 48(sp)
	sw	a0, 0(a1)
	flw	fa0, 44(sp)
	fsw	fa0, 0(a0)
	flw	fa0, 40(sp)
	fsw	fa0, 4(a0)
	flw	fa0, 36(sp)
	fsw	fa0, 8(a0)
	lw	a0, 24(sp)
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
setup_surface_reflection_2930_ret:
	lw	ra, 56(sp)
	addi	sp, sp, 60
	jr	ra
setup_reflections_2933:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, setup_reflections_2933_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, setup_reflections_2933_ret
	fli	fa0, l_8283
	flw	fa1, 0(a4)
	fle	a4, fa0, fa1
	bne	a4, zero, setup_reflections_2933_ret
	li	t6, 1
	bne	a6, t6, beq_else_10782
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2933_ret
beq_else_10782:
	li	t6, 2
	bne	a6, t6, setup_reflections_2933_ret
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_reflections_2933_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
rt_2935:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	lw	a2, 68(s11)
	lw	a3, 64(s11)
	lw	a4, 60(s11)
	lw	a5, 56(s11)
	lw	a6, 52(s11)
	lw	a7, 48(s11)
	lw	s1, 44(s11)
	lw	s2, 40(s11)
	lw	s3, 36(s11)
	lw	s4, 32(s11)
	lw	s5, 28(s11)
	lw	s6, 24(s11)
	lw	s7, 20(s11)
	lw	s8, 16(s11)
	lw	s9, 12(s11)
	lw	s10, 8(s11)
	lw	s11, 4(s11)
	sw	a0, 0(s7)
	sw	a1, 4(s7)
	srai	s7, a0, 1
	sw	s7, 0(s8)
	srai	a1, a1, 1
	sw	a1, 4(s8)
	fli	fa0, l_9049
	sw	a6, 0(sp)
	sw	s1, 4(sp)
	sw	a4, 8(sp)
	sw	s3, 12(sp)
	sw	s5, 16(sp)
	sw	s2, 20(sp)
	sw	s4, 24(sp)
	sw	a3, 28(sp)
	sw	s6, 32(sp)
	sw	s11, 36(sp)
	sw	s10, 40(sp)
	sw	a2, 44(sp)
	sw	a7, 48(sp)
	sw	s9, 52(sp)
	sw	a5, 56(sp)
	fsw	fa0, 60(sp)
	call	min_caml_float_of_int
	flw	fa1, 60(sp)
	fdiv	fa0, fa1, fa0
	lw	a0, 56(sp)
	fsw	fa0, 0(a0)
	lw	s11, 52(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 52(sp)
	sw	a0, 64(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 52(sp)
	sw	a0, 68(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 48(sp)
	sw	a0, 72(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	s11, 44(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 4
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 9
	li	a1, 0
	li	a2, 0
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 4
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	call	veccpy_2480
	lw	a0, 20(sp)
	lw	a1, 0(a0)
	addi	a1, a1, -1
	lw	a2, 12(sp)
	lw	s11, 16(sp)
	mv	a0, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 20(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a1, 0
	li	a2, 0
	lw	a0, 68(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	li	a0, 0
	li	a4, 2
	lw	a1, 64(sp)
	lw	a2, 68(sp)
	lw	a3, 72(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
rt_2935_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
	.data
l_9049:	# 128.000000
	.word	1124073472
l_8943:	# 0.900000
	.word	1063675494
l_8942:	# 0.200000
	.word	1045220557
l_8807:	# -150.000000
	.word	-1021968384
l_8805:	# 150.000000
	.word	1125515264
l_8787:	# 0.100000
	.word	1036831949
l_8782:	# -2.000000
	.word	-1073741824
l_8779:	# 0.003906
	.word	998244352
l_8755:	# 20.000000
	.word	1101004800
l_8754:	# 0.050000
	.word	1028443341
l_8748:	# 0.250000
	.word	1048576000
l_8744:	# 10.000000
	.word	1092616192
l_8738:	# 0.300000
	.word	1050253722
l_8737:	# 255.000000
	.word	1132396544
l_8736:	# 0.500000
	.word	1056964608
l_8735:	# 0.150000
	.word	1041865114
l_8731:	# 15.000000
	.word	1097859072
l_8730:	# 3.141593
	.word	1078530011
l_8729:	# 30.000000
	.word	1106247680
l_8728:	# 0.000100
	.word	953267991
l_8657:	# 100000000.000000
	.word	1287568416
l_8653:	# 1000000000.000000
	.word	1315859240
l_8629:	# -0.100000
	.word	-1110651699
l_8617:	# 0.010000
	.word	1008981770
l_8616:	# -0.200000
	.word	-1102263091
l_8376:	# 2.000000
	.word	1073741824
l_8342:	# -200.000000
	.word	-1018691584
l_8340:	# 200.000000
	.word	1128792064
l_8339:	# 0.017453
	.word	1016003125
l_8284:	# -1.000000
	.word	-1082130432
l_8283:	# 1.000000
	.word	1065353216
l_8282:	# 0.000000
	.word	0
