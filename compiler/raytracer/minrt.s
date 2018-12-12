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
	fli	fa0, l_8287
	sw	a0, 0(sp)
	fsw	fa0, 4(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 12(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 16(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8742
	sw	a0, 20(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
	li	a1, 1
	li	a2, 0
	sw	a0, 44(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	li	a1, 1
	fli	fa0, l_8658
	sw	a0, 48(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 52(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 64(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 68(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 72(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 88(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 92(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 96(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 100(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 104(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 108(sp)
	mv	a0, a1
	call	min_caml_create_array
	li	a1, 0
	flw	fa0, 4(sp)
	sw	a0, 112(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 124(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
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
	la	a2, read_screen_settings_2585
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
	la	a7, read_light_2587
	sw	a7, 0(a6)
	lw	a7, 20(sp)
	sw	a7, 8(a6)
	lw	s1, 24(sp)
	sw	s1, 4(a6)
	mv	s2, gp
	addi	gp, gp, 8
	la	s3, read_nth_object_2592
	sw	s3, 0(s2)
	lw	s3, 8(sp)
	sw	s3, 4(s2)
	mv	s4, gp
	addi	gp, gp, 12
	la	s5, read_object_2594
	sw	s5, 0(s4)
	sw	s2, 8(s4)
	lw	s2, 0(sp)
	sw	s2, 4(s4)
	mv	s5, gp
	addi	gp, gp, 8
	la	s6, read_and_network_2602
	sw	s6, 0(s5)
	lw	s6, 32(sp)
	sw	s6, 4(s5)
	mv	s7, gp
	addi	gp, gp, 24
	la	s8, read_parameter_2604
	sw	s8, 0(s7)
	sw	a1, 20(s7)
	sw	s4, 16(s7)
	sw	a6, 12(s7)
	sw	s5, 8(s7)
	lw	a1, 40(sp)
	sw	a1, 4(s7)
	mv	a6, gp
	addi	gp, gp, 8
	la	s4, solver_rect_surface_2606
	sw	s4, 0(a6)
	lw	s4, 44(sp)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_rect_2615
	sw	s8, 0(s5)
	sw	a6, 4(s5)
	mv	a6, gp
	addi	gp, gp, 8
	la	s8, solver_surface_2621
	sw	s8, 0(a6)
	sw	s4, 4(a6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, solver_second_2640
	sw	s9, 0(s8)
	sw	s4, 4(s8)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, solver_2646
	sw	s10, 0(s9)
	sw	a6, 16(s9)
	sw	s8, 12(s9)
	sw	s5, 8(s9)
	sw	s3, 4(s9)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, solver_rect_fast_2650
	sw	s5, 0(a6)
	sw	s4, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast_2657
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s10, solver_second_fast_2663
	sw	s10, 0(s8)
	sw	s4, 4(s8)
	mv	s10, gp
	addi	gp, gp, 20
	la	s11, solver_fast_2669
	sw	s11, 0(s10)
	sw	s5, 16(s10)
	sw	s8, 12(s10)
	sw	a6, 8(s10)
	sw	s3, 4(s10)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, solver_surface_fast2_2673
	sw	s8, 0(s5)
	sw	s4, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, solver_second_fast2_2680
	sw	s11, 0(s8)
	sw	s4, 4(s8)
	mv	s11, gp
	addi	gp, gp, 20
	la	tp, solver_fast2_2687
	sw	tp, 0(s11)
	sw	s5, 16(s11)
	sw	s8, 12(s11)
	sw	a6, 8(s11)
	sw	s3, 4(s11)
	mv	a6, gp
	addi	gp, gp, 8
	la	s5, iter_setup_dirvec_constants_2699
	sw	s5, 0(a6)
	sw	s3, 4(a6)
	mv	s5, gp
	addi	gp, gp, 8
	la	s8, setup_startp_constants_2704
	sw	s8, 0(s5)
	sw	s3, 4(s5)
	mv	s8, gp
	addi	gp, gp, 8
	la	tp, check_all_inside_2729
	sw	tp, 0(s8)
	sw	s3, 4(s8)
	mv	tp, gp
	addi	gp, gp, 32
	la	t0, shadow_check_and_group_2735
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
	la	t3, shadow_check_one_or_group_2738
	sw	t3, 0(t2)
	sw	tp, 8(t2)
	sw	s6, 4(t2)
	mv	tp, gp
	addi	gp, gp, 24
	la	t3, shadow_check_one_or_matrix_2741
	sw	t3, 0(tp)
	sw	s10, 20(tp)
	sw	s4, 16(tp)
	sw	t2, 12(tp)
	sw	t0, 8(tp)
	sw	t1, 4(tp)
	mv	s10, gp
	addi	gp, gp, 40
	la	t2, solve_each_element_2744
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
	la	s7, solve_one_or_network_2748
	sw	s7, 0(t0)
	sw	s10, 8(t0)
	sw	s6, 4(t0)
	mv	s7, gp
	addi	gp, gp, 24
	la	s10, trace_or_matrix_2752
	sw	s10, 0(s7)
	sw	t2, 20(s7)
	sw	t3, 16(s7)
	sw	s4, 12(s7)
	sw	s9, 8(s7)
	sw	t0, 4(s7)
	mv	s9, gp
	addi	gp, gp, 16
	la	s10, judge_intersection_2756
	sw	s10, 0(s9)
	sw	s7, 12(s9)
	sw	t2, 8(s9)
	sw	a1, 4(s9)
	mv	s7, gp
	addi	gp, gp, 40
	la	s10, solve_each_element_fast_2758
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
	la	t0, solve_one_or_network_fast_2762
	sw	t0, 0(s8)
	sw	s7, 8(s8)
	sw	s6, 4(s8)
	mv	s6, gp
	addi	gp, gp, 20
	la	s7, trace_or_matrix_fast_2766
	sw	s7, 0(s6)
	sw	t2, 16(s6)
	sw	s11, 12(s6)
	sw	s4, 8(s6)
	sw	s8, 4(s6)
	mv	s4, gp
	addi	gp, gp, 16
	la	s7, judge_intersection_fast_2770
	sw	s7, 0(s4)
	sw	s6, 12(s4)
	sw	t2, 8(s4)
	sw	a1, 4(s4)
	mv	s6, gp
	addi	gp, gp, 12
	la	s7, get_nvector_rect_2772
	sw	s7, 0(s6)
	lw	s7, 64(sp)
	sw	s7, 8(s6)
	sw	t4, 4(s6)
	mv	s8, gp
	addi	gp, gp, 8
	la	s11, get_nvector_plane_2774
	sw	s11, 0(s8)
	sw	s7, 4(s8)
	mv	s11, gp
	addi	gp, gp, 12
	la	t0, get_nvector_second_2776
	sw	t0, 0(s11)
	sw	s7, 8(s11)
	sw	t1, 4(s11)
	mv	t0, gp
	addi	gp, gp, 8
	sw	a6, 148(sp)
	la	a6, utexture_2781
	sw	a6, 0(t0)
	lw	a6, 68(sp)
	sw	a6, 4(t0)
	mv	a4, gp
	addi	gp, gp, 12
	la	a3, add_light_2784
	sw	a3, 0(a4)
	sw	a6, 8(a4)
	lw	a3, 76(sp)
	sw	a3, 4(a4)
	mv	a5, gp
	addi	gp, gp, 36
	la	a2, trace_reflections_2788
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
	la	s4, trace_ray_2793
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
	la	a5, trace_diffuse_ray_2799
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
	la	a6, iter_trace_diffuse_rays_2802
	sw	a6, 0(a5)
	sw	a4, 4(a5)
	mv	a4, gp
	addi	gp, gp, 24
	la	a6, trace_diffuse_ray_80percent_2811
	sw	a6, 0(a4)
	sw	s10, 20(a4)
	sw	s5, 16(a4)
	sw	s2, 12(a4)
	sw	a5, 8(a4)
	lw	a6, 120(sp)
	sw	a6, 4(a4)
	mv	s1, gp
	addi	gp, gp, 16
	la	s4, calc_diffuse_using_1point_2815
	sw	s4, 0(s1)
	sw	a4, 12(s1)
	sw	a3, 8(s1)
	sw	a1, 4(s1)
	mv	a4, gp
	addi	gp, gp, 12
	la	s4, calc_diffuse_using_5points_2818
	sw	s4, 0(a4)
	sw	a3, 8(a4)
	sw	a1, 4(a4)
	mv	s4, gp
	addi	gp, gp, 8
	la	s6, do_without_neighbors_2824
	sw	s6, 0(s4)
	sw	s1, 4(s4)
	mv	s1, gp
	addi	gp, gp, 8
	la	s6, neighbors_exist_2827
	sw	s6, 0(s1)
	lw	s6, 80(sp)
	sw	s6, 4(s1)
	mv	s7, gp
	addi	gp, gp, 12
	la	s8, try_exploit_neighbors_2840
	sw	s8, 0(s7)
	sw	s4, 8(s7)
	sw	a4, 4(s7)
	mv	a4, gp
	addi	gp, gp, 8
	la	s8, write_ppm_header_2847
	sw	s8, 0(a4)
	sw	s6, 4(a4)
	mv	s8, gp
	addi	gp, gp, 8
	la	s9, write_rgb_2851
	sw	s9, 0(s8)
	sw	a3, 4(s8)
	mv	s9, gp
	addi	gp, gp, 28
	la	s11, pretrace_diffuse_rays_2853
	sw	s11, 0(s9)
	sw	s10, 24(s9)
	sw	s5, 20(s9)
	sw	s2, 16(s9)
	sw	a5, 12(s9)
	sw	a6, 8(s9)
	sw	a1, 4(s9)
	mv	a1, gp
	addi	gp, gp, 40
	la	a5, pretrace_pixels_2856
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
	la	s9, pretrace_line_2863
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
	la	s9, scan_pixel_2867
	sw	s9, 0(a1)
	sw	s8, 24(a1)
	sw	s7, 20(a1)
	sw	a3, 16(a1)
	sw	s1, 12(a1)
	sw	s6, 8(a1)
	sw	s4, 4(a1)
	mv	a3, gp
	addi	gp, gp, 16
	la	s1, scan_line_2873
	sw	s1, 0(a3)
	sw	a1, 12(a3)
	sw	s5, 8(a3)
	sw	s6, 4(a3)
	mv	a1, gp
	addi	gp, gp, 8
	la	s1, create_pixelline_2886
	sw	s1, 0(a1)
	sw	s6, 4(a1)
	mv	s1, gp
	addi	gp, gp, 8
	la	s4, calc_dirvec_2893
	sw	s4, 0(s1)
	sw	a6, 4(s1)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, calc_dirvecs_2901
	sw	s7, 0(s4)
	sw	s1, 4(s4)
	mv	s1, gp
	addi	gp, gp, 8
	la	s7, calc_dirvec_rows_2906
	sw	s7, 0(s1)
	sw	s4, 4(s1)
	mv	s4, gp
	addi	gp, gp, 8
	la	s7, create_dirvec_elements_2912
	sw	s7, 0(s4)
	sw	s2, 4(s4)
	mv	s7, gp
	addi	gp, gp, 16
	la	s8, create_dirvecs_2915
	sw	s8, 0(s7)
	sw	s2, 12(s7)
	sw	a6, 8(s7)
	sw	s4, 4(s7)
	mv	s4, gp
	addi	gp, gp, 12
	la	s8, init_dirvec_constants_2917
	sw	s8, 0(s4)
	sw	s2, 8(s4)
	lw	s8, 148(sp)
	sw	s8, 4(s4)
	mv	s9, gp
	addi	gp, gp, 20
	la	s10, init_vecset_constants_2920
	sw	s10, 0(s9)
	sw	s2, 16(s9)
	sw	s8, 12(s9)
	sw	s4, 8(s9)
	sw	a6, 4(s9)
	mv	a6, gp
	addi	gp, gp, 24
	la	s4, setup_rect_reflection_2931
	sw	s4, 0(a6)
	lw	s4, 140(sp)
	sw	s4, 20(a6)
	sw	a0, 16(a6)
	sw	s2, 12(a6)
	sw	a7, 8(a6)
	sw	s8, 4(a6)
	mv	s10, gp
	addi	gp, gp, 24
	la	s11, setup_surface_reflection_2934
	sw	s11, 0(s10)
	sw	s4, 20(s10)
	sw	a0, 16(s10)
	sw	s2, 12(s10)
	sw	a7, 8(s10)
	sw	s8, 4(s10)
	mv	a0, gp
	addi	gp, gp, 16
	la	s4, setup_reflections_2937
	sw	s4, 0(a0)
	sw	s10, 12(a0)
	sw	a6, 8(a0)
	sw	s3, 4(a0)
	mv	s11, gp
	addi	gp, gp, 72
	la	a6, rt_2939
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
veccpy_2484:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	flw	fa0, 0(a1)
	fsw	fa0, 0(a0)
	flw	fa0, 4(a1)
	fsw	fa0, 4(a0)
	flw	fa0, 8(a1)
	fsw	fa0, 8(a0)
veccpy_2484_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecunit_sgn_2487:
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
	fli	fa1, l_8287
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10486
	bne	a1, zero, beq_else_10488
	fli	fa1, l_8288
	fdiv	fa0, fa1, fa0
	b	beq_cont_10489
beq_else_10488:
	fli	fa1, l_8289
	fdiv	fa0, fa1, fa0
beq_cont_10489:
	b	beq_cont_10487
beq_else_10486:
	fli	fa0, l_8288
beq_cont_10487:
	flw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 0(a0)
	flw	fa1, 4(a0)
	fmul	fa1, fa1, fa0
	fsw	fa1, 4(a0)
	flw	fa1, 8(a0)
	fmul	fa0, fa1, fa0
	fsw	fa0, 8(a0)
vecunit_sgn_2487_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod_2490:
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
veciprod_2490_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
veciprod2_2493:
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
veciprod2_2493_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccum_2498:
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
vecaccum_2498_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecadd_2502:
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
vecadd_2502_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecscale_2505:
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
vecscale_2505_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
vecaccumv_2508:
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
vecaccumv_2508_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
read_screen_settings_2585:
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
	fli	fa1, l_8344
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
	fli	fa3, l_8345
	fmul	fa2, fa2, fa3
	lw	a0, 12(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8347
	flw	fa4, 32(sp)
	fmul	fa2, fa4, fa2
	fsw	fa2, 4(a0)
	flw	fa2, 40(sp)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	fsw	fa3, 8(a0)
	lw	a1, 8(sp)
	fsw	fa2, 0(a1)
	fli	fa3, l_8287
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
read_screen_settings_2585_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
read_light_2587:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a0, 8(s11)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	call	min_caml_read_float
	fli	fa1, l_8344
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
read_light_2587_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
rotate_quadratic_matrix_2589:
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
	fli	fs5, l_8381
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
rotate_quadratic_matrix_2589_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
read_nth_object_2592:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	lw	a1, 4(s11)
	sw	a1, 0(sp)
	sw	a0, 4(sp)
	call	min_caml_read_int
	li	t6, -1
	bne	a0, t6, beq_else_10498
	li	a0, 0
	b	read_nth_object_2592_ret
beq_else_10498:
	sw	a0, 8(sp)
	call	min_caml_read_int
	sw	a0, 12(sp)
	call	min_caml_read_int
	sw	a0, 16(sp)
	call	min_caml_read_int
	li	a1, 3
	fli	fa0, l_8287
	sw	a0, 20(sp)
	fsw	fa0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
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
	call	min_caml_create_array
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
	call	min_caml_create_array
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
	call	min_caml_create_array
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
	call	min_caml_create_array
	lw	a1, 20(sp)
	bne	a1, zero, beq_else_10499
	b	beq_cont_10500
beq_else_10499:
	sw	a0, 48(sp)
	call	min_caml_read_float
	fli	fa1, l_8344
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
beq_cont_10500:
	lw	a1, 12(sp)
	li	t6, 2
	bne	a1, t6, beq_else_10501
	li	a2, 1
	b	beq_cont_10502
beq_else_10501:
	lw	a2, 36(sp)
beq_cont_10502:
	li	a3, 4
	flw	fa0, 24(sp)
	sw	a2, 56(sp)
	sw	a0, 48(sp)
	mv	a0, a3
	call	min_caml_create_array
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
	bne	a4, t6, beq_else_10503
	flw	fa0, 0(a2)
	flw	fa1, 24(sp)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10505
	bne	a1, zero, beq_else_10507
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10509
	fli	fa2, l_8288
	b	beq_cont_10510
beq_else_10509:
	fli	fa2, l_8289
beq_cont_10510:
	b	beq_cont_10508
beq_else_10507:
	fli	fa2, l_8287
beq_cont_10508:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10506
beq_else_10505:
	fli	fa0, l_8287
beq_cont_10506:
	fsw	fa0, 0(a2)
	flw	fa0, 4(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10511
	bne	a1, zero, beq_else_10513
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10515
	fli	fa2, l_8288
	b	beq_cont_10516
beq_else_10515:
	fli	fa2, l_8289
beq_cont_10516:
	b	beq_cont_10514
beq_else_10513:
	fli	fa2, l_8287
beq_cont_10514:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa2, fa0
	b	beq_cont_10512
beq_else_10511:
	fli	fa0, l_8287
beq_cont_10512:
	fsw	fa0, 4(a2)
	flw	fa0, 8(a2)
	feq	a1, fa0, fa1
	bne	a1, zero, beq_else_10517
	bne	a1, zero, beq_else_10519
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10521
	fli	fa1, l_8288
	b	beq_cont_10522
beq_else_10521:
	fli	fa1, l_8289
beq_cont_10522:
	b	beq_cont_10520
beq_else_10519:
	fli	fa1, l_8287
beq_cont_10520:
	fmul	fa0, fa0, fa0
	fdiv	fa0, fa1, fa0
	b	beq_cont_10518
beq_else_10517:
	fli	fa0, l_8287
beq_cont_10518:
	fsw	fa0, 8(a2)
	b	beq_cont_10504
beq_else_10503:
	li	t6, 2
	bne	a4, t6, beq_cont_10523
	lw	a1, 36(sp)
	xori	a1, a1, 1	# boolean not
	mv	a0, a2
	call	vecunit_sgn_2487
beq_cont_10523:
beq_cont_10504:
	lw	a0, 20(sp)
	bne	a0, zero, beq_else_10524
	b	beq_cont_10525
beq_else_10524:
	lw	a0, 28(sp)
	lw	a1, 48(sp)
	call	rotate_quadratic_matrix_2589
beq_cont_10525:
	li	a0, 1
read_nth_object_2592_ret:
	lw	ra, 60(sp)
	addi	sp, sp, 64
	jr	ra
read_object_2594:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	li	t6, 60
	blt	a0, t6, bge_else_10526
	b	read_object_2594_ret
bge_else_10526:
	sw	s11, 0(sp)
	sw	a2, 4(sp)
	sw	a0, 8(sp)
	mv	s11, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10528
	lw	a0, 4(sp)
	lw	a1, 8(sp)
	sw	a1, 0(a0)
	b	read_object_2594_ret
beq_else_10528:
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_object_2594_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_net_item_2598:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	sw	a0, 0(sp)
	call	min_caml_read_int
	li	a1, -1
	li	t6, -1
	bne	a0, t6, beq_else_10530
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_net_item_2598_ret
beq_else_10530:
	lw	a1, 0(sp)
	addi	a2, a1, 1
	sw	a0, 4(sp)
	mv	a0, a2
	call	read_net_item_2598
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_net_item_2598_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_or_network_2600:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a1, 0
	sw	a0, 0(sp)
	mv	a0, a1
	call	read_net_item_2598
	mv	a1, a0
	lw	a0, 0(a1)
	li	t6, -1
	bne	a0, t6, beq_else_10531
	lw	a0, 0(sp)
	addi	a0, a0, 1
	call	min_caml_create_array
	b	read_or_network_2600_ret
beq_else_10531:
	lw	a0, 0(sp)
	addi	a2, a0, 1
	sw	a1, 4(sp)
	mv	a0, a2
	call	read_or_network_2600
	lw	a1, 0(sp)
	slli	a1, a1, 2
	lw	a2, 4(sp)
	add	t6, a0, a1
	sw	a2, 0(t6)
read_or_network_2600_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
read_and_network_2602:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a1, 4(s11)
	li	a2, 0
	sw	s11, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	read_net_item_2598
	lw	a1, 0(a0)
	li	t6, -1
	bne	a1, t6, beq_else_10532
	b	read_and_network_2602_ret
beq_else_10532:
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 4(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, 1
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
read_and_network_2602_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
read_parameter_2604:
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
	call	read_or_network_2600
	lw	a1, 0(sp)
	sw	a0, 0(a1)
read_parameter_2604_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
solver_rect_surface_2606:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a5, 4(s11)
	slli	a6, a2, 2
	add	t6, a1, a6
	flw	fa3, 0(t6)
	fli	fa4, l_8287
	feq	a6, fa3, fa4
	bne	a6, zero, beq_else_10535
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
	bne	a6, zero, beq_cont_10536
	fneg	fa3, fa3
beq_cont_10536:
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
	bne	a2, zero, beq_else_10537
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
	bne	a0, zero, beq_else_10538
	fsw	fa0, 0(a5)
	li	a0, 1
	b	solver_rect_surface_2606_ret
beq_else_10538:
	li	a0, 0
	b	solver_rect_surface_2606_ret
beq_else_10537:
	li	a0, 0
	b	solver_rect_surface_2606_ret
beq_else_10535:
	li	a0, 0
solver_rect_surface_2606_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_2615:
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
	bne	a0, zero, beq_else_10539
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
	bne	a0, zero, beq_else_10540
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
	bne	a0, zero, beq_else_10541
	li	a0, 0
	b	solver_rect_2615_ret
beq_else_10541:
	li	a0, 3
	b	solver_rect_2615_ret
beq_else_10540:
	li	a0, 2
	b	solver_rect_2615_ret
beq_else_10539:
	li	a0, 1
solver_rect_2615_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_surface_2621:
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
	call	veciprod_2490
	fli	fa1, l_8287
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10542
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	veciprod2_2493
	fneg	fa0, fa0
	flw	fa1, 20(sp)
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_2621_ret
beq_else_10542:
	li	a0, 0
solver_surface_2621_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
quadratic_2627:
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
	bne	a0, zero, beq_else_10543
	fmv	fa0, fa3
	b	quadratic_2627_ret
beq_else_10543:
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
quadratic_2627_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
bilinear_2632:
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
	bne	a0, zero, beq_else_10544
	fmv	fa0, fa6
	b	bilinear_2632_ret
beq_else_10544:
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
	fli	fa1, l_8381
	fdiv	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
bilinear_2632_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_2640:
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
	call	quadratic_2627
	fli	fa1, l_8287
	feq	a0, fa0, fa1
	bne	a0, zero, beq_else_10545
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
	call	bilinear_2632
	flw	fa1, 12(sp)
	flw	fa2, 8(sp)
	flw	fa3, 4(sp)
	lw	a0, 16(sp)
	fsw	fa0, 32(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	fmv	fa2, fa3
	call	quadratic_2627
	lw	a0, 16(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10546
	fli	fa1, l_8288
	fsub	fa0, fa0, fa1
beq_cont_10546:
	flw	fa1, 32(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 28(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 24(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10547
	fsqrt	fa0, fa0
	bne	a1, zero, beq_cont_10548
	fneg	fa0, fa0
beq_cont_10548:
	fsub	fa0, fa0, fa1
	fdiv	fa0, fa0, fa3
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_second_2640_ret
beq_else_10547:
	li	a0, 0
	b	solver_second_2640_ret
beq_else_10545:
	li	a0, 0
solver_second_2640_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
solver_2646:
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
	bne	a7, t6, beq_else_10549
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2646_ret
beq_else_10549:
	li	t6, 2
	bne	a7, t6, beq_else_10550
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_2646_ret
beq_else_10550:
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_2646_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_rect_fast_2650:
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
	bne	a4, zero, beq_else_10551
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10553
	flw	fa4, 4(a2)
	fli	fa5, l_8287
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
	bne	a4, zero, beq_else_10556
	flw	fa4, 8(a0)
	flw	fa5, 8(a1)
	fmul	fa5, fa3, fa5
	fadd	fa5, fa5, fa2
	fabs	fa5, fa5
	fle	a4, fa4, fa5
	bne	a4, zero, beq_else_10558
	flw	fa4, 12(a2)
	fli	fa5, l_8287
	feq	a4, fa4, fa5
	xori	a4, a4, 1	# boolean not
	b	beq_cont_10559
beq_else_10558:
	li	a4, 0
beq_cont_10559:
	b	beq_cont_10557
beq_else_10556:
	li	a4, 0
beq_cont_10557:
	bne	a4, zero, beq_else_10560
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
	bne	a4, zero, beq_else_10561
	flw	fa0, 4(a0)
	flw	fa3, 4(a1)
	fmul	fa3, fa2, fa3
	fadd	fa1, fa3, fa1
	fabs	fa1, fa1
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10563
	flw	fa0, 20(a2)
	fli	fa1, l_8287
	feq	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10564
beq_else_10563:
	li	a0, 0
beq_cont_10564:
	b	beq_cont_10562
beq_else_10561:
	li	a0, 0
beq_cont_10562:
	bne	a0, zero, beq_else_10565
	li	a0, 0
	b	solver_rect_fast_2650_ret
beq_else_10565:
	fsw	fa2, 0(a3)
	li	a0, 3
	b	solver_rect_fast_2650_ret
beq_else_10560:
	fsw	fa3, 0(a3)
	li	a0, 2
	b	solver_rect_fast_2650_ret
beq_else_10555:
	fsw	fa3, 0(a3)
	li	a0, 1
solver_rect_fast_2650_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast_2657:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa3, l_8287
	flw	fa4, 0(a1)
	fle	a2, fa3, fa4
	bne	a2, zero, beq_else_10566
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
	b	solver_surface_fast_2657_ret
beq_else_10566:
	li	a0, 0
solver_surface_fast_2657_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast_2663:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8287
	feq	a3, fa3, fa4
	bne	a3, zero, beq_else_10567
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
	call	quadratic_2627
	lw	a0, 20(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10568
	fli	fa1, l_8288
	fsub	fa0, fa0, fa1
beq_cont_10568:
	flw	fa1, 16(sp)
	fmul	fa2, fa1, fa1
	flw	fa3, 12(sp)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	flw	fa2, 8(sp)
	fle	a0, fa0, fa2
	bne	a0, zero, beq_else_10569
	bne	a1, zero, beq_else_10570
	fsqrt	fa0, fa0
	fsub	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
	b	beq_cont_10571
beq_else_10570:
	fsqrt	fa0, fa0
	fadd	fa0, fa1, fa0
	lw	a0, 4(sp)
	flw	fa1, 16(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 0(a0)
beq_cont_10571:
	li	a0, 1
	b	solver_second_fast_2663_ret
beq_else_10569:
	li	a0, 0
	b	solver_second_fast_2663_ret
beq_else_10567:
	li	a0, 0
solver_second_fast_2663_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solver_fast_2669:
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
	bne	s1, t6, beq_else_10572
	mv	a0, a6
	mv	s11, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2669_ret
beq_else_10572:
	li	t6, 2
	bne	s1, t6, beq_else_10573
	mv	a1, a2
	mv	a0, a6
	mv	s11, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast_2669_ret
beq_else_10573:
	mv	a1, a2
	mv	a0, a6
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast_2669_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_surface_fast2_2673:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a0, 4(s11)
	fli	fa0, l_8287
	flw	fa1, 0(a1)
	fle	a3, fa0, fa1
	bne	a3, zero, beq_else_10574
	flw	fa0, 0(a1)
	flw	fa1, 12(a2)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a0)
	li	a0, 1
	b	solver_surface_fast2_2673_ret
beq_else_10574:
	li	a0, 0
solver_surface_fast2_2673_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_second_fast2_2680:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a3, 4(s11)
	flw	fa3, 0(a1)
	fli	fa4, l_8287
	feq	a4, fa3, fa4
	bne	a4, zero, beq_else_10575
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
	bne	a2, zero, beq_else_10576
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10577
	fsqrt	fa1, fa1
	fsub	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
	b	beq_cont_10578
beq_else_10577:
	fsqrt	fa1, fa1
	fadd	fa0, fa0, fa1
	flw	fa1, 16(a1)
	fmul	fa0, fa0, fa1
	fsw	fa0, 0(a3)
beq_cont_10578:
	li	a0, 1
	b	solver_second_fast2_2680_ret
beq_else_10576:
	li	a0, 0
	b	solver_second_fast2_2680_ret
beq_else_10575:
	li	a0, 0
solver_second_fast2_2680_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
solver_fast2_2687:
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
	bne	a7, t6, beq_else_10579
	mv	a2, a0
	mv	s11, a4
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2687_ret
beq_else_10579:
	li	t6, 2
	bne	a7, t6, beq_else_10580
	mv	a1, a0
	mv	s11, a2
	mv	a2, a6
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solver_fast2_2687_ret
beq_else_10580:
	mv	a2, a6
	mv	a1, a0
	mv	s11, a3
	mv	a0, a5
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solver_fast2_2687_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
setup_rect_table_2690:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 6
	fli	fa0, l_8287
	sw	a1, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(sp)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10581
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 0(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 0(a4)
	bne	a3, zero, beq_cont_10583
	fneg	fa0, fa0
beq_cont_10583:
	fsw	fa0, 0(a0)
	fli	fa0, l_8288
	flw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 4(a0)
	b	beq_cont_10582
beq_else_10581:
	fsw	fa1, 4(a0)
beq_cont_10582:
	flw	fa0, 4(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10584
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a4, 16(a2)
	flw	fa0, 4(a1)
	fle	a5, fa1, fa0
	xori	a5, a5, 1	# boolean not
	xor	a3, a3, a5
	flw	fa0, 4(a4)
	bne	a3, zero, beq_cont_10586
	fneg	fa0, fa0
beq_cont_10586:
	fsw	fa0, 8(a0)
	fli	fa0, l_8288
	flw	fa2, 4(a1)
	fdiv	fa0, fa0, fa2
	fsw	fa0, 12(a0)
	b	beq_cont_10585
beq_else_10584:
	fsw	fa1, 12(a0)
beq_cont_10585:
	flw	fa0, 8(a1)
	feq	a2, fa0, fa1
	bne	a2, zero, beq_else_10587
	lw	a2, 0(sp)
	lw	a3, 24(a2)
	lw	a2, 16(a2)
	flw	fa0, 8(a1)
	fle	a4, fa1, fa0
	xori	a4, a4, 1	# boolean not
	xor	a3, a3, a4
	flw	fa0, 8(a2)
	bne	a3, zero, beq_cont_10589
	fneg	fa0, fa0
beq_cont_10589:
	fsw	fa0, 16(a0)
	fli	fa0, l_8288
	flw	fa1, 8(a1)
	fdiv	fa0, fa0, fa1
	fsw	fa0, 20(a0)
	b	beq_cont_10588
beq_else_10587:
	fsw	fa1, 20(a0)
beq_cont_10588:
setup_rect_table_2690_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_surface_table_2693:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	li	a2, 4
	fli	fa0, l_8287
	fsw	fa0, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_array
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
	bne	a1, zero, beq_else_10590
	fli	fa1, l_8289
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
	b	beq_cont_10591
beq_else_10590:
	fsw	fa1, 0(a0)
beq_cont_10591:
setup_surface_table_2693_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
setup_second_table_2696:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	li	a2, 5
	fli	fa0, l_8287
	fsw	fa0, 0(sp)
	sw	a1, 4(sp)
	sw	a0, 8(sp)
	mv	a0, a2
	call	min_caml_create_array
	lw	a1, 8(sp)
	flw	fa0, 0(a1)
	flw	fa1, 4(a1)
	flw	fa2, 8(a1)
	lw	a2, 4(sp)
	sw	a0, 12(sp)
	mv	a0, a2
	call	quadratic_2627
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
	bne	a1, zero, beq_else_10592
	fsw	fa1, 4(a3)
	fsw	fa2, 8(a3)
	fsw	fa3, 12(a3)
	b	beq_cont_10593
beq_else_10592:
	flw	fa4, 8(a0)
	flw	fa5, 4(a2)
	fmul	fa4, fa4, fa5
	flw	fa5, 4(a0)
	flw	fa6, 8(a2)
	fmul	fa5, fa5, fa6
	fadd	fa4, fa4, fa5
	fli	fa5, l_8381
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
beq_cont_10593:
	flw	fa1, 0(sp)
	feq	a0, fa0, fa1
	bne	a0, zero, beq_cont_10594
	fli	fa1, l_8288
	fdiv	fa0, fa1, fa0
	fsw	fa0, 16(a3)
beq_cont_10594:
	mv	a0, a3
setup_second_table_2696_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
iter_setup_dirvec_constants_2699:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a2, 4(s11)
	blt	a1, zero, iter_setup_dirvec_constants_2699_ret
	slli	a3, a1, 2
	add	t6, a2, a3
	lw	a2, 0(t6)
	lw	a3, 4(a0)
	lw	a4, 0(a0)
	lw	a5, 4(a2)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	li	t6, 1
	bne	a5, t6, beq_else_10595
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_rect_table_2690
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10596
beq_else_10595:
	li	t6, 2
	bne	a5, t6, beq_else_10597
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_surface_table_2693
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	b	beq_cont_10598
beq_else_10597:
	sw	a3, 8(sp)
	sw	a1, 12(sp)
	mv	a1, a2
	mv	a0, a4
	call	setup_second_table_2696
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
beq_cont_10598:
beq_cont_10596:
	addi	a1, a1, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_setup_dirvec_constants_2699_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
setup_startp_constants_2704:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a2, 4(s11)
	blt	a1, zero, setup_startp_constants_2704_ret
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
	bne	a6, t6, beq_else_10599
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	mv	a0, a5
	call	veciprod2_2493
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
	b	beq_cont_10600
beq_else_10599:
	li	t6, 2
	bgt	a6, t6, ble_else_10601
	b	ble_cont_10602
ble_else_10601:
	flw	fa0, 0(a3)
	flw	fa1, 4(a3)
	flw	fa2, 8(a3)
	sw	a3, 12(sp)
	sw	a6, 16(sp)
	mv	a0, a2
	call	quadratic_2627
	lw	a0, 16(sp)
	li	t6, 3
	bne	a0, t6, beq_cont_10603
	fli	fa1, l_8288
	fsub	fa0, fa0, fa1
beq_cont_10603:
	lw	a0, 12(sp)
	fsw	fa0, 12(a0)
ble_cont_10602:
beq_cont_10600:
	lw	a0, 8(sp)
	addi	a1, a0, -1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_startp_constants_2704_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
is_rect_outside_2709:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 16(a0)
	flw	fa3, 0(a0)
	fabs	fa0, fa0
	fle	a2, fa3, fa0
	bne	a2, zero, beq_else_10604
	flw	fa0, 4(a0)
	fabs	fa1, fa1
	fle	a2, fa0, fa1
	bne	a2, zero, beq_else_10606
	flw	fa0, 8(a0)
	fabs	fa1, fa2
	fle	a0, fa0, fa1
	xori	a0, a0, 1	# boolean not
	b	beq_cont_10607
beq_else_10606:
	li	a0, 0
beq_cont_10607:
	b	beq_cont_10605
beq_else_10604:
	li	a0, 0
beq_cont_10605:
	bne	a0, zero, beq_else_10608
	xori	a0, a1, 1	# boolean not
	b	is_rect_outside_2709_ret
beq_else_10608:
	mv	a0, a1
is_rect_outside_2709_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
is_second_outside_2719:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	sw	a0, 0(sp)
	call	quadratic_2627
	lw	a0, 0(sp)
	lw	a1, 24(a0)
	lw	a0, 4(a0)
	li	t6, 3
	bne	a0, t6, beq_cont_10609
	fli	fa1, l_8288
	fsub	fa0, fa0, fa1
beq_cont_10609:
	fli	fa1, l_8287
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
is_second_outside_2719_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
is_outside_2724:
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
	bne	a4, t6, beq_else_10610
	call	is_rect_outside_2709
	b	is_outside_2724_ret
beq_else_10610:
	li	t6, 2
	bne	a4, t6, beq_else_10611
	sw	a1, 0(sp)
	mv	a0, a3
	call	veciprod2_2493
	fli	fa1, l_8287
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	lw	a1, 0(sp)
	xor	a0, a1, a0
	xori	a0, a0, 1	# boolean not
	b	is_outside_2724_ret
beq_else_10611:
	call	is_second_outside_2719
is_outside_2724_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
check_all_inside_2729:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 4(s11)
	slli	a3, a0, 2
	add	t6, a1, a3
	lw	a3, 0(t6)
	li	t6, -1
	bne	a3, t6, beq_else_10612
	li	a0, 1
	b	check_all_inside_2729_ret
beq_else_10612:
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
	call	is_outside_2724
	bne	a0, zero, beq_else_10613
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa0, 8(sp)
	flw	fa1, 4(sp)
	flw	fa2, 0(sp)
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	check_all_inside_2729_ret
beq_else_10613:
	li	a0, 0
check_all_inside_2729_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
shadow_check_and_group_2735:
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
	bne	s2, t6, beq_else_10614
	li	a0, 0
	b	shadow_check_and_group_2735_ret
beq_else_10614:
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
	bne	a0, zero, beq_else_10615
	li	a0, 0
	b	beq_cont_10616
beq_else_10615:
	fli	fa1, l_8621
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
beq_cont_10616:
	bne	a0, zero, beq_else_10617
	lw	a0, 28(sp)
	slli	a0, a0, 2
	lw	a1, 24(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10618
	li	a0, 0
	b	shadow_check_and_group_2735_ret
beq_else_10618:
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2735_ret
beq_else_10617:
	fli	fa1, l_8622
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
	bne	a0, zero, beq_else_10619
	lw	a0, 20(sp)
	addi	a0, a0, 1
	lw	a1, 12(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_and_group_2735_ret
beq_else_10619:
	li	a0, 1
shadow_check_and_group_2735_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
shadow_check_one_or_group_2738:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	slli	a4, a0, 2
	add	t6, a1, a4
	lw	a4, 0(t6)
	li	t6, -1
	bne	a4, t6, beq_else_10620
	li	a0, 0
	b	shadow_check_one_or_group_2738_ret
beq_else_10620:
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
	bne	a0, zero, beq_else_10621
	lw	a0, 8(sp)
	addi	a0, a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_group_2738_ret
beq_else_10621:
	li	a0, 1
shadow_check_one_or_group_2738_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
shadow_check_one_or_matrix_2741:
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
	bne	s1, t6, beq_else_10622
	li	a0, 0
	b	shadow_check_one_or_matrix_2741_ret
beq_else_10622:
	sw	a7, 0(sp)
	sw	a4, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	sw	a0, 16(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10623
	li	a0, 1
	b	beq_cont_10624
beq_else_10623:
	sw	a3, 20(sp)
	mv	a1, a5
	mv	a0, s1
	mv	s11, a2
	mv	a2, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10625
	li	a0, 0
	b	beq_cont_10626
beq_else_10625:
	fli	fa0, l_8634
	lw	a0, 20(sp)
	flw	fa1, 0(a0)
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10627
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10629
	li	a0, 0
	b	beq_cont_10630
beq_else_10629:
	li	a0, 1
beq_cont_10630:
	b	beq_cont_10628
beq_else_10627:
	li	a0, 0
beq_cont_10628:
beq_cont_10626:
beq_cont_10624:
	bne	a0, zero, beq_else_10631
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2741_ret
beq_else_10631:
	li	a0, 1
	lw	a1, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10632
	lw	a0, 16(sp)
	addi	a0, a0, 1
	lw	a1, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	shadow_check_one_or_matrix_2741_ret
beq_else_10632:
	li	a0, 1
shadow_check_one_or_matrix_2741_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
solve_each_element_2744:
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
	bne	s5, t6, beq_else_10633
	b	solve_each_element_2744_ret
beq_else_10633:
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
	bne	a0, zero, beq_else_10635
	lw	a0, 48(sp)
	slli	a0, a0, 2
	lw	a1, 44(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10636
	b	solve_each_element_2744_ret
beq_else_10636:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_2744_ret
beq_else_10635:
	lw	a1, 24(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8287
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10638
	lw	a1, 20(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10639
	fli	fa1, l_8622
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
	bne	a0, zero, beq_else_10640
	b	beq_cont_10641
beq_else_10640:
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
beq_cont_10641:
beq_cont_10639:
beq_cont_10638:
	lw	a0, 40(sp)
	addi	a0, a0, 1
	lw	a1, 32(sp)
	lw	a2, 28(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_2744_ret:
	lw	ra, 72(sp)
	addi	sp, sp, 76
	jr	ra
solve_one_or_network_2748:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10642
	b	solve_one_or_network_2748_ret
beq_else_10642:
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
solve_one_or_network_2748_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_2752:
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
	bne	s2, t6, beq_else_10644
	b	trace_or_matrix_2752_ret
beq_else_10644:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s2, t6, beq_else_10646
	li	a3, 1
	mv	a1, s1
	mv	a0, a3
	mv	s11, a7
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10647
beq_else_10646:
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
	bne	a0, zero, beq_else_10648
	b	beq_cont_10649
beq_else_10648:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10650
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10650:
beq_cont_10649:
beq_cont_10647:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_2752_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_2756:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8658
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
	fli	fa1, l_8634
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10651
	fli	fa1, l_8662
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_2756_ret
beq_else_10651:
	li	a0, 0
judge_intersection_2756_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
solve_each_element_fast_2758:
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
	bne	s6, t6, beq_else_10652
	b	solve_each_element_fast_2758_ret
beq_else_10652:
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
	bne	a0, zero, beq_else_10654
	lw	a0, 52(sp)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a0, 24(a0)
	bne	a0, zero, beq_else_10655
	b	solve_each_element_fast_2758_ret
beq_else_10655:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	solve_each_element_fast_2758_ret
beq_else_10654:
	lw	a1, 28(sp)
	flw	fa0, 0(a1)
	fli	fa1, l_8287
	fle	a1, fa0, fa1
	bne	a1, zero, beq_cont_10657
	lw	a1, 24(sp)
	flw	fa1, 0(a1)
	fle	a2, fa1, fa0
	bne	a2, zero, beq_cont_10658
	fli	fa1, l_8622
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
	bne	a0, zero, beq_else_10659
	b	beq_cont_10660
beq_else_10659:
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
beq_cont_10660:
beq_cont_10658:
beq_cont_10657:
	lw	a0, 44(sp)
	addi	a0, a0, 1
	lw	a1, 36(sp)
	lw	a2, 32(sp)
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
solve_each_element_fast_2758_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
solve_one_or_network_fast_2762:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	slli	a5, a0, 2
	add	t6, a1, a5
	lw	a5, 0(t6)
	li	t6, -1
	bne	a5, t6, beq_else_10661
	b	solve_one_or_network_fast_2762_ret
beq_else_10661:
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
solve_one_or_network_fast_2762_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_or_matrix_fast_2766:
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
	bne	s1, t6, beq_else_10663
	b	trace_or_matrix_fast_2766_ret
beq_else_10663:
	sw	a2, 0(sp)
	sw	a1, 4(sp)
	sw	s11, 8(sp)
	sw	a0, 12(sp)
	li	t6, 99
	bne	s1, t6, beq_else_10665
	li	a3, 1
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10666
beq_else_10665:
	sw	a7, 16(sp)
	sw	a6, 20(sp)
	sw	a3, 24(sp)
	sw	a5, 28(sp)
	mv	a1, a2
	mv	a0, s1
	mv	s11, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10667
	b	beq_cont_10668
beq_else_10667:
	lw	a0, 28(sp)
	flw	fa0, 0(a0)
	lw	a0, 24(sp)
	flw	fa1, 0(a0)
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10669
	li	a0, 1
	lw	a1, 16(sp)
	lw	a2, 0(sp)
	lw	s11, 20(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10669:
beq_cont_10668:
beq_cont_10666:
	lw	a0, 12(sp)
	addi	a0, a0, 1
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_or_matrix_fast_2766_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
judge_intersection_fast_2770:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	fli	fa0, l_8658
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
	fli	fa1, l_8634
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10670
	fli	fa1, l_8662
	fle	a0, fa1, fa0
	xori	a0, a0, 1	# boolean not
	b	judge_intersection_fast_2770_ret
beq_else_10670:
	li	a0, 0
judge_intersection_fast_2770_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
get_nvector_rect_2772:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 8(s11)
	lw	a2, 4(s11)
	lw	a2, 0(a2)
	fli	fa0, l_8287
	fsw	fa0, 0(a1)
	fsw	fa0, 4(a1)
	fsw	fa0, 8(a1)
	addi	a2, a2, -1
	slli	a3, a2, 2
	add	t6, a0, a3
	flw	fa1, 0(t6)
	feq	a0, fa1, fa0
	bne	a0, zero, beq_else_10671
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10673
	fli	fa0, l_8288
	b	beq_cont_10674
beq_else_10673:
	fli	fa0, l_8289
beq_cont_10674:
	b	beq_cont_10672
beq_else_10671:
	fli	fa0, l_8287
beq_cont_10672:
	fneg	fa0, fa0
	slli	a0, a2, 2
	add	t6, a1, a0
	fsw	fa0, 0(t6)
get_nvector_rect_2772_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_plane_2774:
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
get_nvector_plane_2774_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
get_nvector_second_2776:
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
	bne	a0, zero, beq_else_10677
	fsw	fa3, 0(a1)
	fsw	fa4, 4(a1)
	fsw	fa5, 8(a1)
	b	beq_cont_10678
beq_else_10677:
	flw	fa6, 8(a3)
	fmul	fa6, fa1, fa6
	flw	fa7, 4(a3)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	fli	fa7, l_8381
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
beq_cont_10678:
	mv	a0, a1
	mv	a1, a4
	call	vecunit_sgn_2487
get_nvector_second_2776_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
utexture_2781:
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
	bne	a0, t6, beq_else_10679
	flw	fa0, 0(a1)
	flw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	fli	fa1, l_8759
	fmul	fa2, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa1, 4(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	fsw	fa0, 16(sp)
	fmv	fa0, fa2
	call	min_caml_floor
	fli	fa1, l_8760
	fmul	fa0, fa0, fa1
	fli	fa2, l_8749
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
	bne	a1, zero, beq_else_10680
	bne	a0, zero, beq_else_10682
	fli	fa0, l_8742
	b	beq_cont_10683
beq_else_10682:
	fli	fa0, l_8287
beq_cont_10683:
	b	beq_cont_10681
beq_else_10680:
	bne	a0, zero, beq_else_10684
	fli	fa0, l_8287
	b	beq_cont_10685
beq_else_10684:
	fli	fa0, l_8742
beq_cont_10685:
beq_cont_10681:
	lw	a0, 0(sp)
	fsw	fa0, 4(a0)
	b	utexture_2781_ret
beq_else_10679:
	li	t6, 2
	bne	a0, t6, beq_else_10687
	flw	fa0, 4(a1)
	fli	fa1, l_8753
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
	fli	fa1, l_8742
	fmul	fa2, fa1, fa0
	lw	a0, 0(sp)
	fsw	fa2, 0(a0)
	fli	fa2, l_8288
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	fsw	fa0, 4(a0)
	b	utexture_2781_ret
beq_else_10687:
	li	t6, 3
	bne	a0, t6, beq_else_10689
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
	fli	fa1, l_8749
	fdiv	fa0, fa0, fa1
	sw	a2, 0(sp)
	fsw	fa0, 44(sp)
	call	min_caml_floor
	flw	fa1, 44(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8735
	fmul	fa0, fa0, fa1
	fsw	fa0, 48(sp)
	call	min_caml_cos
	flw	fa1, 48(sp)
	fsw	fa0, 52(sp)
	fmv	fa0, fa1
	call	min_caml_cos
	flw	fa1, 52(sp)
	fmul	fa0, fa1, fa0
	fli	fa1, l_8742
	fmul	fa2, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa2, 4(a0)
	fli	fa2, l_8288
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	fsw	fa0, 8(a0)
	b	utexture_2781_ret
beq_else_10689:
	li	t6, 4
	bne	a0, t6, utexture_2781_ret
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
	fli	fa3, l_8733
	fabs	fa4, fa0
	fle	a0, fa3, fa4
	sw	a2, 0(sp)
	fsw	fa3, 56(sp)
	fsw	fa2, 60(sp)
	sw	a5, 64(sp)
	sw	a4, 8(sp)
	sw	a1, 12(sp)
	bne	a0, zero, beq_else_10691
	fli	fa0, l_8736
	b	beq_cont_10692
beq_else_10691:
	fdiv	fa0, fa1, fa0
	fabs	fa0, fa0
	call	min_caml_atan
	fli	fa1, l_8734
	fmul	fa0, fa0, fa1
	fli	fa1, l_8735
	fdiv	fa0, fa0, fa1
beq_cont_10692:
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
	bne	a0, zero, beq_else_10693
	fli	fa0, l_8736
	b	beq_cont_10694
beq_else_10693:
	fdiv	fa1, fa1, fa2
	fabs	fa1, fa1
	fmv	fa0, fa1
	call	min_caml_atan
	fli	fa1, l_8734
	fmul	fa0, fa0, fa1
	fli	fa1, l_8735
	fdiv	fa0, fa0, fa1
beq_cont_10694:
	fsw	fa0, 76(sp)
	call	min_caml_floor
	flw	fa1, 76(sp)
	fsub	fa0, fa1, fa0
	fli	fa1, l_8740
	fli	fa2, l_8741
	flw	fa3, 72(sp)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	fli	fa1, l_8287
	fle	a0, fa1, fa0
	bne	a0, zero, beq_cont_10695
	fli	fa0, l_8287
beq_cont_10695:
	fli	fa1, l_8742
	fmul	fa0, fa1, fa0
	fli	fa1, l_8743
	fdiv	fa0, fa0, fa1
	lw	a0, 0(sp)
	fsw	fa0, 8(a0)
utexture_2781_ret:
	lw	ra, 80(sp)
	addi	sp, sp, 84
	jr	ra
add_light_2784:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a1, 8(s11)
	lw	a0, 4(s11)
	fli	fa3, l_8287
	fle	a2, fa0, fa3
	sw	a0, 0(sp)
	fsw	fa2, 4(sp)
	fsw	fa3, 8(sp)
	fsw	fa1, 12(sp)
	bne	a2, zero, beq_cont_10697
	call	vecaccum_2498
beq_cont_10697:
	flw	fa0, 8(sp)
	flw	fa1, 12(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, add_light_2784_ret
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
add_light_2784_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
trace_reflections_2788:
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
	blt	a0, zero, trace_reflections_2788_ret
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
	bne	a0, zero, beq_else_10699
	b	beq_cont_10700
beq_else_10699:
	lw	a0, 52(sp)
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lw	a1, 48(sp)
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 44(sp)
	bne	a0, a1, beq_cont_10701
	li	a0, 0
	lw	a1, 40(sp)
	lw	a1, 0(a1)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_cont_10702
	lw	a0, 32(sp)
	lw	a1, 0(a0)
	lw	a0, 28(sp)
	sw	a1, 56(sp)
	call	veciprod_2490
	flw	fa1, 20(sp)
	flw	fa2, 24(sp)
	fmul	fa3, fa2, fa1
	fmul	fa0, fa3, fa0
	lw	a0, 16(sp)
	lw	a1, 56(sp)
	fsw	fa0, 60(sp)
	call	veciprod_2490
	flw	fa1, 24(sp)
	fmul	fa1, fa1, fa0
	flw	fa0, 60(sp)
	flw	fa2, 8(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10702:
beq_cont_10701:
beq_cont_10700:
	lw	a0, 4(sp)
	addi	a0, a0, -1
	flw	fa0, 20(sp)
	flw	fa1, 8(sp)
	lw	a1, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
trace_reflections_2788_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
trace_ray_2793:
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
	bgt	a0, t6, trace_ray_2793_ret
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
	bne	a0, zero, beq_else_10703
	li	a0, -1
	lw	a1, 132(sp)
	slli	a2, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	bne	a1, zero, beq_else_10704
	b	trace_ray_2793_ret
beq_else_10704:
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	call	veciprod_2490
	fneg	fa0, fa0
	fli	fa1, l_8287
	fle	a0, fa0, fa1
	bne	a0, zero, trace_ray_2793_ret
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
	b	trace_ray_2793_ret
beq_else_10703:
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
	bne	a4, t6, beq_else_10707
	lw	a4, 124(sp)
	lw	s11, 96(sp)
	mv	a0, a4
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10708
beq_else_10707:
	li	t6, 2
	bne	a4, t6, beq_else_10709
	lw	s11, 92(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10710
beq_else_10709:
	lw	s11, 88(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10710:
beq_cont_10708:
	lw	a0, 84(sp)
	lw	a1, 80(sp)
	call	veccpy_2484
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
	call	veccpy_2484
	fli	fa0, l_8741
	lw	a0, 144(sp)
	flw	fa1, 0(a0)
	fle	a1, fa0, fa1
	bne	a1, zero, beq_else_10711
	li	a1, 0
	lw	a2, 132(sp)
	slli	a3, a2, 2
	lw	a4, 64(sp)
	add	t6, a4, a3
	sw	a1, 0(t6)
	b	beq_cont_10712
beq_else_10711:
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
	call	veccpy_2484
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 60(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa0, l_8784
	flw	fa1, 140(sp)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	call	vecscale_2505
	lw	a0, 132(sp)
	slli	a1, a0, 2
	lw	a2, 52(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2484
beq_cont_10712:
	fli	fa0, l_8787
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	fsw	fa0, 156(sp)
	call	veciprod_2490
	flw	fa1, 156(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 124(sp)
	lw	a1, 48(sp)
	call	vecaccum_2498
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
	bne	a0, zero, beq_cont_10713
	lw	a0, 48(sp)
	lw	a1, 120(sp)
	call	veciprod_2490
	fneg	fa0, fa0
	flw	fa1, 140(sp)
	fmul	fa0, fa0, fa1
	lw	a0, 124(sp)
	lw	a1, 120(sp)
	fsw	fa0, 164(sp)
	call	veciprod_2490
	fneg	fa1, fa0
	flw	fa0, 164(sp)
	flw	fa2, 160(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10713:
	lw	a0, 32(sp)
	lw	a1, 80(sp)
	call	veccpy_2484
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
	fli	fa0, l_8792
	flw	fa1, 116(sp)
	fle	a0, fa1, fa0
	bne	a0, zero, trace_ray_2793_ret
	lw	a0, 132(sp)
	li	t6, 4
	blt	a0, t6, bge_else_10714
	b	bge_cont_10715
bge_else_10714:
	addi	a1, a0, 1
	li	a2, -1
	slli	a1, a1, 2
	lw	a3, 128(sp)
	add	t6, a3, a1
	sw	a2, 0(t6)
bge_cont_10715:
	lw	a1, 136(sp)
	li	t6, 2
	bne	a1, t6, beq_cont_10716
	fli	fa0, l_8288
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
beq_cont_10716:
trace_ray_2793_ret:
	lw	ra, 168(sp)
	addi	sp, sp, 172
	jr	ra
trace_diffuse_ray_2799:
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
	bne	a0, zero, beq_else_10718
	b	trace_diffuse_ray_2799_ret
beq_else_10718:
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
	bne	a3, t6, beq_else_10720
	lw	s11, 44(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10721
beq_else_10720:
	li	t6, 2
	bne	a3, t6, beq_else_10722
	lw	s11, 40(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10723
beq_else_10722:
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10723:
beq_cont_10721:
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
	bne	a0, zero, trace_diffuse_ray_2799_ret
	lw	a0, 16(sp)
	lw	a1, 12(sp)
	call	veciprod_2490
	fneg	fa0, fa0
	fli	fa1, l_8287
	fle	a0, fa0, fa1
	bne	a0, zero, beq_else_10724
	b	beq_cont_10725
beq_else_10724:
	fli	fa0, l_8287
beq_cont_10725:
	flw	fa1, 8(sp)
	fmul	fa0, fa1, fa0
	lw	a0, 60(sp)
	flw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 4(sp)
	lw	a1, 0(sp)
	call	vecaccum_2498
trace_diffuse_ray_2799_ret:
	lw	ra, 68(sp)
	addi	sp, sp, 72
	jr	ra
iter_trace_diffuse_rays_2802:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a4, 4(s11)
	blt	a3, zero, iter_trace_diffuse_rays_2802_ret
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
	call	veciprod_2490
	fli	fa1, l_8287
	fle	a0, fa1, fa0
	bne	a0, zero, beq_else_10726
	lw	a0, 20(sp)
	addi	a1, a0, 1
	slli	a1, a1, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8812
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	beq_cont_10727
beq_else_10726:
	lw	a0, 20(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	fli	fa1, l_8810
	fdiv	fa0, fa0, fa1
	lw	s11, 12(sp)
	mv	a0, a1
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10727:
	lw	a0, 20(sp)
	addi	a3, a0, -2
	lw	a0, 16(sp)
	lw	a1, 4(sp)
	lw	a2, 0(sp)
	lw	s11, 8(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
iter_trace_diffuse_rays_2802_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
trace_diffuse_ray_80percent_2811:
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
	bne	a0, zero, beq_else_10728
	b	beq_cont_10729
beq_else_10728:
	lw	s1, 0(a7)
	sw	s1, 32(sp)
	mv	a1, a2
	mv	a0, a3
	call	veccpy_2484
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
beq_cont_10729:
	lw	a0, 28(sp)
	li	t6, 1
	bne	a0, t6, beq_else_10730
	b	beq_cont_10731
beq_else_10730:
	lw	a1, 24(sp)
	lw	a2, 4(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 36(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2484
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
beq_cont_10731:
	lw	a0, 28(sp)
	li	t6, 2
	bne	a0, t6, beq_else_10732
	b	beq_cont_10733
beq_else_10732:
	lw	a1, 24(sp)
	lw	a2, 8(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 40(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2484
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
beq_cont_10733:
	lw	a0, 28(sp)
	li	t6, 3
	bne	a0, t6, beq_else_10734
	b	beq_cont_10735
beq_else_10734:
	lw	a1, 24(sp)
	lw	a2, 12(a1)
	lw	a3, 20(sp)
	lw	a4, 16(sp)
	sw	a2, 44(sp)
	mv	a1, a4
	mv	a0, a3
	call	veccpy_2484
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
beq_cont_10735:
	lw	a0, 28(sp)
	li	t6, 4
	bne	a0, t6, beq_else_10736
	b	trace_diffuse_ray_80percent_2811_ret
beq_else_10736:
	lw	a0, 24(sp)
	lw	a0, 16(a0)
	lw	a1, 20(sp)
	lw	a2, 16(sp)
	sw	a0, 48(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2484
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
trace_diffuse_ray_80percent_2811_ret:
	lw	ra, 52(sp)
	addi	sp, sp, 56
	jr	ra
calc_diffuse_using_1point_2815:
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
	call	veccpy_2484
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
	call	vecaccumv_2508
calc_diffuse_using_1point_2815_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_diffuse_using_5points_2818:
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
	call	veccpy_2484
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 28(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2502
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 20(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2502
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 16(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2502
	lw	a0, 32(sp)
	slli	a1, a0, 2
	lw	a2, 12(sp)
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a2, 24(sp)
	mv	a0, a2
	call	vecadd_2502
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
	call	vecaccumv_2508
calc_diffuse_using_5points_2818_ret:
	lw	ra, 36(sp)
	addi	sp, sp, 40
	jr	ra
do_without_neighbors_2824:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lw	a2, 4(s11)
	li	t6, 4
	bgt	a1, t6, do_without_neighbors_2824_ret
	lw	a3, 12(a0)
	lw	a4, 8(a0)
	slli	a5, a1, 2
	add	t6, a4, a5
	lw	a4, 0(t6)
	blt	a4, zero, do_without_neighbors_2824_ret
	slli	a4, a1, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	a3, zero, beq_else_10738
	b	beq_cont_10739
beq_else_10738:
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10739:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
do_without_neighbors_2824_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
neighbors_exist_2827:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a2, 4(s11)
	lw	a3, 4(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else_10740
	li	a0, 0
	b	neighbors_exist_2827_ret
ble_else_10740:
	bgt	a1, zero, ble_else_10741
	li	a0, 0
	b	neighbors_exist_2827_ret
ble_else_10741:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else_10742
	li	a0, 0
	b	neighbors_exist_2827_ret
ble_else_10742:
	bgt	a0, zero, ble_else_10743
	li	a0, 0
	b	neighbors_exist_2827_ret
ble_else_10743:
	li	a0, 1
neighbors_exist_2827_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
neighbors_are_available_2834:
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
	bne	a1, a5, beq_else_10744
	slli	a1, a0, 2
	add	t6, a3, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10745
	addi	a1, a0, -1
	slli	a1, a1, 2
	add	t6, a2, a1
	lw	a1, 0(t6)
	lw	a1, 8(a1)
	slli	a3, a4, 2
	add	t6, a1, a3
	lw	a1, 0(t6)
	bne	a1, a5, beq_else_10746
	addi	a0, a0, 1
	slli	a0, a0, 2
	add	t6, a2, a0
	lw	a0, 0(t6)
	lw	a0, 8(a0)
	slli	a1, a4, 2
	add	t6, a0, a1
	lw	a0, 0(t6)
	bne	a0, a5, beq_else_10747
	li	a0, 1
	b	neighbors_are_available_2834_ret
beq_else_10747:
	li	a0, 0
	b	neighbors_are_available_2834_ret
beq_else_10746:
	li	a0, 0
	b	neighbors_are_available_2834_ret
beq_else_10745:
	li	a0, 0
	b	neighbors_are_available_2834_ret
beq_else_10744:
	li	a0, 0
neighbors_are_available_2834_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
try_exploit_neighbors_2840:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	slli	s1, a0, 2
	add	t6, a3, s1
	lw	s1, 0(t6)
	li	t6, 4
	bgt	a5, t6, try_exploit_neighbors_2840_ret
	lw	s2, 12(s1)
	lw	s1, 8(s1)
	slli	s3, a5, 2
	add	t6, s1, s3
	lw	s1, 0(t6)
	blt	s1, zero, try_exploit_neighbors_2840_ret
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
	call	neighbors_are_available_2834
	bne	a0, zero, beq_else_10748
	lw	a0, 36(sp)
	slli	a0, a0, 2
	lw	a1, 32(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	lw	a1, 24(sp)
	lw	s11, 28(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	try_exploit_neighbors_2840_ret
beq_else_10748:
	lw	a4, 24(sp)
	slli	a0, a4, 2
	lw	a1, 20(sp)
	add	t6, a1, a0
	lw	a0, 0(t6)
	bne	a0, zero, beq_else_10749
	b	beq_cont_10750
beq_else_10749:
	lw	a0, 36(sp)
	lw	a1, 12(sp)
	lw	a2, 32(sp)
	lw	a3, 8(sp)
	lw	s11, 16(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10750:
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
try_exploit_neighbors_2840_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
write_ppm_header_2847:
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
write_ppm_header_2847_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
write_rgb_2851:
	addi	sp, sp, -8
	sw	ra, 4(sp)
	lw	a0, 4(s11)
	flw	fa0, 0(a0)
	sw	a0, 0(sp)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10751
	blt	a0, zero, bge_else_10753
	b	bge_cont_10754
bge_else_10753:
	li	a0, 0
bge_cont_10754:
	b	ble_cont_10752
ble_else_10751:
	li	a0, 255
ble_cont_10752:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 4(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10755
	blt	a0, zero, bge_else_10757
	b	bge_cont_10758
bge_else_10757:
	li	a0, 0
bge_cont_10758:
	b	ble_cont_10756
ble_else_10755:
	li	a0, 255
ble_cont_10756:
	call	min_caml_print_int
	li	a0, 32
	call	min_caml_print_char
	lw	a0, 0(sp)
	flw	fa0, 8(a0)
	call	min_caml_int_of_float
	li	t6, 255
	bgt	a0, t6, ble_else_10759
	blt	a0, zero, bge_else_10761
	b	bge_cont_10762
bge_else_10761:
	li	a0, 0
bge_cont_10762:
	b	ble_cont_10760
ble_else_10759:
	li	a0, 255
ble_cont_10760:
	call	min_caml_print_int
	li	a0, 10
	call	min_caml_print_char
write_rgb_2851_ret:
	lw	ra, 4(sp)
	addi	sp, sp, 8
	jr	ra
pretrace_diffuse_rays_2853:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	lw	a2, 24(s11)
	lw	a3, 20(s11)
	lw	a4, 16(s11)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	li	t6, 4
	bgt	a1, t6, pretrace_diffuse_rays_2853_ret
	lw	s1, 28(a0)
	lw	s2, 24(a0)
	lw	s3, 20(a0)
	lw	s4, 12(a0)
	lw	s5, 8(a0)
	lw	s6, 4(a0)
	slli	s7, a1, 2
	add	t6, s5, s7
	lw	s5, 0(t6)
	blt	s5, zero, pretrace_diffuse_rays_2853_ret
	slli	s5, a1, 2
	add	t6, s4, s5
	lw	s4, 0(t6)
	sw	a0, 0(sp)
	sw	s11, 4(sp)
	sw	a1, 8(sp)
	bne	s4, zero, beq_else_10763
	b	beq_cont_10764
beq_else_10763:
	lw	s2, 0(s2)
	fli	fa0, l_8287
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
	call	veccpy_2484
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
	call	veccpy_2484
beq_cont_10764:
	lw	a0, 8(sp)
	addi	a1, a0, 1
	lw	a0, 0(sp)
	lw	s11, 4(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_diffuse_rays_2853_ret:
	lw	ra, 44(sp)
	addi	sp, sp, 48
	jr	ra
pretrace_pixels_2856:
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
	blt	a1, zero, pretrace_pixels_2856_ret
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
	call	vecunit_sgn_2487
	fli	fa0, l_8287
	lw	a0, 32(sp)
	fsw	fa0, 0(a0)
	fsw	fa0, 4(a0)
	fsw	fa0, 8(a0)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	fsw	fa0, 60(sp)
	mv	a0, a1
	mv	a1, a2
	call	veccpy_2484
	li	a0, 0
	fli	fa0, l_8288
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
	call	veccpy_2484
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
	blt	a0, t6, bge_else_10765
	addi	a2, a0, -5
	b	bge_cont_10766
bge_else_10765:
	mv	a2, a0
bge_cont_10766:
	flw	fa0, 48(sp)
	flw	fa1, 40(sp)
	flw	fa2, 36(sp)
	lw	a0, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
pretrace_pixels_2856_ret:
	lw	ra, 64(sp)
	addi	sp, sp, 68
	jr	ra
pretrace_line_2863:
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
pretrace_line_2863_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
scan_pixel_2867:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a5, 24(s11)
	lw	a6, 20(s11)
	lw	a7, 16(s11)
	lw	s1, 12(s11)
	lw	s2, 8(s11)
	lw	s3, 4(s11)
	lw	s2, 0(s2)
	bgt	s2, a0, ble_else_10767
	b	scan_pixel_2867_ret
ble_else_10767:
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
	call	veccpy_2484
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 24(sp)
	lw	s11, 36(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	bne	a0, zero, beq_else_10769
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
	b	beq_cont_10770
beq_else_10769:
	li	a5, 0
	lw	a0, 32(sp)
	lw	a1, 28(sp)
	lw	a2, 8(sp)
	lw	a3, 20(sp)
	lw	a4, 24(sp)
	lw	s11, 12(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
beq_cont_10770:
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
scan_pixel_2867_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
scan_line_2873:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	lw	a5, 12(s11)
	lw	a6, 8(s11)
	lw	a7, 4(s11)
	lw	s1, 4(a7)
	bgt	s1, a0, ble_else_10771
	b	scan_line_2873_ret
ble_else_10771:
	lw	a7, 4(a7)
	addi	a7, a7, -1
	sw	s11, 0(sp)
	sw	a4, 4(sp)
	sw	a3, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	sw	a5, 24(sp)
	bgt	a7, a0, ble_else_10773
	b	ble_cont_10774
ble_else_10773:
	addi	a7, a0, 1
	mv	a2, a4
	mv	a1, a7
	mv	a0, a3
	mv	s11, a6
	lw	ra, 0(s11)
	jalr	ra, ra, 0
ble_cont_10774:
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
	blt	a1, t6, bge_else_10775
	addi	a4, a1, -5
	b	bge_cont_10776
bge_else_10775:
	mv	a4, a1
bge_cont_10776:
	lw	a1, 12(sp)
	lw	a2, 8(sp)
	lw	a3, 16(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
scan_line_2873_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
create_float5x3array_2879:
	addi	sp, sp, -12
	sw	ra, 8(sp)
	li	a0, 3
	fli	fa0, l_8287
	fsw	fa0, 0(sp)
	call	min_caml_create_array
	mv	a1, a0
	li	a0, 5
	call	min_caml_create_array
	li	a1, 3
	flw	fa0, 0(sp)
	sw	a0, 4(sp)
	mv	a0, a1
	call	min_caml_create_array
	lw	a1, 4(sp)
	sw	a0, 4(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 4(sp)
	sw	a0, 8(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 4(sp)
	sw	a0, 12(a1)
	li	a0, 3
	flw	fa0, 0(sp)
	call	min_caml_create_array
	lw	a1, 4(sp)
	sw	a0, 16(a1)
	mv	a0, a1
create_float5x3array_2879_ret:
	lw	ra, 8(sp)
	addi	sp, sp, 12
	jr	ra
create_pixel_2881:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	li	a0, 3
	fli	fa0, l_8287
	call	min_caml_create_array
	sw	a0, 0(sp)
	call	create_float5x3array_2879
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
	call	create_float5x3array_2879
	sw	a0, 16(sp)
	call	create_float5x3array_2879
	li	a1, 1
	li	a2, 0
	sw	a0, 20(sp)
	mv	a0, a1
	mv	a1, a2
	call	min_caml_create_array
	sw	a0, 24(sp)
	call	create_float5x3array_2879
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
create_pixel_2881_ret:
	lw	ra, 28(sp)
	addi	sp, sp, 32
	jr	ra
init_line_elements_2883:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	blt	a1, zero, bge_else_10778
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2881
	lw	a1, 4(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a0, a1, -1
	blt	a0, zero, bge_else_10779
	sw	a0, 8(sp)
	call	create_pixel_2881
	lw	a1, 8(sp)
	slli	a2, a1, 2
	lw	a3, 0(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2883
	b	init_line_elements_2883_ret
bge_else_10779:
	mv	a0, a3
	b	init_line_elements_2883_ret
bge_else_10778:
init_line_elements_2883_ret:
	lw	ra, 12(sp)
	addi	sp, sp, 16
	jr	ra
create_pixelline_2886:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	lw	a0, 4(s11)
	lw	a1, 0(a0)
	sw	a0, 0(sp)
	sw	a1, 4(sp)
	call	create_pixel_2881
	mv	a1, a0
	lw	a0, 4(sp)
	call	min_caml_create_array
	lw	a1, 0(sp)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	blt	a1, zero, bge_else_10780
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	call	create_pixel_2881
	lw	a1, 12(sp)
	slli	a2, a1, 2
	lw	a3, 8(sp)
	add	t6, a3, a2
	sw	a0, 0(t6)
	addi	a1, a1, -1
	mv	a0, a3
	call	init_line_elements_2883
	b	create_pixelline_2886_ret
bge_else_10780:
create_pixelline_2886_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
adjust_position_2890:
	addi	sp, sp, -20
	sw	ra, 16(sp)
	fmul	fa0, fa0, fa0
	fli	fa2, l_8792
	fadd	fa0, fa0, fa2
	fsqrt	fa0, fa0
	fli	fa2, l_8288
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
adjust_position_2890_ret:
	lw	ra, 16(sp)
	addi	sp, sp, 20
	jr	ra
calc_dirvec_2893:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	li	t6, 5
	blt	a0, t6, bge_else_10781
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	fli	fa3, l_8288
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
	b	calc_dirvec_2893_ret
bge_else_10781:
	fsw	fa2, 0(sp)
	sw	a2, 4(sp)
	sw	a1, 8(sp)
	sw	s11, 12(sp)
	fsw	fa3, 16(sp)
	sw	a0, 20(sp)
	fmv	fa0, fa1
	fmv	fa1, fa2
	call	adjust_position_2890
	lw	a0, 20(sp)
	addi	a0, a0, 1
	flw	fa1, 16(sp)
	fsw	fa0, 24(sp)
	sw	a0, 28(sp)
	call	adjust_position_2890
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
calc_dirvec_2893_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvecs_2901:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvecs_2901_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a1, 16(sp)
	sw	a3, 20(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8947
	fmul	fa0, fa0, fa1
	fli	fa2, l_8948
	fsub	fa2, fa0, fa2
	li	a0, 0
	fli	fa0, l_8287
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
	fli	fa1, l_8792
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
	blt	a1, t6, bge_cont_10783
	addi	a1, a1, -5
bge_cont_10783:
	flw	fa0, 8(sp)
	lw	a2, 12(sp)
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvecs_2901_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
calc_dirvec_rows_2906:
	addi	sp, sp, -24
	sw	ra, 20(sp)
	lw	a3, 4(s11)
	blt	a0, zero, calc_dirvec_rows_2906_ret
	sw	s11, 0(sp)
	sw	a0, 4(sp)
	sw	a2, 8(sp)
	sw	a1, 12(sp)
	sw	a3, 16(sp)
	call	min_caml_float_of_int
	fli	fa1, l_8947
	fmul	fa0, fa0, fa1
	fli	fa1, l_8948
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
	blt	a1, t6, bge_cont_10784
	addi	a1, a1, -5
bge_cont_10784:
	lw	a2, 8(sp)
	addi	a2, a2, 4
	lw	s11, 0(sp)
	lw	ra, 0(s11)
	jalr	ra, ra, 0
calc_dirvec_rows_2906_ret:
	lw	ra, 20(sp)
	addi	sp, sp, 24
	jr	ra
create_dirvec_elements_2912:
	addi	sp, sp, -36
	sw	ra, 32(sp)
	lw	a2, 4(s11)
	blt	a1, zero, create_dirvec_elements_2912_ret
	li	a3, 3
	fli	fa0, l_8287
	sw	s11, 0(sp)
	fsw	fa0, 4(sp)
	sw	a0, 8(sp)
	sw	a1, 12(sp)
	sw	a2, 16(sp)
	mv	a0, a3
	call	min_caml_create_array
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
	blt	a0, zero, create_dirvec_elements_2912_ret
	li	a1, 3
	flw	fa0, 4(sp)
	sw	a0, 24(sp)
	mv	a0, a1
	call	min_caml_create_array
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
create_dirvec_elements_2912_ret:
	lw	ra, 32(sp)
	addi	sp, sp, 36
	jr	ra
create_dirvecs_2915:
	addi	sp, sp, -44
	sw	ra, 40(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, create_dirvecs_2915_ret
	li	a4, 120
	li	a5, 3
	fli	fa0, l_8287
	sw	s11, 0(sp)
	sw	a3, 4(sp)
	fsw	fa0, 8(sp)
	sw	a2, 12(sp)
	sw	a0, 16(sp)
	sw	a4, 20(sp)
	sw	a1, 24(sp)
	mv	a0, a5
	call	min_caml_create_array
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
	call	min_caml_create_array
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
create_dirvecs_2915_ret:
	lw	ra, 40(sp)
	addi	sp, sp, 44
	jr	ra
init_dirvec_constants_2917:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a1, zero, init_dirvec_constants_2917_ret
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
	blt	a0, zero, init_dirvec_constants_2917_ret
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
init_dirvec_constants_2917_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
init_vecset_constants_2920:
	addi	sp, sp, -28
	sw	ra, 24(sp)
	lw	a1, 16(s11)
	lw	a2, 12(s11)
	lw	a3, 8(s11)
	lw	a4, 4(s11)
	blt	a0, zero, init_vecset_constants_2920_ret
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
	blt	a0, zero, init_vecset_constants_2920_ret
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
init_vecset_constants_2920_ret:
	lw	ra, 24(sp)
	addi	sp, sp, 28
	jr	ra
setup_rect_reflection_2931:
	addi	sp, sp, -108
	sw	ra, 104(sp)
	lw	a2, 20(s11)
	lw	a3, 16(s11)
	lw	a4, 12(s11)
	lw	a5, 8(s11)
	lw	a6, 4(s11)
	slli	a0, a0, 2
	lw	a7, 0(a3)
	fli	fa0, l_8288
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
	fli	fa5, l_8287
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
	call	min_caml_create_array
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
	call	min_caml_create_array
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
	call	min_caml_create_array
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
setup_rect_reflection_2931_ret:
	lw	ra, 104(sp)
	addi	sp, sp, 108
	jr	ra
setup_surface_reflection_2934:
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
	fli	fa0, l_8288
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
	call	veciprod_2490
	fli	fa1, l_8381
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
	fli	fa1, l_8287
	fsw	fa0, 36(sp)
	fsw	fa3, 40(sp)
	fsw	fa2, 44(sp)
	fmv	fa0, fa1
	call	min_caml_create_array
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
setup_surface_reflection_2934_ret:
	lw	ra, 56(sp)
	addi	sp, sp, 60
	jr	ra
setup_reflections_2937:
	addi	sp, sp, -4
	sw	ra, 0(sp)
	lw	a1, 12(s11)
	lw	a2, 8(s11)
	lw	a3, 4(s11)
	blt	a0, zero, setup_reflections_2937_ret
	slli	a4, a0, 2
	add	t6, a3, a4
	lw	a3, 0(t6)
	lw	a4, 28(a3)
	lw	a5, 8(a3)
	lw	a6, 4(a3)
	li	t6, 2
	bne	a5, t6, setup_reflections_2937_ret
	fli	fa0, l_8288
	flw	fa1, 0(a4)
	fle	a4, fa0, fa1
	bne	a4, zero, setup_reflections_2937_ret
	li	t6, 1
	bne	a6, t6, beq_else_10787
	mv	a1, a3
	mv	s11, a2
	lw	ra, 0(s11)
	jalr	ra, ra, 0
	b	setup_reflections_2937_ret
beq_else_10787:
	li	t6, 2
	bne	a6, t6, setup_reflections_2937_ret
	mv	s11, a1
	mv	a1, a3
	lw	ra, 0(s11)
	jalr	ra, ra, 0
setup_reflections_2937_ret:
	lw	ra, 0(sp)
	addi	sp, sp, 4
	jr	ra
rt_2939:
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
	fli	fa0, l_9054
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
	call	veccpy_2484
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
rt_2939_ret:
	lw	ra, 76(sp)
	addi	sp, sp, 80
	jr	ra
	.data
l_9054:	# 128.000000
	.word	1124073472
l_8948:	# 0.900000
	.word	1063675494
l_8947:	# 0.200000
	.word	1045220557
l_8812:	# -150.000000
	.word	-1021968384
l_8810:	# 150.000000
	.word	1125515264
l_8792:	# 0.100000
	.word	1036831949
l_8787:	# -2.000000
	.word	-1073741824
l_8784:	# 0.003906
	.word	998244352
l_8760:	# 20.000000
	.word	1101004800
l_8759:	# 0.050000
	.word	1028443341
l_8753:	# 0.250000
	.word	1048576000
l_8749:	# 10.000000
	.word	1092616192
l_8743:	# 0.300000
	.word	1050253722
l_8742:	# 255.000000
	.word	1132396544
l_8741:	# 0.500000
	.word	1056964608
l_8740:	# 0.150000
	.word	1041865114
l_8736:	# 15.000000
	.word	1097859072
l_8735:	# 3.141593
	.word	1078530011
l_8734:	# 30.000000
	.word	1106247680
l_8733:	# 0.000100
	.word	953267991
l_8662:	# 100000000.000000
	.word	1287568416
l_8658:	# 1000000000.000000
	.word	1315859240
l_8634:	# -0.100000
	.word	-1110651699
l_8622:	# 0.010000
	.word	1008981770
l_8621:	# -0.200000
	.word	-1102263091
l_8381:	# 2.000000
	.word	1073741824
l_8347:	# -200.000000
	.word	-1018691584
l_8345:	# 200.000000
	.word	1128792064
l_8344:	# 0.017453
	.word	1016003125
l_8289:	# -1.000000
	.word	-1082130432
l_8288:	# 1.000000
	.word	1065353216
l_8287:	# 0.000000
	.word	0
