	.arch armv6
	.fpu vfp
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"process.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "process.c"
	.align	2
	.global	assign_head
	.syntax unified
	.arm
	.type	assign_head, %function
assign_head:
.LFB6:
	.loc 1 32 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	.loc 1 33 17
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	.loc 1 34 16
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #4]
	.loc 1 35 18
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #8]
	.loc 1 36 5
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE6:
	.size	assign_head, .-assign_head
	.align	2
	.global	compare_uchar
	.syntax unified
	.arm
	.type	compare_uchar, %function
compare_uchar:
.LFB7:
	.loc 1 40 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 41 12
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 41 34
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 41 32
	sub	r3, r2, r3
	.loc 1 42 5
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE7:
	.size	compare_uchar, .-compare_uchar
	.align	2
	.global	img_valid
	.syntax unified
	.arm
	.type	img_valid, %function
img_valid:
.LFB8:
	.loc 1 46 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	.loc 1 47 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L5
	.loc 1 47 25 discriminator 2
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	.loc 1 47 19 discriminator 2
	cmp	r3, #0
	beq	.L5
	.loc 1 47 48 discriminator 4
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	.loc 1 47 42 discriminator 4
	cmp	r3, #3
	beq	.L6
.L5:
	.loc 1 47 71 discriminator 5
	mov	r3, #0
	.loc 1 47 71 is_stmt 0
	b	.L7
.L6:
	.loc 1 48 11 is_stmt 1
	mov	r3, #1
.L7:
	.loc 1 49 5
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE8:
	.size	img_valid, .-img_valid
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Image is null.\000"
	.text
	.align	2
	.global	free_image
	.syntax unified
	.arm
	.type	free_image, %function
free_image:
.LFB9:
	.loc 1 53 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	.loc 1 56 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L9
	.loc 1 57 9
	ldr	r3, .L11
	ldr	r3, [r3]
	mov	r2, #14
	mov	r1, #1
	ldr	r0, .L11+4
	bl	fwrite
	.loc 1 58 9
	b	.L8
.L9:
	.loc 1 63 13
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	.loc 1 63 5
	mov	r0, r3
	bl	free
	.loc 1 64 17
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #12]
	.loc 1 67 5
	ldr	r0, [fp, #-8]
	bl	free
.L8:
	.loc 1 68 1
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	stderr
	.word	.LC0
	.cfi_endproc
.LFE9:
	.size	free_image, .-free_image
	.section	.rodata
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"File %s could not be opened.\012\000"
	.align	2
.LC3:
	.ascii	"%3s %d %d %d\000"
	.align	2
.LC4:
	.ascii	"HQ8\000"
	.align	2
.LC5:
	.ascii	"File %s is an invalid image\012\000"
	.align	2
.LC6:
	.ascii	"Error: Failed to read binary image data\012\000"
	.align	2
.LC7:
	.ascii	"File %s could not be read.\012\000"
	.text
	.align	2
	.global	load_image
	.syntax unified
	.arm
	.type	load_image, %function
load_image:
.LFB10:
	.loc 1 73 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	.loc 1 75 15
	ldr	r1, .L23
	ldr	r0, [fp, #-32]
	bl	fopen64
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 76 8
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L14
	.loc 1 77 9
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r1, .L23+8
	mov	r0, r3
	bl	fprintf
	.loc 1 78 15
	mov	r3, #0
	b	.L22
.L14:
	.loc 1 83 19
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 86 11
	mov	r0, #16
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	.loc 1 87 7
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L16
	.loc 1 87 27 discriminator 1
	mov	r3, #0
	.loc 1 87 27 is_stmt 0
	b	.L22
.L16:
	.loc 1 88 5 is_stmt 1
	sub	r1, fp, #24
	sub	r2, fp, #16
	sub	r3, fp, #28
	str	r3, [sp, #4]
	sub	r3, fp, #20
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, .L23+12
	ldr	r0, [fp, #-8]
	bl	__isoc99_fscanf
	.loc 1 89 9
	sub	r3, fp, #16
	ldr	r1, .L23+16
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	.loc 1 89 7 discriminator 1
	cmp	r3, #0
	bne	.L17
	.loc 1 89 50 discriminator 1
	ldr	r3, [fp, #-28]
	.loc 1 89 39 discriminator 1
	cmp	r3, #3
	beq	.L18
.L17:
	.loc 1 91 9
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r1, .L23+20
	mov	r0, r3
	bl	fprintf
	.loc 1 92 15
	mov	r3, #0
	b	.L22
.L18:
	.loc 1 94 5
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r0, [fp, #-12]
	bl	assign_head
	.loc 1 95 33
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	.loc 1 95 19
	mov	r1, #3
	mov	r0, r3
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	.loc 1 95 17 discriminator 1
	ldr	r3, [fp, #-12]
	str	r2, [r3, #12]
	.loc 1 96 11
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #12]
	.loc 1 96 7
	cmp	r3, #0
	bne	.L19
	.loc 1 98 9
	ldr	r0, [fp, #-12]
	bl	free_image
	.loc 1 99 15
	mov	r3, #0
	b	.L22
.L19:
	.loc 1 101 5
	ldr	r0, [fp, #-8]
	bl	fgetc
	.loc 1 105 17
	ldr	r3, [fp, #-12]
	ldr	r0, [r3, #12]
	.loc 1 105 52
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	.loc 1 105 8
	mov	r2, r3
	ldr	r3, [fp, #-8]
	mov	r1, #3
	bl	fread
	mov	r1, r0
	.loc 1 105 78 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	.loc 1 105 7 discriminator 1
	cmp	r1, r3
	beq	.L20
	.loc 1 107 9
	ldr	r3, .L23+4
	ldr	r3, [r3]
	mov	r2, #40
	mov	r1, #1
	ldr	r0, .L23+24
	bl	fwrite
.L20:
	.loc 1 110 5
	ldr	r0, [fp, #-8]
	bl	fclose
	.loc 1 112 8
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L21
	.loc 1 113 9
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r1, .L23+28
	mov	r0, r3
	bl	fprintf
	.loc 1 114 15
	mov	r3, #0
	b	.L22
.L21:
	.loc 1 117 12
	ldr	r3, [fp, #-12]
.L22:
	.loc 1 118 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L24:
	.align	2
.L23:
	.word	.LC1
	.word	stderr
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.cfi_endproc
.LFE10:
	.size	load_image, .-load_image
	.section	.rodata
	.align	2
.LC8:
	.ascii	"w\000"
	.align	2
.LC9:
	.ascii	"File to be saved %s could not be opened.\012\000"
	.align	2
.LC10:
	.ascii	"HQ8 %d %d %d\012\000"
	.align	2
.LC11:
	.ascii	"Fail to write the file\012\000"
	.align	2
.LC12:
	.ascii	"Fail while writting the pixels, write %zu/%zu pixel"
	.ascii	"s\012\000"
	.text
	.align	2
	.global	save_image
	.syntax unified
	.arm
	.type	save_image, %function
save_image:
.LFB11:
	.loc 1 122 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	.loc 1 124 15
	ldr	r1, .L31
	ldr	r0, [fp, #-28]
	bl	fopen64
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 125 8
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L26
	.loc 1 126 9
	ldr	r3, .L31+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-28]
	ldr	r1, .L31+8
	mov	r0, r3
	bl	fprintf
	.loc 1 127 15
	mov	r3, #0
	b	.L27
.L26:
	.loc 1 129 9
	ldr	r0, [fp, #-24]
	bl	img_valid
	mov	r3, r0
	.loc 1 129 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 129 7 discriminator 1
	cmp	r3, #0
	beq	.L28
	.loc 1 129 31 discriminator 1
	mov	r3, #0
	.loc 1 129 31 is_stmt 0
	b	.L27
.L28:
	.loc 1 131 40 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #4]
	.loc 1 131 52
	ldr	r3, [fp, #-24]
	ldr	r1, [r3]
	.loc 1 131 65
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	.loc 1 131 8
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, .L31+12
	ldr	r0, [fp, #-8]
	bl	fprintf
	mov	r3, r0
	.loc 1 131 7 discriminator 1
	cmp	r3, #0
	bge	.L29
	.loc 1 133 9
	ldr	r3, .L31+4
	ldr	r3, [r3]
	mov	r2, #23
	mov	r1, #1
	ldr	r0, .L31+16
	bl	fwrite
	.loc 1 134 15
	mov	r3, #0
	b	.L27
.L29:
	.loc 1 137 39
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	.loc 1 137 52
	ldr	r2, [fp, #-24]
	ldr	r2, [r2]
	.loc 1 137 47
	mul	r3, r2, r3
	.loc 1 137 12
	str	r3, [fp, #-12]
	.loc 1 138 32
	ldr	r3, [fp, #-24]
	ldr	r0, [r3, #12]
	.loc 1 138 22
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mov	r1, #3
	bl	fwrite
	str	r0, [fp, #-16]
	.loc 1 139 7
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcs	.L30
	.loc 1 141 9
	ldr	r3, .L31+4
	ldr	r0, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r1, .L31+20
	bl	fprintf
	.loc 1 142 15
	mov	r3, #0
	b	.L27
.L30:
	.loc 1 144 5
	ldr	r0, [fp, #-8]
	bl	fclose
	.loc 1 145 11
	mov	r3, #1
.L27:
	.loc 1 146 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L32:
	.align	2
.L31:
	.word	.LC8
	.word	stderr
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.cfi_endproc
.LFE11:
	.size	save_image, .-save_image
	.align	2
	.global	copy_image
	.syntax unified
	.arm
	.type	copy_image, %function
copy_image:
.LFB12:
	.loc 1 151 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	.loc 1 153 26
	mov	r0, #16
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 154 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L34
	.loc 1 154 28 discriminator 1
	mov	r3, #0
	.loc 1 154 28 is_stmt 0
	b	.L35
.L34:
	.loc 1 155 29 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #4]
	.loc 1 155 44
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	.loc 1 155 60
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	.loc 1 155 5
	ldr	r0, [fp, #-8]
	bl	assign_head
	.loc 1 156 33
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 156 50
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #4]
	.loc 1 156 42
	mul	r3, r2, r3
	.loc 1 156 20
	mov	r1, #3
	mov	r0, r3
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	.loc 1 156 18 discriminator 1
	ldr	r3, [fp, #-8]
	str	r2, [r3, #12]
	.loc 1 157 12
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	.loc 1 157 7
	cmp	r3, #0
	bne	.L36
	.loc 1 159 9
	ldr	r0, [fp, #-8]
	bl	free_image
	.loc 1 160 15
	mov	r3, #0
	b	.L35
.L36:
	.loc 1 162 42
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	.loc 1 162 58
	ldr	r2, [fp, #-16]
	ldr	r2, [r2]
	.loc 1 162 50
	mul	r3, r2, r3
	.loc 1 162 12
	str	r3, [fp, #-12]
	.loc 1 163 16
	ldr	r3, [fp, #-8]
	ldr	r0, [r3, #12]
	.loc 1 163 32
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	.loc 1 163 5
	ldr	r2, [fp, #-12]
	mov	r1, r3
	bl	memcpy
	.loc 1 164 12
	ldr	r3, [fp, #-8]
.L35:
	.loc 1 165 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE12:
	.size	copy_image, .-copy_image
	.align	2
	.global	apply_MEDIAN
	.syntax unified
	.arm
	.type	apply_MEDIAN, %function
apply_MEDIAN:
.LFB13:
	.loc 1 172 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #88
	str	r0, [fp, #-88]
	.loc 1 174 9
	ldr	r0, [fp, #-88]
	bl	img_valid
	mov	r3, r0
	.loc 1 174 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 174 7 discriminator 1
	cmp	r3, #0
	beq	.L38
	.loc 1 174 35 discriminator 1
	mov	r3, #0
	.loc 1 174 35 is_stmt 0
	b	.L39
.L38:
	.loc 1 175 25 is_stmt 1
	ldr	r0, [fp, #-88]
	bl	copy_image
	str	r0, [fp, #-28]
	.loc 1 176 9
	ldr	r0, [fp, #-28]
	bl	img_valid
	mov	r3, r0
	.loc 1 176 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 176 7 discriminator 1
	cmp	r3, #0
	beq	.L40
	.loc 1 176 31 discriminator 1
	mov	r3, #0
	.loc 1 176 31 is_stmt 0
	b	.L39
.L40:
.LBB2:
	.loc 1 177 13 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 177 5
	b	.L41
.L49:
.LBB3:
	.loc 1 179 17
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 179 9
	b	.L42
.L48:
.LBB4:
	.loc 1 182 17
	mov	r3, #0
	str	r3, [fp, #-16]
.LBB5:
	.loc 1 185 21
	mvn	r3, #0
	str	r3, [fp, #-20]
	.loc 1 185 13
	b	.L43
.L47:
.LBB6:
	.loc 1 187 25
	mvn	r3, #0
	str	r3, [fp, #-24]
	.loc 1 187 17
	b	.L44
.L46:
.LBB7:
	.loc 1 189 25
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	.loc 1 190 25
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	.loc 1 191 23
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	blt	.L45
	.loc 1 191 42 discriminator 1
	ldr	r3, [fp, #-88]
	ldr	r3, [r3]
	.loc 1 191 30 discriminator 1
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	bge	.L45
	.loc 1 191 51 discriminator 2
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	blt	.L45
	.loc 1 191 72 discriminator 3
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #4]
	.loc 1 191 60 discriminator 3
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	bge	.L45
.LBB8:
	.loc 1 193 48
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, #12]
	.loc 1 193 68
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #4]
	.loc 1 193 60
	ldr	r1, [fp, #-36]
	mul	r1, r1, r3
	.loc 1 193 76
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r1, r3
	.loc 1 193 56
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	add	r2, r2, r3
	.loc 1 193 38
	sub	r3, fp, #80
	ldrh	r1, [r2]	@ unaligned
	ldrb	r2, [r2, #2]
	strh	r1, [r3]	@ unaligned
	strb	r2, [r3, #2]
	.loc 1 194 44
	ldrb	r1, [fp, #-80]	@ zero_extendqisi2
	.loc 1 194 41
	sub	r2, fp, #52
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 195 44
	ldrb	r1, [fp, #-79]	@ zero_extendqisi2
	.loc 1 195 41
	sub	r2, fp, #64
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 196 44
	ldrb	r1, [fp, #-78]	@ zero_extendqisi2
	.loc 1 196 41
	sub	r2, fp, #76
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 197 30
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L45:
.LBE8:
.LBE7:
	.loc 1 187 41 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L44:
	.loc 1 187 34 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	ble	.L46
.LBE6:
	.loc 1 185 39 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L43:
	.loc 1 185 32 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	ble	.L47
.LBE5:
	.loc 1 202 13
	ldr	r1, [fp, #-16]
	sub	r0, fp, #52
	ldr	r3, .L50
	mov	r2, #1
	bl	qsort
	.loc 1 203 13
	ldr	r1, [fp, #-16]
	sub	r0, fp, #64
	ldr	r3, .L50
	mov	r2, #1
	bl	qsort
	.loc 1 204 13
	ldr	r1, [fp, #-16]
	sub	r0, fp, #76
	ldr	r3, .L50
	mov	r2, #1
	bl	qsort
	.loc 1 206 35
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	.loc 1 206 31
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	.loc 1 206 17
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	.loc 1 207 57
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r0, r3
	.loc 1 207 16
	ldr	r3, [fp, #-28]
	ldr	r1, [r3, #12]
	.loc 1 207 24
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 207 51
	sub	r2, r0, #4
	add	r2, r2, fp
	ldrb	r2, [r2, #-48]	@ zero_extendqisi2
	.loc 1 207 41
	strb	r2, [r3]
	.loc 1 208 59
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r0, r3
	.loc 1 208 16
	ldr	r3, [fp, #-28]
	ldr	r1, [r3, #12]
	.loc 1 208 24
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 208 53
	sub	r2, r0, #4
	add	r2, r2, fp
	ldrb	r2, [r2, #-60]	@ zero_extendqisi2
	.loc 1 208 43
	strb	r2, [r3, #1]
	.loc 1 209 58
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r0, r3
	.loc 1 209 16
	ldr	r3, [fp, #-28]
	ldr	r1, [r3, #12]
	.loc 1 209 24
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 209 52
	sub	r2, r0, #4
	add	r2, r2, fp
	ldrb	r2, [r2, #-72]	@ zero_extendqisi2
	.loc 1 209 42
	strb	r2, [r3, #2]
.LBE4:
	.loc 1 179 44 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L42:
	.loc 1 179 34 discriminator 1
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #4]
	.loc 1 179 26 discriminator 1
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L48
.LBE3:
	.loc 1 177 41 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L41:
	.loc 1 177 30 discriminator 1
	ldr	r3, [fp, #-88]
	ldr	r3, [r3]
	.loc 1 177 22 discriminator 1
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L49
.LBE2:
	.loc 1 212 12
	ldr	r3, [fp, #-28]
.L39:
	.loc 1 213 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L51:
	.align	2
.L50:
	.word	compare_uchar
	.cfi_endproc
.LFE13:
	.size	apply_MEDIAN, .-apply_MEDIAN
	.section	.rodata
	.align	2
.LC13:
	.ascii	"Minimum value: %u\012\000"
	.align	2
.LC14:
	.ascii	"Maximum value:%u\012\000"
	.text
	.align	2
	.global	apply_NORM
	.syntax unified
	.arm
	.type	apply_NORM, %function
apply_NORM:
.LFB14:
	.loc 1 220 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	.loc 1 222 9
	ldr	r0, [fp, #-32]
	bl	img_valid
	mov	r3, r0
	.loc 1 222 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 222 7 discriminator 1
	cmp	r3, #0
	beq	.L53
	.loc 1 222 31 discriminator 1
	mov	r3, #0
	.loc 1 222 31 is_stmt 0
	b	.L54
.L53:
	.loc 1 223 19 is_stmt 1
	mvn	r3, #0
	strb	r3, [fp, #-5]
	.loc 1 224 19
	mov	r3, #0
	strb	r3, [fp, #-6]
	.loc 1 225 39
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	.loc 1 225 52
	ldr	r2, [fp, #-32]
	ldr	r2, [r2]
	.loc 1 225 47
	mul	r3, r2, r3
	.loc 1 225 12
	str	r3, [fp, #-20]
.LBB9:
	.loc 1 226 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 226 5
	b	.L55
.L62:
.LBB10:
	.loc 1 228 29
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 228 37
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r2, r1, r3
	.loc 1 228 22
	sub	r3, fp, #28
	ldrh	r1, [r2]	@ unaligned
	ldrb	r2, [r2, #2]
	strh	r1, [r3]	@ unaligned
	strb	r2, [r3, #2]
	.loc 1 229 13
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	.loc 1 229 11
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	bls	.L56
	.loc 1 229 30 discriminator 1
	ldrb	r3, [fp, #-28]
	strb	r3, [fp, #-5]
.L56:
	.loc 1 230 13
	ldrb	r3, [fp, #-27]	@ zero_extendqisi2
	.loc 1 230 11
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	bls	.L57
	.loc 1 230 32 discriminator 1
	ldrb	r3, [fp, #-27]
	strb	r3, [fp, #-5]
.L57:
	.loc 1 231 13
	ldrb	r3, [fp, #-26]	@ zero_extendqisi2
	.loc 1 231 11
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	bls	.L58
	.loc 1 231 31 discriminator 1
	ldrb	r3, [fp, #-26]
	strb	r3, [fp, #-5]
.L58:
	.loc 1 233 13
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	.loc 1 233 11
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L59
	.loc 1 233 30 discriminator 1
	ldrb	r3, [fp, #-28]
	strb	r3, [fp, #-6]
.L59:
	.loc 1 234 13
	ldrb	r3, [fp, #-27]	@ zero_extendqisi2
	.loc 1 234 11
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L60
	.loc 1 234 32 discriminator 1
	ldrb	r3, [fp, #-27]
	strb	r3, [fp, #-6]
.L60:
	.loc 1 235 13
	ldrb	r3, [fp, #-26]	@ zero_extendqisi2
	.loc 1 235 11
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L61
	.loc 1 235 31 discriminator 1
	ldrb	r3, [fp, #-26]
	strb	r3, [fp, #-6]
.L61:
.LBE10:
	.loc 1 226 42 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L55:
	.loc 1 226 25 discriminator 1
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L62
.LBE9:
	.loc 1 239 5
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L66+4
	bl	printf
	.loc 1 240 5
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L66+8
	bl	printf
	.loc 1 241 7
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L63
	.loc 1 241 26 discriminator 1
	mov	r3, #1
	.loc 1 241 26 is_stmt 0
	b	.L54
.L63:
	.loc 1 243 32 is_stmt 1
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	sub	r3, r2, r3
	.loc 1 243 26
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	.loc 1 243 11
	vldr.32	s13, .L66
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
.LBB11:
	.loc 1 245 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 245 5
	b	.L64
.L65:
	.loc 1 247 50
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 247 58
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 247 61
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 247 66
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	sub	r3, r2, r3
	.loc 1 247 73
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s14, s15
	.loc 1 247 12
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 247 20
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 247 30
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-36]	@ int
	ldrb	r2, [fp, #-36]
	uxtb	r2, r2
	.loc 1 247 28
	strb	r2, [r3]
	.loc 1 248 52
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 248 60
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 248 63
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 248 70
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	sub	r3, r2, r3
	.loc 1 248 77
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s14, s15
	.loc 1 248 12
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 248 20
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 248 32
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-36]	@ int
	ldrb	r2, [fp, #-36]
	uxtb	r2, r2
	.loc 1 248 30
	strb	r2, [r3, #1]
	.loc 1 249 51
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 249 59
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 249 62
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 249 68
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	sub	r3, r2, r3
	.loc 1 249 75
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s14, s15
	.loc 1 249 12
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	.loc 1 249 20
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	.loc 1 249 31
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-36]	@ int
	ldrb	r2, [fp, #-36]
	uxtb	r2, r2
	.loc 1 249 29
	strb	r2, [r3, #2]
	.loc 1 245 42 discriminator 3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L64:
	.loc 1 245 25 discriminator 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L65
.LBE11:
	.loc 1 253 11
	mov	r3, #1
.L54:
	.loc 1 254 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L67:
	.align	2
.L66:
	.word	1132396544
	.word	.LC13
	.word	.LC14
	.cfi_endproc
.LFE14:
	.size	apply_NORM, .-apply_NORM
	.section	.rodata
	.align	2
.LC15:
	.ascii	"Usage: process INPUTFILE OUTPUTFILE\012\000"
	.align	2
.LC16:
	.ascii	"First process failed.\012\000"
	.align	2
.LC17:
	.ascii	"Second process failed.\012\000"
	.align	2
.LC18:
	.ascii	"Saving image to %s failed.\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
.LFB15:
	.loc 1 257 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 260 8
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	beq	.L69
	.loc 1 261 9
	ldr	r3, .L75
	ldr	r3, [r3]
	mov	r2, #36
	mov	r1, #1
	ldr	r0, .L75+4
	bl	fwrite
	.loc 1 262 16
	mov	r3, #1
	b	.L70
.L69:
	.loc 1 266 43
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	.loc 1 266 28
	ldr	r3, [r3]
	mov	r0, r3
	bl	load_image
	str	r0, [fp, #-8]
	.loc 1 267 8
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L71
	.loc 1 268 16
	mov	r3, #1
	b	.L70
.L71:
	.loc 1 274 28
	ldr	r0, [fp, #-8]
	bl	apply_MEDIAN
	str	r0, [fp, #-12]
	.loc 1 275 7
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L72
	.loc 1 276 8
	ldr	r3, .L75
	ldr	r3, [r3]
	mov	r2, #22
	mov	r1, #1
	ldr	r0, .L75+8
	bl	fwrite
	.loc 1 277 8
	ldr	r0, [fp, #-8]
	bl	free_image
	.loc 1 278 15
	mov	r3, #1
	b	.L70
.L72:
	.loc 1 283 9
	ldr	r0, [fp, #-12]
	bl	apply_NORM
	mov	r3, r0
	.loc 1 283 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 283 7 discriminator 1
	cmp	r3, #0
	beq	.L73
	.loc 1 284 8
	ldr	r3, .L75
	ldr	r3, [r3]
	mov	r2, #23
	mov	r1, #1
	ldr	r0, .L75+12
	bl	fwrite
	.loc 1 285 8
	ldr	r0, [fp, #-8]
	bl	free_image
	.loc 1 286 8
	ldr	r0, [fp, #-12]
	bl	free_image
	.loc 1 287 15
	mov	r3, #1
	b	.L70
.L73:
	.loc 1 291 33
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	.loc 1 291 9
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [fp, #-12]
	bl	save_image
	mov	r3, r0
	.loc 1 291 8 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 291 7 discriminator 1
	cmp	r3, #0
	beq	.L74
	.loc 1 292 8
	ldr	r3, .L75
	ldr	r0, [r3]
	.loc 1 292 59
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	.loc 1 292 8
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r1, .L75+16
	bl	fprintf
	.loc 1 293 8
	ldr	r0, [fp, #-8]
	bl	free_image
	.loc 1 294 8
	ldr	r0, [fp, #-12]
	bl	free_image
	.loc 1 295 15
	mov	r3, #1
	b	.L70
.L74:
	.loc 1 298 4
	ldr	r0, [fp, #-8]
	bl	free_image
	.loc 1 299 4
	ldr	r0, [fp, #-12]
	bl	free_image
	.loc 1 300 11
	mov	r3, #0
.L70:
	.loc 1 301 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L76:
	.align	2
.L75:
	.word	stderr
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.cfi_endproc
.LFE15:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/14/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
	.file 5 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
	.file 6 "/usr/include/stdlib.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x93c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x1d
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd6
	.byte	0x16
	.4byte	0x32
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0xf
	.4byte	0x39
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.4byte	0x76
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x20
	.4byte	0x90
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x21
	.4byte	0x6a
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x10
	.4byte	0xa8
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x98
	.byte	0x4
	.byte	0x32
	.4byte	0x249
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x4
	.byte	0x34
	.byte	0x7
	.4byte	0x63
	.byte	0
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.4byte	0xa3
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0xa3
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0xa3
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0xa3
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0xa3
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0xa3
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0xa3
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3e
	.byte	0x9
	.4byte	0xa3
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0xa3
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0xa3
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x4
	.byte	0x43
	.byte	0x9
	.4byte	0xa3
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.byte	0x45
	.byte	0x16
	.4byte	0x262
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.byte	0x47
	.byte	0x14
	.4byte	0x267
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.4byte	0x63
	.byte	0x38
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x4
	.byte	0x4a
	.byte	0x7
	.4byte	0x63
	.byte	0x18
	.2byte	0x1e0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4c
	.byte	0x8
	.4byte	0x26c
	.byte	0x3f
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0xb
	.4byte	0x84
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x4
	.byte	0x50
	.byte	0x12
	.4byte	0x47
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.4byte	0x55
	.byte	0x46
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4
	.byte	0x52
	.byte	0x8
	.4byte	0x26c
	.byte	0x47
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.byte	0x54
	.byte	0xf
	.4byte	0x27c
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x97
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x17
	.4byte	0x286
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0x19
	.4byte	0x290
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x14
	.4byte	0x267
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.byte	0x61
	.byte	0x9
	.4byte	0x39
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x4
	.byte	0x62
	.byte	0x15
	.4byte	0x295
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x4
	.byte	0x63
	.byte	0x7
	.4byte	0x63
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.byte	0x65
	.byte	0x8
	.4byte	0x29a
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.4byte	0xb4
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.uleb128 0x12
	.4byte	.LASF44
	.uleb128 0x4
	.4byte	0x25d
	.uleb128 0x4
	.4byte	0xb4
	.uleb128 0xd
	.4byte	0xa8
	.4byte	0x27c
	.uleb128 0xe
	.4byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x255
	.uleb128 0x12
	.4byte	.LASF45
	.uleb128 0x4
	.4byte	0x281
	.uleb128 0x12
	.4byte	.LASF46
	.uleb128 0x4
	.4byte	0x28b
	.uleb128 0x4
	.4byte	0x267
	.uleb128 0xd
	.4byte	0xa8
	.4byte	0x2aa
	.uleb128 0xe
	.4byte	0x32
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	0xaf
	.uleb128 0xf
	.4byte	0x2aa
	.uleb128 0x4
	.4byte	0x249
	.uleb128 0xf
	.4byte	0x2b4
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x7
	.byte	0x97
	.byte	0xe
	.4byte	0x2b4
	.uleb128 0x20
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x3b4
	.byte	0xf
	.4byte	0x2d7
	.uleb128 0x4
	.4byte	0x2dc
	.uleb128 0x21
	.4byte	0x63
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	0x2f0
	.byte	0
	.uleb128 0x4
	.4byte	0x2f5
	.uleb128 0x22
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x3
	.byte	0x1
	.byte	0xf
	.4byte	0x32a
	.uleb128 0x23
	.ascii	"red\000"
	.byte	0x1
	.byte	0x10
	.byte	0x13
	.4byte	0x40
	.byte	0
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x11
	.byte	0x13
	.4byte	0x40
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0x12
	.byte	0x13
	.4byte	0x40
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x10
	.byte	0x1
	.byte	0x16
	.4byte	0x36b
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x63
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x63
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.4byte	0x63
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1b
	.byte	0x13
	.4byte	0x370
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.4byte	0x32a
	.uleb128 0x4
	.4byte	0x2f6
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x16b
	.byte	0xc
	.4byte	0x63
	.4byte	0x38d
	.uleb128 0x2
	.4byte	0x2aa
	.uleb128 0x13
	.byte	0
	.uleb128 0x15
	.4byte	.LASF71
	.2byte	0x3ca
	.4byte	0x3ad
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x2ca
	.byte	0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.4byte	0x39
	.4byte	0x3cd
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x2df
	.byte	0xf
	.4byte	0x26
	.4byte	0x3f3
	.uleb128 0x2
	.4byte	0x2f0
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x2b4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x7
	.byte	0xb8
	.byte	0xc
	.4byte	0x63
	.4byte	0x409
	.uleb128 0x2
	.4byte	0x2b4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x2d8
	.byte	0xf
	.4byte	0x26
	.4byte	0x42f
	.uleb128 0x2
	.4byte	0x3b
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x2b9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x23f
	.byte	0xc
	.4byte	0x63
	.4byte	0x446
	.uleb128 0x2
	.4byte	0x2b4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x2a3
	.byte	0xe
	.4byte	0x39
	.4byte	0x462
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x8
	.byte	0x9c
	.byte	0xc
	.4byte	0x63
	.4byte	0x47d
	.uleb128 0x2
	.4byte	0x2aa
	.uleb128 0x2
	.4byte	0x2aa
	.byte	0
	.uleb128 0x16
	.4byte	.LASF67
	.2byte	0x1cf
	.byte	0xc
	.4byte	.LASF69
	.4byte	0x63
	.4byte	0x49d
	.uleb128 0x2
	.4byte	0x2b4
	.uleb128 0x2
	.4byte	0x2aa
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x2a0
	.byte	0xe
	.4byte	0x39
	.4byte	0x4b4
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x165
	.byte	0xc
	.4byte	0x63
	.4byte	0x4d1
	.uleb128 0x2
	.4byte	0x2b4
	.uleb128 0x2
	.4byte	0x2aa
	.uleb128 0x13
	.byte	0
	.uleb128 0x16
	.4byte	.LASF68
	.2byte	0x114
	.byte	0xe
	.4byte	.LASF70
	.4byte	0x2b4
	.4byte	0x4f0
	.uleb128 0x2
	.4byte	0x2af
	.uleb128 0x2
	.4byte	0x2af
	.byte	0
	.uleb128 0x15
	.4byte	.LASF72
	.2byte	0x2af
	.4byte	0x501
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x100
	.byte	0x5
	.4byte	0x63
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x555
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0xe
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1a
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.4byte	.LASF75
	.2byte	0x10a
	.byte	0x13
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF76
	.2byte	0x112
	.byte	0x12
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0x32a
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xdb
	.byte	0x5
	.4byte	0x605
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x605
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0xdb
	.byte	0x1e
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii	"min\000"
	.byte	0xdf
	.byte	0x13
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x3
	.ascii	"max\000"
	.byte	0xe0
	.byte	0x13
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xe1
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0xf3
	.byte	0xb
	.4byte	0x60c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x5ee
	.uleb128 0x3
	.ascii	"i\000"
	.byte	0xe2
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x3
	.ascii	"p\000"
	.byte	0xe4
	.byte	0x16
	.4byte	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x3
	.ascii	"i\000"
	.byte	0xf5
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF81
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF82
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0xab
	.byte	0xf
	.4byte	0x55a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xab
	.byte	0x30
	.4byte	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3
	.ascii	"img\000"
	.byte	0xaf
	.byte	0x13
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0xb1
	.byte	0xd
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0xb3
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0xb5
	.byte	0x1b
	.4byte	0x736
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0xb5
	.byte	0x28
	.4byte	0x736
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0xb5
	.byte	0x35
	.4byte	0x736
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0xb6
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0xce
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x3
	.ascii	"dy\000"
	.byte	0xb9
	.byte	0x15
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x3
	.ascii	"dx\000"
	.byte	0xbb
	.byte	0x19
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x3
	.ascii	"ny\000"
	.byte	0xbd
	.byte	0x19
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.ascii	"nx\000"
	.byte	0xbe
	.byte	0x19
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x3
	.ascii	"p\000"
	.byte	0xc1
	.byte	0x26
	.4byte	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x36b
	.uleb128 0xd
	.4byte	0x40
	.4byte	0x746
	.uleb128 0xe
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x96
	.byte	0xf
	.4byte	0x55a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78a
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x96
	.byte	0x2e
	.4byte	0x731
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0x99
	.byte	0x13
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xa2
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x79
	.byte	0x5
	.4byte	0x605
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e8
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0x79
	.byte	0x24
	.4byte	0x731
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x79
	.byte	0x35
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.ascii	"f\000"
	.byte	0x7c
	.byte	0xb
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x89
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x8a
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x48
	.byte	0xf
	.4byte	0x55a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x862
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x48
	.byte	0x26
	.4byte	0x2aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii	"f\000"
	.byte	0x4b
	.byte	0xb
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.ascii	"img\000"
	.byte	0x53
	.byte	0x13
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x54
	.byte	0x10
	.4byte	0x872
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x55
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x55
	.byte	0x11
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x55
	.byte	0x18
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.4byte	0xaf
	.4byte	0x872
	.uleb128 0xe
	.4byte	0x32
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	0x862
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89c
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0x34
	.byte	0x1f
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x2d
	.4byte	0x605
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c3
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0x2d
	.byte	0x23
	.4byte	0x731
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x27
	.4byte	0x63
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f4
	.uleb128 0x9
	.ascii	"a\000"
	.byte	0x27
	.byte	0x1f
	.4byte	0x2f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.ascii	"b\000"
	.byte	0x27
	.byte	0x2e
	.4byte	0x2f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.ascii	"img\000"
	.byte	0x1f
	.byte	0x20
	.4byte	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x1f
	.byte	0x28
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x1f
	.byte	0x33
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1f
	.byte	0x3f
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 256
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF57:
	.ascii	"printf\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF88:
	.ascii	"count\000"
.LASF80:
	.ascii	"scale\000"
.LASF15:
	.ascii	"_IO_read_ptr\000"
.LASF65:
	.ascii	"malloc\000"
.LASF27:
	.ascii	"_chain\000"
.LASF64:
	.ascii	"strcmp\000"
.LASF6:
	.ascii	"size_t\000"
.LASF33:
	.ascii	"_shortbuf\000"
.LASF21:
	.ascii	"_IO_buf_base\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"__int64_t\000"
.LASF75:
	.ascii	"in_img\000"
.LASF72:
	.ascii	"free\000"
.LASF36:
	.ascii	"_codecvt\000"
.LASF8:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF28:
	.ascii	"_fileno\000"
.LASF16:
	.ascii	"_IO_read_end\000"
.LASF11:
	.ascii	"long int\000"
.LASF14:
	.ascii	"_flags\000"
.LASF106:
	.ascii	"free_image\000"
.LASF22:
	.ascii	"_IO_buf_end\000"
.LASF31:
	.ascii	"_cur_column\000"
.LASF45:
	.ascii	"_IO_codecvt\000"
.LASF85:
	.ascii	"r_values\000"
.LASF30:
	.ascii	"_old_offset\000"
.LASF35:
	.ascii	"_offset\000"
.LASF86:
	.ascii	"g_values\000"
.LASF71:
	.ascii	"qsort\000"
.LASF97:
	.ascii	"img_valid\000"
.LASF56:
	.ascii	"pixels\000"
.LASF83:
	.ascii	"apply_MEDIAN\000"
.LASF99:
	.ascii	"assign_head\000"
.LASF44:
	.ascii	"_IO_marker\000"
.LASF29:
	.ascii	"_short_backupbuf\000"
.LASF90:
	.ascii	"copy_image\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF101:
	.ascii	"process.c\000"
.LASF39:
	.ascii	"_freeres_buf\000"
.LASF66:
	.ascii	"fprintf\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"_IO_write_ptr\000"
.LASF54:
	.ascii	"width\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF23:
	.ascii	"_IO_save_base\000"
.LASF69:
	.ascii	"__isoc99_fscanf\000"
.LASF62:
	.ascii	"fgetc\000"
.LASF58:
	.ascii	"memcpy\000"
.LASF34:
	.ascii	"_lock\000"
.LASF103:
	.ascii	"_flags2\000"
.LASF41:
	.ascii	"_mode\000"
.LASF79:
	.ascii	"total_pixels\000"
.LASF94:
	.ascii	"written\000"
.LASF87:
	.ascii	"b_values\000"
.LASF92:
	.ascii	"save_image\000"
.LASF91:
	.ascii	"copy\000"
.LASF84:
	.ascii	"source\000"
.LASF93:
	.ascii	"filename\000"
.LASF76:
	.ascii	"out_img\000"
.LASF20:
	.ascii	"_IO_write_end\000"
.LASF40:
	.ascii	"_prevchain\000"
.LASF96:
	.ascii	"image_type\000"
.LASF52:
	.ascii	"Image\000"
.LASF104:
	.ascii	"_IO_lock_t\000"
.LASF55:
	.ascii	"nvalues\000"
.LASF48:
	.ascii	"_IO_FILE\000"
.LASF51:
	.ascii	"blue\000"
.LASF82:
	.ascii	"float\000"
.LASF68:
	.ascii	"fopen\000"
.LASF26:
	.ascii	"_markers\000"
.LASF81:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"short int\000"
.LASF46:
	.ascii	"_IO_wide_data\000"
.LASF32:
	.ascii	"_vtable_offset\000"
.LASF43:
	.ascii	"FILE\000"
.LASF61:
	.ascii	"fread\000"
.LASF67:
	.ascii	"fscanf\000"
.LASF13:
	.ascii	"char\000"
.LASF60:
	.ascii	"fclose\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF89:
	.ascii	"target_idx\000"
.LASF17:
	.ascii	"_IO_read_base\000"
.LASF100:
	.ascii	"GNU C17 14.2.0 -mfloat-abi=hard -mtls-dialect=gnu -"
	.ascii	"marm -march=armv6+fp -g -O0\000"
.LASF25:
	.ascii	"_IO_save_end\000"
.LASF70:
	.ascii	"fopen64\000"
.LASF42:
	.ascii	"_unused2\000"
.LASF105:
	.ascii	"stderr\000"
.LASF74:
	.ascii	"argv\000"
.LASF50:
	.ascii	"green\000"
.LASF63:
	.ascii	"calloc\000"
.LASF98:
	.ascii	"compare_uchar\000"
.LASF24:
	.ascii	"_IO_backup_base\000"
.LASF78:
	.ascii	"apply_NORM\000"
.LASF59:
	.ascii	"fwrite\000"
.LASF47:
	.ascii	"__compar_fn_t\000"
.LASF73:
	.ascii	"argc\000"
.LASF102:
	.ascii	"/home/raspberry/F28HS-CW1/cwk1-c\000"
.LASF38:
	.ascii	"_freeres_list\000"
.LASF37:
	.ascii	"_wide_data\000"
.LASF53:
	.ascii	"height\000"
.LASF95:
	.ascii	"load_image\000"
.LASF77:
	.ascii	"main\000"
.LASF18:
	.ascii	"_IO_write_base\000"
.LASF49:
	.ascii	"Pixel\000"
	.ident	"GCC: (Raspbian 14.2.0-19+rpi1) 14.2.0"
	.section	.note.GNU-stack,"",%progbits
