	.text
	.globl _min_caml_start
_min_caml_start: # main entry point
	li	gp, 224	# initialize gp
#	main program starts
	addi	sp, sp, -152
	sw	ra, 148(sp)
	li	a0, 0
	fli	fa0, l_8313
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
	li	a1, 1
	fli	fa0, l_8768
	sw	a0, 16(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 50
	li	a2, 1
	li	a3, -1
	sw	a0, 20(sp)
	sw	a1, 24(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 24(sp)
	call	min_caml_create_array
	li	a1, 1
	li	a2, 1
	lw	a3, 0(a0)
	sw	a0, 28(sp)
	sw	a1, 32(sp)
	mv	a1, a3
	mv	a0, a2
	call	min_caml_create_array
	mv	a1, a0
	lw	a0, 32(sp)
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 0(sp)
	sw	a0, 36(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 1
	li	a2, 0
	sw	a0, 40(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8684
	sw	a0, 44(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 1
	li	a2, 0
	sw	a0, 52(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 56(sp)
	mv	a0, a1
	call	min_caml_create_float_array
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
	li	a1, 2
	li	a2, 0
	sw	a0, 72(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 2
	li	a2, 0
	sw	a0, 76(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	flw	fa0, 0(sp)
	sw	a0, 80(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 84(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 88(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 96(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 0
	flw	fa0, 0(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 112(sp)
	call	min_caml_create_array
	li	a1, 0
	mv	a2, gp
	addi	gp, gp, 8
	sw	a0, 4(a2)
	lw	a0, 112(sp)
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
	sw	a0, 116(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 120(sp)
	mv	a0, a1
	call	min_caml_create_float_array
	li	a1, 60
	lw	a2, 120(sp)
	sw	a0, 124(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 124(sp)
	sw	a0, 0(a1)
	li	a2, 0
	flw	fa0, 0(sp)
	sw	a1, 128(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	mv	a1, a0
	li	a0, 0
	sw	a1, 132(sp)
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 8
	sw	a0, 4(a1)
	lw	a0, 132(sp)
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
	li	a1, 1
	li	a2, 0
	sw	a0, 136(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	mv	a1, gp
	addi	gp, gp, 24
	la	a2, read_screen_settings_2583
	sw	a2, 0(a1)
	lw	a2, 12(sp)
	sw	a2, 20(a1)
	lw	a3, 104(sp)
	sw	a3, 16(a1)
	lw	a4, 100(sp)
	sw	a4, 12(a1)
	lw	a5, 96(sp)
	sw	a5, 8(a1)
	lw	a6, 8(sp)
	sw	a6, 4(a1)
	mv	a6, gp
	addi	gp, gp, 12
	la	a7, read_light_2585
	sw	a7, 0(a6)
	lw	a7, 16(sp)
	sw	a7, 8(a6)
	lw	s1, 20(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object_2590
	sw	s3, 0(s2)
	lw	s3, 4(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 8
	la	s5, read_object_2592
	sw	s5, 0(s4)
	sw	s2, 4(s4)
	mv	s2, gp
	addi	gp, gp, 8
	la	s5, read_and_network_2600
	sw	s5, 0(s2)
	lw	s5, 28(sp)
	sw	s5, 4(s2)
	mv	s6, gp
	addi	gp, gp, 24
	la	s7, read_parameter_2602
	sw	s7, 0(s6)
	sw	a1, 20(s6)
	sw	s4, 16(s6)
	sw	a6, 12(s6)
	sw	s2, 8(s6)
	lw	a1, 36(sp)
	sw	a1, 4(s6)
	mv	a6, gp
	addi	gp, gp, 8
	la	s2, solver_rect_surface_2604
	sw	s2, 0(a6)
	lw	s2, 40(sp)
	sw	s2, 4(a6)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, solver_rect_2613
	sw	s7, 0(s4)
	sw	a6, 4(s4)
	mv	a6, gp
	addi	gp, gp, 8
	la	s7, solver_surface_2619
	sw	s7, 0(a6)
	sw	s2, 4(a6)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, solver_second_2638
	sw	s8, 0(s7)
	sw	s2, 4(s7)
	mv	s8, gp
	addi	gp, gp, 20
	la	s9, solver_2644
	sw	s9, 0(s8)
	sw	a6, 16(s8)
	sw	s7, 12(s8)
	sw	s4, 8(s8)
	sw	s3, 4(s8)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_fast_2648
	sw	s4, 0(a6)
	sw	s2, 4(a6)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, solver_surface_fast_2655
	sw	s7, 0(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s9, solver_second_fast_2661
	sw	s9, 0(s7)
	sw	s2, 4(s7)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver_fast_2667
	sw	s10, 0(s9)
	sw	s4, 16(s9)
	sw	s7, 12(s9)
	sw	a6, 8(s9)
	sw	s3, 4(s9)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, solver_surface_fast2_2671
	sw	s7, 0(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast2_2678
	sw	s10, 0(s7)
	sw	s2, 4(s7)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast2_2685
	sw	s11, 0(s10)
	sw	s4, 16(s10)
	sw	s7, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, iter_setup_dirvec_constants_2697
	sw	s4, 0(a6)
	sw	s3, 4(a6)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, setup_startp_constants_2702
	sw	s7, 0(s4)
	sw	s3, 4(s4)
	mv	s7, gp
	addi	gp, gp, 8
	la	s11, check_all_inside_2727
	sw	s11, 0(s7)
	sw	s3, 4(s7)
	mv	s11, gp
	addi	gp, gp, 32
	la	tp, shadow_check_and_group_2733
	sw	tp, 0(s11)
	sw	s9, 28(s11)
	sw	s2, 24(s11)
	sw	s3, 20(s11)
	lw	tp, 128(sp)
	sw	tp, 16(s11)
	sw	a7, 12(s11)
	lw	t0, 52(sp)
	sw	t0, 8(s11)
	sw	s7, 4(s11)
	mv	t1, gp
	addi	gp, gp, 12
	la	t2, shadow_check_one_or_group_2736
	sw	t2, 0(t1)
	sw	s11, 8(t1)
	sw	s5, 4(t1)
	mv	s11, gp
	addi	gp, gp, 24
	la	t2, shadow_check_one_or_matrix_2739
	sw	t2, 0(s11)
	sw	s9, 20(s11)
	sw	s2, 16(s11)
	sw	t1, 12(s11)
	sw	tp, 8(s11)
	sw	t0, 4(s11)
	mv	s9, gp
	addi	gp, gp, 40
	la	t1, solve_each_element_2742
	sw	t1, 0(s9)
	lw	t1, 48(sp)
	sw	t1, 36(s9)
	lw	t2, 88(sp)
	sw	t2, 32(s9)
	sw	s2, 28(s9)
	sw	s8, 24(s9)
	sw	s3, 20(s9)
	lw	t3, 44(sp)
	sw	t3, 16(s9)
	sw	t0, 12(s9)
	lw	t4, 56(sp)
	sw	t4, 8(s9)
	sw	s7, 4(s9)
	mv	t5, gp
	addi	gp, gp, 12
	la	tp, solve_one_or_network_2746
	sw	tp, 0(t5)
	sw	s9, 8(t5)
	sw	s5, 4(t5)
	mv	s9, gp
	addi	gp, gp, 24
	la	tp, trace_or_matrix_2750
	sw	tp, 0(s9)
	sw	t1, 20(s9)
	sw	t2, 16(s9)
	sw	s2, 12(s9)
	sw	s8, 8(s9)
	sw	t5, 4(s9)
	mv	s8, gp
	addi	gp, gp, 16
	la	tp, judge_intersection_2754
	sw	tp, 0(s8)
	sw	s9, 12(s8)
	sw	t1, 8(s8)
	sw	a1, 4(s8)
	mv	s9, gp
	addi	gp, gp, 40
	la	tp, solve_each_element_fast_2756
	sw	tp, 0(s9)
	sw	t1, 36(s9)
	lw	tp, 92(sp)
	sw	tp, 32(s9)
	sw	s10, 28(s9)
	sw	s2, 24(s9)
	sw	s3, 20(s9)
	sw	t3, 16(s9)
	sw	t0, 12(s9)
	sw	t4, 8(s9)
	sw	s7, 4(s9)
	mv	s7, gp
	addi	gp, gp, 12
	la	t5, solve_one_or_network_fast_2760
	sw	t5, 0(s7)
	sw	s9, 8(s7)
	sw	s5, 4(s7)
	mv	s5, gp
	addi	gp, gp, 20
	la	s9, trace_or_matrix_fast_2764
	sw	s9, 0(s5)
	sw	t1, 16(s5)
	sw	s10, 12(s5)
	sw	s2, 8(s5)
	sw	s7, 4(s5)
	mv	s2, gp
	addi	gp, gp, 16
	la	s7, judge_intersection_fast_2768
	sw	s7, 0(s2)
	sw	s5, 12(s2)
	sw	t1, 8(s2)
	sw	a1, 4(s2)
	mv	s5, gp
	addi	gp, gp, 12
	la	s7, get_nvector_rect_2770
	sw	s7, 0(s5)
	lw	s7, 60(sp)
	sw	s7, 8(s5)
	sw	t3, 4(s5)
	mv	s9, gp
	addi	gp, gp, 8
	la	s10, get_nvector_plane_2772
	sw	s10, 0(s9)
	sw	s7, 4(s9)
	mv	s10, gp
	addi	gp, gp, 12
	la	t5, get_nvector_second_2774
	sw	t5, 0(s10)
	sw	s7, 8(s10)
	sw	t0, 4(s10)
	mv	t5, gp
	addi	gp, gp, 8
	sw	s6, 140(sp)
	la	s6, utexture_2779
	sw	s6, 0(t5)
	lw	s6, 64(sp)
	sw	s6, 4(t5)
	sw	a6, 144(sp)
	mv	a6, gp
	addi	gp, gp, 12
	la	a4, add_light_2782
	sw	a4, 0(a6)
	sw	s6, 8(a6)
	lw	a4, 72(sp)
	sw	a4, 4(a6)
	mv	a3, gp
	addi	gp, gp, 36
	la	a5, trace_reflections_2786
	sw	a5, 0(a3)
	sw	s11, 32(a3)
	lw	a5, 136(sp)
	sw	a5, 28(a3)
	sw	a1, 24(a3)
	sw	s7, 20(a3)
	sw	s2, 16(a3)
	sw	t3, 12(a3)
	sw	t4, 8(a3)
	sw	a6, 4(a3)
	mv	a5, gp
	addi	gp, gp, 96
	la	a2, trace_ray_2791
	sw	a2, 0(a5)
	sw	t5, 92(a5)
	sw	a3, 88(a5)
	sw	t1, 84(a5)
	sw	s6, 80(a5)
	sw	tp, 76(a5)
	sw	t2, 72(a5)
	sw	s11, 68(a5)
	sw	s4, 64(a5)
	sw	a4, 60(a5)
	sw	a1, 56(a5)
	sw	s3, 52(a5)
	sw	s7, 48(a5)
	sw	a0, 44(a5)
	sw	a7, 40(a5)
	sw	s8, 36(a5)
	sw	t3, 32(a5)
	sw	t0, 28(a5)
	sw	t4, 24(a5)
	sw	s10, 20(a5)
	sw	s5, 16(a5)
	sw	s9, 12(a5)
	sw	s1, 8(a5)
	sw	a6, 4(a5)
	mv	a2, gp
	addi	gp, gp, 60
	la	a3, trace_diffuse_ray_2797
	sw	a3, 0(a2)
	sw	t5, 56(a2)
	sw	s6, 52(a2)
	sw	s11, 48(a2)
	sw	a1, 44(a2)
	sw	s3, 40(a2)
	sw	s7, 36(a2)
	sw	a7, 32(a2)
	sw	s2, 28(a2)
	sw	t0, 24(a2)
	sw	t4, 20(a2)
	sw	s10, 16(a2)
	sw	s5, 12(a2)
	sw	s9, 8(a2)
	lw	a1, 68(sp)
	sw	a1, 4(a2)
	mv	a3, gp
	addi	gp, gp, 8
	la	a6, iter_trace_diffuse_rays_2800
	sw	a6, 0(a3)
	sw	a2, 4(a3)
	mv	a2, gp
	addi	gp, gp, 20
	la	a6, trace_diffuse_ray_80percent_2809
	sw	a6, 0(a2)
	sw	tp, 16(a2)
	sw	s4, 12(a2)
	sw	a3, 8(a2)
	lw	a6, 116(sp)
	sw	a6, 4(a2)
	mv	s1, gp
	addi	gp, gp, 16
	la	s2, calc_diffuse_using_1point_2813
	sw	s2, 0(s1)
	sw	a2, 12(s1)
	sw	a4, 8(s1)
	sw	a1, 4(s1)
	mv	a2, gp
	addi	gp, gp, 12
	la	s2, calc_diffuse_using_5points_2816
	sw	s2, 0(a2)
	sw	a4, 8(a2)
	sw	a1, 4(a2)
	mv	s2, gp
	addi	gp, gp, 8
	la	s5, do_without_neighbors_2822
	sw	s5, 0(s2)
	sw	s1, 4(s2)
	mv	s1, gp
	addi	gp, gp, 8
	la	s5, neighbors_exist_2825
	sw	s5, 0(s1)
	lw	s5, 76(sp)
	sw	s5, 4(s1)
	mv	s6, gp
	addi	gp, gp, 12
	la	s7, try_exploit_neighbors_2838
	sw	s7, 0(s6)
	sw	s2, 8(s6)
	sw	a2, 4(s6)
	mv	a2, gp
	addi	gp, gp, 8
	la	s7, write_ppm_header_2845
	sw	s7, 0(a2)
	sw	s5, 4(a2)
	mv	s7, gp
	addi	gp, gp, 8
	la	s8, write_rgb_2849
	sw	s8, 0(s7)
	sw	a4, 4(s7)
	mv	s8, gp
	addi	gp, gp, 24
	la	s9, pretrace_diffuse_rays_2851
	sw	s9, 0(s8)
	sw	tp, 20(s8)
	sw	s4, 16(s8)
	sw	a3, 12(s8)
	sw	a6, 8(s8)
	sw	a1, 4(s8)
	mv	a1, gp
	addi	gp, gp, 40
	la	a3, pretrace_pixels_2854
	sw	a3, 0(a1)
	lw	a3, 12(sp)
	sw	a3, 36(a1)
	sw	a5, 32(a1)
	sw	t2, 28(a1)
	lw	a3, 96(sp)
	sw	a3, 24(a1)
	lw	a3, 84(sp)
	sw	a3, 20(a1)
	sw	a4, 16(a1)
	lw	a5, 108(sp)
	sw	a5, 12(a1)
	sw	s8, 8(a1)
	lw	a5, 80(sp)
	sw	a5, 4(a1)
	mv	s4, gp
	addi	gp, gp, 28
	la	s8, pretrace_line_2861
	sw	s8, 0(s4)
	lw	s8, 104(sp)
	sw	s8, 24(s4)
	lw	s8, 100(sp)
	sw	s8, 20(s4)
	sw	a3, 16(s4)
	sw	a1, 12(s4)
	sw	s5, 8(s4)
	sw	a5, 4(s4)
	mv	a1, gp
	addi	gp, gp, 28
	la	s8, scan_pixel_2865
	sw	s8, 0(a1)
	sw	s7, 24(a1)
	sw	s6, 20(a1)
	sw	a4, 16(a1)
	sw	s1, 12(a1)
	sw	s5, 8(a1)
	sw	s2, 4(a1)
	mv	a4, gp
	addi	gp, gp, 16
	la	s1, scan_line_2871
	sw	s1, 0(a4)
	sw	a1, 12(a4)
	sw	s4, 8(a4)
	sw	s5, 4(a4)
	mv	a1, gp
	addi	gp, gp, 8
	la	s1, create_pixelline_2884
	sw	s1, 0(a1)
	sw	s5, 4(a1)
	mv	s1, gp
	addi	gp, gp, 8
	la	s2, calc_dirvec_2891
	sw	s2, 0(s1)
	sw	a6, 4(s1)
	mv	s2, gp
	addi	gp, gp, 8
	la	s6, calc_dirvecs_2899
	sw	s6, 0(s2)
	sw	s1, 4(s2)
	mv	s1, gp
	addi	gp, gp, 8
	la	s6, calc_dirvec_rows_2904
	sw	s6, 0(s1)
	sw	s2, 4(s1)
	mv	s2, gp
	addi	gp, gp, 8
	la	s6, create_dirvecs_2913
	sw	s6, 0(s2)
	sw	a6, 4(s2)
	mv	s6, gp
	addi	gp, gp, 8
	la	s7, init_dirvec_constants_2915
	sw	s7, 0(s6)
	lw	s7, 144(sp)
	sw	s7, 4(s6)
	mv	s8, gp
	addi	gp, gp, 16
	la	s9, init_vecset_constants_2918
	sw	s9, 0(s8)
	sw	s7, 12(s8)
	sw	s6, 8(s8)
	sw	a6, 4(s8)
	mv	a6, gp
	addi	gp, gp, 20
	la	s6, setup_rect_reflection_2929
	sw	s6, 0(a6)
	lw	s6, 136(sp)
	sw	s6, 16(a6)
	sw	a0, 12(a6)
	sw	a7, 8(a6)
	sw	s7, 4(a6)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, setup_surface_reflection_2932
	sw	s10, 0(s9)
	sw	s6, 16(s9)
	sw	a0, 12(s9)
	sw	a7, 8(s9)
	sw	s7, 4(s9)
	mv	a0, gp
	addi	gp, gp, 16
	la	s6, setup_reflections_2935
	sw	s6, 0(a0)
	sw	s9, 12(a0)
	sw	a6, 8(a0)
	sw	s3, 4(a0)
	mv	s11, gp
	addi	gp, gp, 68
	la	a6, rt_2937
	sw	a6, 0(s11)
	sw	a2, 64(s11)
	lw	a2, 124(sp)
	sw	a2, 60(s11)
	sw	a0, 56(s11)
	sw	a3, 52(s11)
	sw	a4, 48(s11)
	lw	a0, 140(sp)
	sw	a0, 44(s11)
	sw	s4, 40(s11)
	lw	a0, 128(sp)
	sw	a0, 36(s11)
	sw	a7, 32(s11)
	sw	s7, 28(s11)
	sw	s8, 24(s11)
	sw	s5, 20(s11)
	sw	a5, 16(s11)
	sw	a1, 12(s11)
	sw	s2, 8(s11)
	sw	s1, 4(s11)
	li	a0, 128
	li	a1, 128
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	ra, 148(sp)
	addi	sp, sp, 152
#	main program ends
end:
	b	end
veccpy_2482:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_2482_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecunit_sgn_2485:
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
	fli	fa1, l_8313
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10477
	bne	a1, zero, beq_else_10479
	fli	fa1, l_8314
	fdiv	fa0, fa1, fa0
	b	beq_cont_10480
beq_else_10479:
	fli	fa1, l_8315
	fdiv	fa0, fa1, fa0
beq_cont_10480:
	b	beq_cont_10478
beq_else_10477:
	fli	fa0, l_8314
beq_cont_10478:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2485_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod_2488:
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
veciprod_2488_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod2_2491:
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
veciprod2_2491_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccum_2496:
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
vecaccum_2496_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecadd_2500:
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
vecadd_2500_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecscale_2503:
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
vecscale_2503_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccumv_2506:
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
vecaccumv_2506_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
read_screen_settings_2583:
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
	fli	fa1, l_8370
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
	fli	fa3, l_8371
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8373
	flw	fa4, 32(sp)
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 40(sp)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_8313
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
read_screen_settings_2583_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
read_light_2585:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 8(s11)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_8370
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
read_light_2585_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
rotate_quadratic_matrix_2587:
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
	fli	fs5, l_8407
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
rotate_quadratic_matrix_2587_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
read_nth_object_2590:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_10489
	li	a0, 0
	b	read_nth_object_2590_ret
beq_else_10489:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_8313
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
	bne	a1, zero, beq_else_10490
	b	beq_cont_10491
beq_else_10490:
	sw	a0, 48(sp)
	call	min_caml_read_float
	fli	fa1, l_8370
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
beq_cont_10491:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10492
	li	a2, 1
	b	beq_cont_10493
beq_else_10492:
	lw	a2, 36(sp)
beq_cont_10493:
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
	bne	a4, t6, beq_else_10494
	flw	fa0, 0(a2)
	flw	fa1, 24(sp)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10496
	bne	a1, zero, beq_else_10498
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10500
	fli	fa2, l_8314
	b	beq_cont_10501
beq_else_10500:
	fli	fa2, l_8315
beq_cont_10501:
	b	beq_cont_10499
beq_else_10498:
	fli	fa2, l_8313
beq_cont_10499:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10497
beq_else_10496:
	fli	fa0, l_8313
beq_cont_10497:
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10502
	bne	a1, zero, beq_else_10504
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10506
	fli	fa2, l_8314
	b	beq_cont_10507
beq_else_10506:
	fli	fa2, l_8315
beq_cont_10507:
	b	beq_cont_10505
beq_else_10504:
	fli	fa2, l_8313
beq_cont_10505:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10503
beq_else_10502:
	fli	fa0, l_8313
beq_cont_10503:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10508
	bne	a1, zero, beq_else_10510
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10512
	fli	fa1, l_8314
	b	beq_cont_10513
beq_else_10512:
	fli	fa1, l_8315
beq_cont_10513:
	b	beq_cont_10511
beq_else_10510:
	fli	fa1, l_8313
beq_cont_10511:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	beq_cont_10509
beq_else_10508:
	fli	fa0, l_8313
beq_cont_10509:
	fsw	fa0, 8(a2)
	b	beq_cont_10495
beq_else_10494:
	li	t6, 2
	bne	a4, t6, beq_cont_10514
	lw	a1, 36(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2485
beq_cont_10514:
beq_cont_10495:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_10515
	b	beq_cont_10516
beq_else_10515:
	lw	a0, 28(sp)
	lw	a1, 48(sp)
	call	rotate_quadratic_matrix_2587
beq_cont_10516:
	li	a0, 1
read_nth_object_2590_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
read_object_2592:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	lw	a1, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_10517
	b	read_object_2592_ret
bge_else_10517:
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10519
	lda	a0, min_caml_n_objects
	lw	a1, 4(sp)
	sw	a1, 0(a0)
	b	read_object_2592_ret
beq_else_10519:
	lw	a0, 4(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2592_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_net_item_2596:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, beq_else_10521
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2596_ret
beq_else_10521:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2596
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2596_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_or_network_2598:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2596
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_10522
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2598_ret
beq_else_10522:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2598
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2598_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_and_network_2600:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 4(s11)
	li	a2, 0
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item_2596
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_10523
	b	read_and_network_2600_ret
beq_else_10523:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2600_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_parameter_2602:
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
	call	read_or_network_2598
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2602_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
solver_rect_surface_2604:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_8313
	feq	a6, fa3, fa4
	bne	a6, zero, beq_else_10526
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
	bne	a6, zero, beq_cont_10527
	fneg	fa3, fa3
beq_cont_10527:
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
	bne	a2, zero, beq_else_10528
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
	bne	a0, zero, beq_else_10529
	fsw	fa0, 0(a5)
	li	a0, 1
	b	solver_rect_surface_2604_ret
beq_else_10529:
	li	a0, 0
	b	solver_rect_surface_2604_ret
beq_else_10528:
	li	a0, 0
	b	solver_rect_surface_2604_ret
beq_else_10526:
	li	a0, 0
solver_rect_surface_2604_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_2613:
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
	bne	a0, zero, beq_else_10530
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
	bne	a0, zero, beq_else_10531
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
	bne	a0, zero, beq_else_10532
	li	a0, 0
	b	solver_rect_2613_ret
beq_else_10532:
	li	a0, 3
	b	solver_rect_2613_ret
beq_else_10531:
	li	a0, 2
	b	solver_rect_2613_ret
beq_else_10530:
	li	a0, 1
solver_rect_2613_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_surface_2619:
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
	call	veciprod_2488
	fli	fa1, l_8313
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10533
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	veciprod2_2491
	fneg	fa0, fa0
	flw	fa1, 20(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_2619_ret
beq_else_10533:
	li	a0, 0
solver_surface_2619_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
quadratic_2625:
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
	bne	a0, zero, beq_else_10534
	fmv	fa0, fa3
	b	quadratic_2625_ret
beq_else_10534:
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
quadratic_2625_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
bilinear_2630:
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
	bne	a0, zero, beq_else_10535
	fmv	fa0, fa6
	b	bilinear_2630_ret
beq_else_10535:
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
	fli	fa1, l_8407
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_2630_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_2638:
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
	call	quadratic_2625
	fli	fa1, l_8313
	feq	a0, fa0, fa1
	bne	a0, zero, beq_else_10536
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
	call	bilinear_2630
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 32(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	quadratic_2625
	lw	a0, 16(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10537
	fli	fa1, l_8314
	fsub	fa0, fa0, fa1
beq_cont_10537:
	flw	fa1, 32(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 28(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 24(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10538
	fsqrt	fa0, fa0
	bne	a1, zero, beq_cont_10539
	fneg	fa0, fa0
beq_cont_10539:
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2638_ret
beq_else_10538:
	li	a0, 0
	b	solver_second_2638_ret
beq_else_10536:
	li	a0, 0
solver_second_2638_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
solver_2644:
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
	bne	a7, t6, beq_else_10540
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2644_ret
beq_else_10540:
	li	t6, 2
	bne	a7, t6, beq_else_10541
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2644_ret
beq_else_10541:
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2644_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_fast_2648:
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
	bne	a4, zero, beq_else_10542
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10544
	flw	fa4, 4(a2)
	fli	fa5, l_8313
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
	b	beq_cont_10545
beq_else_10544:
	li	a4, 0
beq_cont_10545:
	b	beq_cont_10543
beq_else_10542:
	li	a4, 0
beq_cont_10543:
	bne	a4, zero, beq_else_10546
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
	bne	a4, zero, beq_else_10547
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10549
	flw	fa4, 12(a2)
	fli	fa5, l_8313
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
	b	beq_cont_10550
beq_else_10549:
	li	a4, 0
beq_cont_10550:
	b	beq_cont_10548
beq_else_10547:
	li	a4, 0
beq_cont_10548:
	bne	a4, zero, beq_else_10551
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
	bne	a4, zero, beq_else_10552
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10554
	flw	fa0, 20(a2)
	fli	fa1, l_8313
	feq	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10555
beq_else_10554:
	li	a0, 0
beq_cont_10555:
	b	beq_cont_10553
beq_else_10552:
	li	a0, 0
beq_cont_10553:
	bne	a0, zero, beq_else_10556
	li	a0, 0
	b	solver_rect_fast_2648_ret
beq_else_10556:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2648_ret
beq_else_10551:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2648_ret
beq_else_10546:
	fsw	fa3, 0(a3)
	li	a0, 1
solver_rect_fast_2648_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast_2655:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa3, l_8313
	flw	fa4, 0(a1)
	fle	a2, fa3, fa4
	bne	a2, zero, beq_else_10557
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
	b	solver_surface_fast_2655_ret
beq_else_10557:
	li	a0, 0
solver_surface_fast_2655_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast_2661:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8313
	feq	a3, fa3, fa4
	bne	a3, zero, beq_else_10558
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
	call	quadratic_2625
	lw	a0, 20(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10559
	fli	fa1, l_8314
	fsub	fa0, fa0, fa1
beq_cont_10559:
	flw	fa1, 16(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 12(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 8(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10560
	bne	a1, zero, beq_else_10561
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_10562
beq_else_10561:
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_10562:
	li	a0, 1
	b	solver_second_fast_2661_ret
beq_else_10560:
	li	a0, 0
	b	solver_second_fast_2661_ret
beq_else_10558:
	li	a0, 0
solver_second_fast_2661_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_fast_2667:
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
	bne	s1, t6, beq_else_10563
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2667_ret
beq_else_10563:
	li	t6, 2
	bne	s1, t6, beq_else_10564
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2667_ret
beq_else_10564:
	mv	a1, a2
	mv	a0, a6
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2667_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast2_2671:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa0, l_8313
	flw	fa1, 0(a1)
	fle	a3, fa0, fa1
	bne	a3, zero, beq_else_10565
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast2_2671_ret
beq_else_10565:
	li	a0, 0
solver_surface_fast2_2671_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast2_2678:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8313
	feq	a4, fa3, fa4
	bne	a4, zero, beq_else_10566
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
	bne	a2, zero, beq_else_10567
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10568
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_10569
beq_else_10568:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_10569:
	li	a0, 1
	b	solver_second_fast2_2678_ret
beq_else_10567:
	li	a0, 0
	b	solver_second_fast2_2678_ret
beq_else_10566:
	li	a0, 0
solver_second_fast2_2678_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2685:
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
	bne	a7, t6, beq_else_10570
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2685_ret
beq_else_10570:
	li	t6, 2
	bne	a7, t6, beq_else_10571
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2685_ret
beq_else_10571:
	mv	a2, a6
	mv	a1, a0
	mv	s11, a3
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2685_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2688:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 6
	fli	fa0, l_8313
	sw	a1, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_float_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(sp)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10572
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_cont_10574
	fneg	fa0, fa0
beq_cont_10574:
	fsw	fa0, 0(a0)
	fli	fa0, l_8314
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 4(a0)
	b	beq_cont_10573
beq_else_10572:
	fsw	fa1, 4(a0)
beq_cont_10573:
	flw	fa0, 4(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10575
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_cont_10577
	fneg	fa0, fa0
beq_cont_10577:
	fsw	fa0, 8(a0)
	fli	fa0, l_8314
	flw	fa2, 4(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 12(a0)
	b	beq_cont_10576
beq_else_10575:
	fsw	fa1, 12(a0)
beq_cont_10576:
	flw	fa0, 8(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10578
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_cont_10580
	fneg	fa0, fa0
beq_cont_10580:
	fsw	fa0, 16(a0)
	fli	fa0, l_8314
	flw	fa1, 8(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_10579
beq_else_10578:
	fsw	fa1, 20(a0)
beq_cont_10579:
setup_rect_table_2688_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_surface_table_2691:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 4
	fli	fa0, l_8313
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
	bne	a1, zero, beq_else_10581
	fli	fa1, l_8315
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
	b	beq_cont_10582
beq_else_10581:
	fsw	fa1, 0(a0)
beq_cont_10582:
setup_surface_table_2691_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_second_table_2694:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	li	a2, 5
	fli	fa0, l_8313
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
	call	quadratic_2625
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
	bne	a1, zero, beq_else_10583
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_10584
beq_else_10583:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_8407
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
beq_cont_10584:
	flw	fa1, 0(sp)
	feq	a0, fa0, fa1
	bne	a0, zero, beq_cont_10585
	fli	fa1, l_8314
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
beq_cont_10585:
	mv	a0, a3
setup_second_table_2694_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
iter_setup_dirvec_constants_2697:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a2, 4(s11)
	blt	a1, zero, iter_setup_dirvec_constants_2697_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_10586
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2688
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10587
beq_else_10586:
	li	t6, 2
	bne	a5, t6, beq_else_10588
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2691
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10589
beq_else_10588:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2694
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_10589:
beq_cont_10587:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_setup_dirvec_constants_2697_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
setup_startp_constants_2702:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a2, 4(s11)
	blt	a1, zero, setup_startp_constants_2702_ret
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
	bne	a6, t6, beq_else_10590
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2491
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_10591
beq_else_10590:
	li	t6, 2
	bgt	a6, t6, ble_else_10592
	b	ble_cont_10593
ble_else_10592:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2625
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_cont_10594
	fli	fa1, l_8314
	fsub	fa0, fa0, fa1
beq_cont_10594:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_10593:
beq_cont_10591:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_constants_2702_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2707:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, beq_else_10595
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	a2, fa0, fa1
	bne	a2, zero, beq_else_10597
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10598
beq_else_10597:
	li	a0, 0
beq_cont_10598:
	b	beq_cont_10596
beq_else_10595:
	li	a0, 0
beq_cont_10596:
	bne	a0, zero, beq_else_10599
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2707_ret
beq_else_10599:
	mv	a0, a1
is_rect_outside_2707_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_second_outside_2717:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)
	call	quadratic_2625
	lw	a0, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10600
	fli	fa1, l_8314
	fsub	fa0, fa0, fa1
beq_cont_10600:
	fli	fa1, l_8313
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_2717_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
is_outside_2722:
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
	bne	a4, t6, beq_else_10601
	call	is_rect_outside_2707
	b	is_outside_2722_ret
beq_else_10601:
	li	t6, 2
	bne	a4, t6, beq_else_10602
	sw	a1, 0(sp)
	mv	a0, a3
	call	veciprod2_2491
	fli	fa1, l_8313
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
	b	is_outside_2722_ret
beq_else_10602:
	call	is_second_outside_2717
is_outside_2722_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
check_all_inside_2727:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_10603
	li	a0, 1
	b	check_all_inside_2727_ret
beq_else_10603:
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
	call	is_outside_2722
	bne	a0, zero, beq_else_10604
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2727_ret
beq_else_10604:
	li	a0, 0
check_all_inside_2727_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_and_group_2733:
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
	bne	s2, t6, beq_else_10605
	li	a0, 0
	b	shadow_check_and_group_2733_ret
beq_else_10605:
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
	bne	a0, zero, beq_else_10606
	li	a0, 0
	b	beq_cont_10607
beq_else_10606:
	fli	fa1, l_8647
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_10607:
	bne	a0, zero, beq_else_10608
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10609
	li	a0, 0
	b	shadow_check_and_group_2733_ret
beq_else_10609:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2733_ret
beq_else_10608:
	fli	fa1, l_8648
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
	bne	a0, zero, beq_else_10610
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2733_ret
beq_else_10610:
	li	a0, 1
shadow_check_and_group_2733_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
shadow_check_one_or_group_2736:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	t6, -1
	bne	a4, t6, beq_else_10611
	li	a0, 0
	b	shadow_check_one_or_group_2736_ret
beq_else_10611:
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
	bne	a0, zero, beq_else_10612
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2736_ret
beq_else_10612:
	li	a0, 1
shadow_check_one_or_group_2736_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
shadow_check_one_or_matrix_2739:
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
	bne	s1, t6, beq_else_10613
	li	a0, 0
	b	shadow_check_one_or_matrix_2739_ret
beq_else_10613:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10614
	li	a0, 1
	b	beq_cont_10615
beq_else_10614:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10616
	li	a0, 0
	b	beq_cont_10617
beq_else_10616:
	fli	fa0, l_8660
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10618
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10620
	li	a0, 0
	b	beq_cont_10621
beq_else_10620:
	li	a0, 1
beq_cont_10621:
	b	beq_cont_10619
beq_else_10618:
	li	a0, 0
beq_cont_10619:
beq_cont_10617:
beq_cont_10615:
	bne	a0, zero, beq_else_10622
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2739_ret
beq_else_10622:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10623
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2739_ret
beq_else_10623:
	li	a0, 1
shadow_check_one_or_matrix_2739_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_2742:
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
	bne	s5, t6, beq_else_10624
	b	solve_each_element_2742_ret
beq_else_10624:
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
	bne	a0, zero, beq_else_10626
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10627
	b	solve_each_element_2742_ret
beq_else_10627:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2742_ret
beq_else_10626:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8313
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10629
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10630
	fli	fa1, l_8648
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
	bne	a0, zero, beq_else_10631
	b	beq_cont_10632
beq_else_10631:
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
beq_cont_10632:
beq_cont_10630:
beq_cont_10629:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2742_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
solve_one_or_network_2746:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10633
	b	solve_one_or_network_2746_ret
beq_else_10633:
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
solve_one_or_network_2746_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_2750:
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
	bne	s2, t6, beq_else_10635
	b	trace_or_matrix_2750_ret
beq_else_10635:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_10637
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10638
beq_else_10637:
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
	bne	a0, zero, beq_else_10639
	b	beq_cont_10640
beq_else_10639:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10641
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10641:
beq_cont_10640:
beq_cont_10638:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2750_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_2754:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8684
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
	fli	fa1, l_8660
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10642
	fli	fa1, l_8688
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_2754_ret
beq_else_10642:
	li	a0, 0
judge_intersection_2754_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solve_each_element_fast_2756:
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
	bne	s6, t6, beq_else_10643
	b	solve_each_element_fast_2756_ret
beq_else_10643:
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
	bne	a0, zero, beq_else_10645
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10646
	b	solve_each_element_fast_2756_ret
beq_else_10646:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2756_ret
beq_else_10645:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8313
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10648
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10649
	fli	fa1, l_8648
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
	bne	a0, zero, beq_else_10650
	b	beq_cont_10651
beq_else_10650:
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
beq_cont_10651:
beq_cont_10649:
beq_cont_10648:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2756_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
solve_one_or_network_fast_2760:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10652
	b	solve_one_or_network_fast_2760_ret
beq_else_10652:
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
solve_one_or_network_fast_2760_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_fast_2764:
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
	bne	s1, t6, beq_else_10654
	b	trace_or_matrix_fast_2764_ret
beq_else_10654:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10656
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10657
beq_else_10656:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10658
	b	beq_cont_10659
beq_else_10658:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10660
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10660:
beq_cont_10659:
beq_cont_10657:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2764_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_fast_2768:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8684
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
	fli	fa1, l_8660
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10661
	fli	fa1, l_8688
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_fast_2768_ret
beq_else_10661:
	li	a0, 0
judge_intersection_fast_2768_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
get_nvector_rect_2770:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lw	a2, 0(a2)
	fli	fa0, l_8313
	fsw	fa0, 0(a1)
	fsw	fa0, 4(a1)
	fsw	fa0, 8(a1)
	addi	a2, a2, -1
	slli	a3, a2, 2
	add	t6, a0, a3
	flw	fa1, 0(t6)
	feq	a0, fa1, fa0
	bne	a0, zero, beq_else_10662
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10664
	fli	fa0, l_8314
	b	beq_cont_10665
beq_else_10664:
	fli	fa0, l_8315
beq_cont_10665:
	b	beq_cont_10663
beq_else_10662:
	fli	fa0, l_8313
beq_cont_10663:
	fneg	fa0, fa0
	slli	a0, a2, 2
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2770_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_plane_2772:
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
get_nvector_plane_2772_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_second_2774:
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
	bne	a0, zero, beq_else_10668
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_10669
beq_else_10668:
	flw	fa6, 8(a3)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_8407
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
beq_cont_10669:
	mv	a0, a1
	mv	a1, a4
	call	vecunit_sgn_2485
get_nvector_second_2774_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
utexture_2779:
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
	bne	a0, t6, beq_else_10670
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fli	fa1, l_8785
	fmul	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8786
	fmul	fa0, fa0, fa1
	fli	fa2, l_8775
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
	bne	a1, zero, beq_else_10671
	bne	a0, zero, beq_else_10673
	fli	fa0, l_8768
	b	beq_cont_10674
beq_else_10673:
	fli	fa0, l_8313
beq_cont_10674:
	b	beq_cont_10672
beq_else_10671:
	bne	a0, zero, beq_else_10675
	fli	fa0, l_8313
	b	beq_cont_10676
beq_else_10675:
	fli	fa0, l_8768
beq_cont_10676:
beq_cont_10672:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2779_ret
beq_else_10670:
	li	t6, 2
	bne	a0, t6, beq_else_10678
	flw	fa0, 4(a1)
	fli	fa1, l_8779
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
	fli	fa1, l_8768
	fmul	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8314
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2779_ret
beq_else_10678:
	li	t6, 3
	bne	a0, t6, beq_else_10680
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
	fli	fa1, l_8775
	fdiv	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 44(sp)
	call	min_caml_floor
	flw	fa1, 44(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8761
	fmul	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 52(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 52(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8768
	fmul	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_8314
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2779_ret
beq_else_10680:
	li	t6, 4
	bne	a0, t6, utexture_2779_ret
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
	fli	fa3, l_8759
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	sw	a2, 0(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 60(sp)
	sw	a5, 64(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	bne	a0, zero, beq_else_10682
	fli	fa0, l_8762
	b	beq_cont_10683
beq_else_10682:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8760
	fmul	fa0, fa0, fa1
	fli	fa1, l_8761
	fdiv	fa0, fa0, fa1
beq_cont_10683:
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
	bne	a0, zero, beq_else_10684
	fli	fa0, l_8762
	b	beq_cont_10685
beq_else_10684:
	fdiv	fa1, fa1, fa2
	fabs	fa1, fa1
	fmv	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8760
	fmul	fa0, fa0, fa1
	fli	fa1, l_8761
	fdiv	fa0, fa0, fa1
beq_cont_10685:
	fsw	fa0, 76(sp)
	call	min_caml_floor
	flw	fa1, 76(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8766
	fli	fa2, l_8767
	flw	fa3, 72(sp)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fli	fa1, l_8313
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10686
	fli	fa0, l_8313
beq_cont_10686:
	fli	fa1, l_8768
	fmul	fa0, fa1, fa0
	fli	fa1, l_8769
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
utexture_2779_ret:
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
add_light_2782:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_8313
	fle	a2, fa0, fa3
	sw	a0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa1, 12(sp)
	bne	a2, zero, beq_cont_10688
	call	vecaccum_2496
beq_cont_10688:
	flw	fa0, 8(sp)
	flw	fa1, 12(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, add_light_2782_ret
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
add_light_2782_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_reflections_2786:
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
	blt	a0, zero, trace_reflections_2786_ret
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
	bne	a0, zero, beq_else_10690
	b	beq_cont_10691
beq_else_10690:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	bne	a0, a1, beq_cont_10692
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10693
	lw	a0, 32(sp)
	lw	a1, 0(a0)
	lw	a0, 28(sp)
	sw	a1, 56(sp)
	call	veciprod_2488
	flw	fa1, 20(sp)
	flw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 16(sp)
	lw	a1, 56(sp)
	fsw	fa0, 60(sp)
	call	veciprod_2488
	flw	fa1, 24(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, 60(sp)
	flw	fa2, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10693:
beq_cont_10692:
beq_cont_10691:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 20(sp)
	flw	fa1, 8(sp)
	lw	a1, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_reflections_2786_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
trace_ray_2791:
	addi	sp, sp, -168
	sw	ra, 164(sp)
	lw	a3, 92(s11)
	lw	a4, 88(s11)
	lw	a5, 84(s11)
	lw	a6, 80(s11)
	lw	a7, 76(s11)
	lw	s1, 72(s11)
	lw	s2, 68(s11)
	lw	s3, 64(s11)
	lw	s4, 60(s11)
	lw	s5, 56(s11)
	lw	s6, 52(s11)
	lw	s7, 48(s11)
	lw	s8, 44(s11)
	lw	s9, 40(s11)
	lw	s10, 36(s11)
	lw	tp, 32(s11)
	lw	t0, 28(s11)
	lw	t1, 24(s11)
	lw	t2, 20(s11)
	lw	t3, 16(s11)
	lw	t4, 12(s11)
	lw	t5, 8(s11)
	sw	s11, 0(sp)
	lw	s11, 4(s11)
	li	t6, 4
	bgt	a0, t6, trace_ray_2791_ret
	sw	a5, 4(sp)
	lw	a5, 28(a2)
	sw	a4, 8(sp)
	lw	a4, 16(a2)
	sw	s8, 12(sp)
	lw	s8, 12(a2)
	sw	s3, 16(sp)
	lw	s3, 8(a2)
	sw	a2, 20(sp)
	lw	a2, 4(a2)
	fsw	fa1, 24(sp)
	sw	a7, 28(sp)
	sw	s11, 32(sp)
	sw	s2, 36(sp)
	sw	s5, 40(sp)
	sw	s7, 44(sp)
	sw	a5, 48(sp)
	sw	a6, 52(sp)
	sw	a4, 56(sp)
	sw	s8, 60(sp)
	sw	a2, 64(sp)
	sw	tp, 68(sp)
	sw	a3, 72(sp)
	sw	t0, 76(sp)
	sw	s1, 80(sp)
	sw	t2, 84(sp)
	sw	t4, 88(sp)
	sw	t3, 92(sp)
	sw	s6, 96(sp)
	sw	t1, 100(sp)
	sw	s4, 104(sp)
	sw	t5, 108(sp)
	fsw	fa0, 112(sp)
	sw	s9, 116(sp)
	sw	a1, 120(sp)
	sw	s3, 124(sp)
	sw	a0, 128(sp)
	mv	a0, a1
	mv	s11, s10
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10694
	li	a0, -1
	lw	a1, 128(sp)
	slli	a2, a1, 2
	lw	a3, 124(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_10695
	b	trace_ray_2791_ret
beq_else_10695:
	lw	a0, 120(sp)
	lw	a1, 116(sp)
	call	veciprod_2488
	fneg	fa0, fa0
	fli	fa1, l_8313
	fle	a0, fa0, fa1
	bne	a0, zero, trace_ray_2791_ret
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	flw	fa1, 112(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 108(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 104(sp)
	flw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fadd	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fadd	fa0, fa1, fa0
	fsw	fa0, 8(a0)
	b	trace_ray_2791_ret
beq_else_10694:
	lw	a0, 100(sp)
	lw	a0, 0(a0)
	slli	a1, a0, 2
	lw	a2, 96(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 28(a1)
	lw	a3, 8(a1)
	lw	a4, 4(a1)
	flw	fa0, 0(a2)
	flw	fa1, 112(sp)
	fmul	fa0, fa0, fa1
	sw	a3, 132(sp)
	fsw	fa0, 136(sp)
	sw	a2, 140(sp)
	sw	a0, 144(sp)
	sw	a1, 148(sp)
	li	t6, 1
	bne	a4, t6, beq_else_10698
	lw	a4, 120(sp)
	lw	s11, 92(sp)
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10699
beq_else_10698:
	li	t6, 2
	bne	a4, t6, beq_else_10700
	lw	s11, 88(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10701
beq_else_10700:
	lw	s11, 84(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10701:
beq_cont_10699:
	lw	a0, 80(sp)
	lw	a1, 76(sp)
	call	veccpy_2482
	lw	a0, 148(sp)
	lw	a1, 76(sp)
	lw	s11, 72(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 144(sp)
	slli	a0, a0, 2
	lw	a1, 68(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 128(sp)
	slli	a2, a1, 2
	lw	a3, 124(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	slli	a0, a1, 2
	lw	a2, 64(sp)
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a2, 76(sp)
	mv	a1, a2
	call	veccpy_2482
	fli	fa0, l_8767
	lw	a0, 140(sp)
	flw	fa1, 0(a0)
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10702
	li	a1, 0
	lw	a2, 128(sp)
	slli	a3, a2, 2
	lw	a4, 60(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	b	beq_cont_10703
beq_else_10702:
	li	a1, 1
	lw	a2, 128(sp)
	slli	a3, a2, 2
	lw	a4, 60(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	slli	a1, a2, 2
	lw	a3, 56(sp)
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a4, 52(sp)
	mv	a0, a1
	mv	a1, a4
	call	veccpy_2482
	lw	a0, 128(sp)
	slli	a1, a0, 2
	lw	a2, 56(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8810
	flw	fa1, 136(sp)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2503
	lw	a0, 128(sp)
	slli	a1, a0, 2
	lw	a2, 48(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 44(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2482
beq_cont_10703:
	fli	fa0, l_8813
	lw	a0, 120(sp)
	lw	a1, 44(sp)
	fsw	fa0, 152(sp)
	call	veciprod_2488
	flw	fa1, 152(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 120(sp)
	lw	a1, 44(sp)
	call	vecaccum_2496
	lw	a0, 140(sp)
	flw	fa0, 4(a0)
	flw	fa1, 112(sp)
	fmul	fa0, fa1, fa0
	li	a1, 0
	lw	a2, 40(sp)
	lw	a2, 0(a2)
	lw	s11, 36(sp)
	fsw	fa0, 156(sp)
	mv	a0, a1
	mv	a1, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10704
	lw	a0, 44(sp)
	lw	a1, 116(sp)
	call	veciprod_2488
	fneg	fa0, fa0
	flw	fa1, 136(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 120(sp)
	lw	a1, 116(sp)
	fsw	fa0, 160(sp)
	call	veciprod_2488
	fneg	fa1, fa0
	flw	fa0, 160(sp)
	flw	fa2, 156(sp)
	lw	s11, 32(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10704:
	lw	a0, 28(sp)
	lw	a1, 76(sp)
	call	veccpy_2482
	lda	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 76(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	lw	a0, 12(sp)
	lw	a0, 0(a0)
	addi	a0, a0, -1
	flw	fa0, 136(sp)
	flw	fa1, 156(sp)
	lw	a1, 120(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	fli	fa0, l_8818
	flw	fa1, 112(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_2791_ret
	lw	a0, 128(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10705
	b	bge_cont_10706
bge_else_10705:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 124(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10706:
	lw	a1, 132(sp)
	li	t6, 2
	bne	a1, t6, beq_cont_10707
	fli	fa0, l_8314
	lw	a1, 140(sp)
	flw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	lw	a1, 4(sp)
	flw	fa1, 0(a1)
	flw	fa2, 24(sp)
	fadd	fa1, fa2, fa1
	lw	a1, 120(sp)
	lw	a2, 20(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10707:
trace_ray_2791_ret:
	lw	ra, 164(sp)
	addi	sp, sp, 168
	jr	ra
trace_diffuse_ray_2797:
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
	bne	a0, zero, beq_else_10709
	b	trace_diffuse_ray_2797_ret
beq_else_10709:
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
	bne	a3, t6, beq_else_10711
	lw	s11, 44(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10712
beq_else_10711:
	li	t6, 2
	bne	a3, t6, beq_else_10713
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10714
beq_else_10713:
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10714:
beq_cont_10712:
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
	bne	a0, zero, trace_diffuse_ray_2797_ret
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	veciprod_2488
	fneg	fa0, fa0
	fli	fa1, l_8313
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10715
	b	beq_cont_10716
beq_else_10715:
	fli	fa0, l_8313
beq_cont_10716:
	flw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 60(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2496
trace_diffuse_ray_2797_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays_2800:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a4, 4(s11)
	blt	a3, zero, iter_trace_diffuse_rays_2800_ret
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
	call	veciprod_2488
	fli	fa1, l_8313
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10717
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8838
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10718
beq_else_10717:
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8836
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10718:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_trace_diffuse_rays_2800_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent_2809:
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
	bne	a0, zero, beq_else_10719
	b	beq_cont_10720
beq_else_10719:
	lw	a7, 0(a6)
	sw	a7, 28(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2482
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
beq_cont_10720:
	lw	a0, 24(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10721
	b	beq_cont_10722
beq_else_10721:
	lw	a1, 20(sp)
	lw	a2, 4(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 32(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2482
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
beq_cont_10722:
	lw	a0, 24(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10723
	b	beq_cont_10724
beq_else_10723:
	lw	a1, 20(sp)
	lw	a2, 8(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 36(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2482
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
beq_cont_10724:
	lw	a0, 24(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10725
	b	beq_cont_10726
beq_else_10725:
	lw	a1, 20(sp)
	lw	a2, 12(a1)
	lw	a3, 16(sp)
	lw	a4, 12(sp)
	sw	a2, 40(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2482
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
beq_cont_10726:
	lw	a0, 24(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10727
	b	trace_diffuse_ray_80percent_2809_ret
beq_else_10727:
	lw	a0, 20(sp)
	lw	a0, 16(a0)
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	sw	a0, 44(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2482
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
trace_diffuse_ray_80percent_2809_ret:
	lw	ra, 48(sp)
	addi	sp, sp, 52
	jr	ra
calc_diffuse_using_1point_2813:
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
	call	veccpy_2482
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
	call	vecaccumv_2506
calc_diffuse_using_1point_2813_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_5points_2816:
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
	call	veccpy_2482
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2500
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2500
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2500
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2500
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
	call	vecaccumv_2506
calc_diffuse_using_5points_2816_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
do_without_neighbors_2822:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_2822_ret
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, do_without_neighbors_2822_ret
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10729
	b	beq_cont_10730
beq_else_10729:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10730:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
do_without_neighbors_2822_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_exist_2825:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10731
	li	a0, 0
	b	neighbors_exist_2825_ret
ble_else_10731:
	bgt	a1, zero, ble_else_10732
	li	a0, 0
	b	neighbors_exist_2825_ret
ble_else_10732:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10733
	li	a0, 0
	b	neighbors_exist_2825_ret
ble_else_10733:
	bgt	a0, zero, ble_else_10734
	li	a0, 0
	b	neighbors_exist_2825_ret
ble_else_10734:
	li	a0, 1
neighbors_exist_2825_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
neighbors_are_available_2832:
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
	bne	a1, a5, beq_else_10735
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10736
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10737
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10738
	li	a0, 1
	b	neighbors_are_available_2832_ret
beq_else_10738:
	li	a0, 0
	b	neighbors_are_available_2832_ret
beq_else_10737:
	li	a0, 0
	b	neighbors_are_available_2832_ret
beq_else_10736:
	li	a0, 0
	b	neighbors_are_available_2832_ret
beq_else_10735:
	li	a0, 0
neighbors_are_available_2832_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
try_exploit_neighbors_2838:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_2838_ret
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, try_exploit_neighbors_2838_ret
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
	call	neighbors_are_available_2832
	bne	a0, zero, beq_else_10739
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2838_ret
beq_else_10739:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10740
	b	beq_cont_10741
beq_else_10740:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10741:
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
try_exploit_neighbors_2838_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
write_ppm_header_2845:
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
write_ppm_header_2845_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
write_rgb_2849:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10742
	blt	a0, zero, bge_else_10744
	b	bge_cont_10745
bge_else_10744:
	li	a0, 0
bge_cont_10745:
	b	ble_cont_10743
ble_else_10742:
	li	a0, 255
ble_cont_10743:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
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
	flw	fa0, 8(a0)
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
	li	a0, 10
	call	min_caml_print_char
write_rgb_2849_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
pretrace_diffuse_rays_2851:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_2851_ret
	lw	a7, 28(a0)
	lw	s1, 24(a0)
	lw	s2, 20(a0)
	lw	s3, 12(a0)
	lw	s4, 8(a0)
	lw	s5, 4(a0)
	slli	s6, a1, 2
	add	t6, s4, s6
	lw	s4, 0(t6)
	blt	s4, zero, pretrace_diffuse_rays_2851_ret
	slli	s4, a1, 2
	add	t6, s3, s4
	lw	s3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s3, zero, beq_else_10754
	b	beq_cont_10755
beq_else_10754:
	lw	s1, 0(s1)
	fli	fa0, l_8313
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
	call	veccpy_2482
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
	call	veccpy_2482
beq_cont_10755:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_diffuse_rays_2851_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
pretrace_pixels_2854:
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
	blt	a1, zero, pretrace_pixels_2854_ret
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
	call	vecunit_sgn_2485
	fli	fa0, l_8313
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	fsw	fa0, 60(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2482
	li	a0, 0
	fli	fa0, l_8314
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
	call	veccpy_2482
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
	blt	a0, t6, bge_else_10756
	addi	a2, a0, -5
	b	bge_cont_10757
bge_else_10756:
	mv	a2, a0
bge_cont_10757:
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 36(sp)
	lw	a0, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_pixels_2854_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
pretrace_line_2861:
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
pretrace_line_2861_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
scan_pixel_2865:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_10758
	b	scan_pixel_2865_ret
ble_else_10758:
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
	call	veccpy_2482
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10760
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
	b	beq_cont_10761
beq_else_10760:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10761:
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
scan_pixel_2865_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
scan_line_2871:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10762
	b	scan_line_2871_ret
ble_else_10762:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10764
	b	ble_cont_10765
ble_else_10764:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10765:
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
	blt	a1, t6, bge_else_10766
	addi	a4, a1, -5
	b	bge_cont_10767
bge_else_10766:
	mv	a4, a1
bge_cont_10767:
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2871_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_float5x3array_2877:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a0, 3
	fli	fa0, l_8313
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
create_float5x3array_2877_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
create_pixel_2879:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	a0, 3
	fli	fa0, l_8313
	call	min_caml_create_float_array
	sw	a0, 0(sp)
	call	create_float5x3array_2877
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
	call	create_float5x3array_2877
	sw	a0, 16(sp)
	call	create_float5x3array_2877
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2877
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
create_pixel_2879_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
init_line_elements_2881:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, bge_else_10769
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2879
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, bge_else_10770
	sw	a0, 8(sp)
	call	create_pixel_2879
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2881
	b	init_line_elements_2881_ret
bge_else_10770:
	mv	a0, a3
	b	init_line_elements_2881_ret
bge_else_10769:
init_line_elements_2881_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_pixelline_2884:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2879
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	blt	a1, zero, bge_else_10771
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	call	create_pixel_2879
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2881
	b	create_pixelline_2884_ret
bge_else_10771:
create_pixelline_2884_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2888:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	fmul	fa0, fa0, fa0
	fli	fa2, l_8818
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_8314
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
adjust_position_2888_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
calc_dirvec_2891:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10772
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8314
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
	b	calc_dirvec_2891_ret
bge_else_10772:
	fsw	fa2, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	fsw	fa3, 16(sp)
	sw	a0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_2888
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 28(sp)
	call	adjust_position_2888
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
calc_dirvec_2891_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvecs_2899:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvecs_2899_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a3, 20(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8973
	fmul	fa0, fa0, fa1
	fli	fa2, l_8974
	fsub	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_8313
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
	fli	fa1, l_8818
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
	blt	a1, t6, bge_cont_10774
	addi	a1, a1, -5
bge_cont_10774:
	flw	fa0, 8(sp)
	lw	a2, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvecs_2899_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvec_rows_2904:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvec_rows_2904_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8973
	fmul	fa0, fa0, fa1
	fli	fa1, l_8974
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
	blt	a1, t6, bge_cont_10775
	addi	a1, a1, -5
bge_cont_10775:
	lw	a2, 8(sp)
	addi	a2, a2, 4
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_rows_2904_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvec_elements_2910:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	blt	a1, zero, create_dirvec_elements_2910_ret
	li	a2, 3
	fli	fa0, l_8313
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
	blt	a0, zero, create_dirvec_elements_2910_ret
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
	call	create_dirvec_elements_2910
create_dirvec_elements_2910_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_dirvecs_2913:
	addi	sp, sp, -40
	sw	ra, 36(sp)
	lw	a1, 4(s11)
	blt	a0, zero, create_dirvecs_2913_ret
	li	a2, 120
	li	a3, 3
	fli	fa0, l_8313
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
	call	create_dirvec_elements_2910
	lw	a0, 12(sp)
	addi	a0, a0, -1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
create_dirvecs_2913_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
init_dirvec_constants_2915:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	blt	a1, zero, init_dirvec_constants_2915_ret
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
	blt	a0, zero, init_dirvec_constants_2915_ret
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
init_dirvec_constants_2915_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
init_vecset_constants_2918:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, init_vecset_constants_2918_ret
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
	blt	a0, zero, init_vecset_constants_2918_ret
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
init_vecset_constants_2918_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
setup_rect_reflection_2929:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a0, a0, 2
	lw	a6, 0(a3)
	fli	fa0, l_8314
	lw	a1, 28(a1)
	flw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	flw	fa1, 0(a4)
	fneg	fa1, fa1
	flw	fa2, 4(a4)
	fneg	fa2, fa2
	flw	fa3, 8(a4)
	fneg	fa3, fa3
	addi	a1, a0, 1
	flw	fa4, 0(a4)
	li	a7, 3
	fli	fa5, l_8313
	sw	a3, 0(sp)
	fsw	fa1, 4(sp)
	fsw	fa5, 8(sp)
	sw	a4, 12(sp)
	sw	a0, 16(sp)
	sw	a2, 20(sp)
	sw	a6, 24(sp)
	sw	a1, 28(sp)
	fsw	fa0, 32(sp)
	sw	a5, 36(sp)
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
setup_rect_reflection_2929_ret:
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
setup_surface_reflection_2932:
	addi	sp, sp, -60
	sw	ra, 56(sp)
	lw	a2, 16(s11)
	lw	a3, 12(s11)
	lw	a4, 8(s11)
	lw	a5, 4(s11)
	slli	a0, a0, 2
	addi	a0, a0, 1
	lw	a6, 0(a3)
	fli	fa0, l_8314
	lw	a7, 28(a1)
	lw	a1, 16(a1)
	flw	fa1, 0(a7)
	fsub	fa0, fa0, fa1
	sw	a3, 0(sp)
	sw	a2, 4(sp)
	sw	a6, 8(sp)
	sw	a0, 12(sp)
	fsw	fa0, 16(sp)
	sw	a5, 20(sp)
	sw	a4, 24(sp)
	sw	a1, 28(sp)
	mv	a0, a4
	call	veciprod_2488
	fli	fa1, l_8407
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
	fli	fa1, l_8313
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
setup_surface_reflection_2932_ret:
	lw	ra, 56(sp)
	addi	sp, sp, 60
	jr	ra
setup_reflections_2935:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, setup_reflections_2935_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, setup_reflections_2935_ret
	fli	fa0, l_8314
	flw	fa1, 0(a4)
	fle	a4, fa0, fa1
	bne	a4, zero, setup_reflections_2935_ret
	li	t6, 1
	bne	a6, t6, beq_else_10778
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2935_ret
beq_else_10778:
	li	t6, 2
	bne	a6, t6, setup_reflections_2935_ret
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_reflections_2935_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
rt_2937:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	lw	a2, 64(s11)
	lw	a3, 60(s11)
	lw	a4, 56(s11)
	lw	a5, 52(s11)
	lw	a6, 48(s11)
	lw	a7, 44(s11)
	lw	s1, 40(s11)
	lw	s2, 36(s11)
	lw	s3, 32(s11)
	lw	s4, 28(s11)
	lw	s5, 24(s11)
	lw	s6, 20(s11)
	lw	s7, 16(s11)
	lw	s8, 12(s11)
	lw	s9, 8(s11)
	lw	s10, 4(s11)
	sw	a0, 0(s6)
	sw	a1, 4(s6)
	srai	s6, a0, 1
	sw	s6, 0(s7)
	srai	a1, a1, 1
	sw	a1, 4(s7)
	fli	fa0, l_9080
	sw	a6, 0(sp)
	sw	s1, 4(sp)
	sw	a4, 8(sp)
	sw	s2, 12(sp)
	sw	s4, 16(sp)
	sw	s3, 20(sp)
	sw	a3, 24(sp)
	sw	s5, 28(sp)
	sw	s10, 32(sp)
	sw	s9, 36(sp)
	sw	a2, 40(sp)
	sw	a7, 44(sp)
	sw	s8, 48(sp)
	sw	a5, 52(sp)
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
	call	veccpy_2482
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
rt_2937_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
	.data
l_9080:	# 128.000000
	.word	1124073472
l_8974:	# 0.900000
	.word	1063675494
l_8973:	# 0.200000
	.word	1045220557
l_8838:	# -150.000000
	.word	-1021968384
l_8836:	# 150.000000
	.word	1125515264
l_8818:	# 0.100000
	.word	1036831949
l_8813:	# -2.000000
	.word	-1073741824
l_8810:	# 0.003906
	.word	998244352
l_8786:	# 20.000000
	.word	1101004800
l_8785:	# 0.050000
	.word	1028443341
l_8779:	# 0.250000
	.word	1048576000
l_8775:	# 10.000000
	.word	1092616192
l_8769:	# 0.300000
	.word	1050253722
l_8768:	# 255.000000
	.word	1132396544
l_8767:	# 0.500000
	.word	1056964608
l_8766:	# 0.150000
	.word	1041865114
l_8762:	# 15.000000
	.word	1097859072
l_8761:	# 3.141593
	.word	1078530011
l_8760:	# 30.000000
	.word	1106247680
l_8759:	# 0.000100
	.word	953267991
l_8688:	# 100000000.000000
	.word	1287568416
l_8684:	# 1000000000.000000
	.word	1315859240
l_8660:	# -0.100000
	.word	-1110651699
l_8648:	# 0.010000
	.word	1008981770
l_8647:	# -0.200000
	.word	-1102263091
l_8407:	# 2.000000
	.word	1073741824
l_8373:	# -200.000000
	.word	-1018691584
l_8371:	# 200.000000
	.word	1128792064
l_8370:	# 0.017453
	.word	1016003125
l_8315:	# -1.000000
	.word	-1082130432
l_8314:	# 1.000000
	.word	1065353216
l_8313:	# 0.000000
	.word	0
min_caml_n_objects:
	.word	0
