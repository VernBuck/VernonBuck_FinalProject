	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"myLib.c"
	.text
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	ldr	r1, [r3, #0]
	mov	r3, #-2147483648
	add	r2, r1, #36
	str	r0, [r1, #36]
	add	r3, r3, #256
	mov	r1, #83886080
	str	r1, [r2, #4]
	str	r3, [r2, #8]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	loadPalette, .-loadPalette
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L5
	str	r4, [sp, #-4]!
	ldr	ip, [ip, #0]
	add	r0, r0, r0, asl #1
	add	r4, ip, r0, asl #2
	orr	r3, r3, #-2147483648
	str	r1, [ip, r0, asl #2]
	str	r2, [r4, #4]
	str	r3, [r4, #8]
	ldmfd	sp!, {r4}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	waitForVblank
	.type	waitForVblank, %function
waitForVblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L8:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L8
	mov	r2, #67108864
.L10:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L10
	bx	lr
	.size	waitForVblank, .-waitForVblank
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r2, [r3, #0]
	tst	r2, #16
	ldrne	r1, .L17
	ldreq	r1, .L17
	ldrne	r0, [r1, #8]
	ldreq	r0, [r1, #12]
	bicne	r2, r2, #16
	orreq	r2, r2, #16
	strneh	r2, [r3, #0]	@ movhi
	streqh	r2, [r3, #0]	@ movhi
	strne	r0, [r1, #4]
	streq	r0, [r1, #4]
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4
	add	r3, r1, r0, asl #4
	ldr	r0, .L22
	add	r3, r3, r3, lsr #31
	ldr	ip, [r0, #4]
	bic	r3, r3, #1
	tst	r1, #1
	ldrh	r1, [ip, r3]
	andne	r1, r1, #255
	biceq	r1, r1, #255
	orrne	r2, r1, r2, asl #8
	orreq	r2, r2, r1
	strneh	r2, [ip, r3]	@ movhi
	streqh	r2, [ip, r3]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #36
	ldrb	r4, [sp, #72]	@ zero_extendqisi2
	subs	fp, r2, #0
	orr	r2, r4, r4, asl #8
	str	r4, [sp, #8]
	str	r1, [sp, #12]
	strh	r2, [sp, #30]	@ movhi
	ble	.L24
	ldr	r5, [sp, #12]
	add	r1, r3, r3, lsr #31
	mov	r1, r1, asr #1
	sub	ip, r1, #1
	sub	r2, r5, #1
	rsb	r4, r0, r0, asl #4
	add	r4, r5, r4, asl #4
	orr	r1, r1, #-2130706432
	orr	ip, ip, #-2130706432
	add	r2, r2, r3
	and	r8, r5, #1
	ldr	r7, .L33
	str	r1, [sp, #4]
	str	ip, [sp, #20]
	add	r4, r4, #1
	mov	r6, r0
	mov	r5, #0
	and	sl, r3, #1
	add	r9, sp, #30
	str	r2, [sp, #16]
	b	.L30
.L26:
	cmp	sl, #0
	bne	.L32
	ldr	r2, [r7, #0]
	sub	r1, r4, #1
	ldr	r0, [r7, #4]
	add	r1, r1, r1, lsr #31
	add	r3, r2, #36
	str	r9, [r2, #36]
	bic	r1, r1, #1
	ldr	r2, [sp, #4]
	add	r1, r0, r1
	str	r1, [r3, #4]
	str	r2, [r3, #8]
.L28:
	add	r5, r5, #1
	cmp	fp, r5
	add	r4, r4, #240
	add	r6, r6, #1
	ble	.L24
.L30:
	cmp	r8, #0
	beq	.L26
	mov	r0, r6
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	bl	setPixel4
	cmp	sl, #0
	beq	.L27
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #0]
	add	r1, r4, r4, lsr #31
	bic	r1, r1, #1
	ldr	ip, [sp, #4]
	add	r5, r5, #1
	add	r3, r2, #36
	add	r1, r0, r1
	cmp	fp, r5
	str	r9, [r2, #36]
	add	r4, r4, #240
	str	r1, [r3, #4]
	add	r6, r6, #1
	str	ip, [r3, #8]
	bgt	.L30
.L24:
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L32:
	sub	r2, r4, #1
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #0]
	add	r2, r2, r2, lsr #31
	ldr	ip, [sp, #4]
	bic	r2, r2, #1
	add	r3, r1, #36
	add	r2, r0, r2
	str	r9, [r1, #36]
	mov	r0, r6
	str	r2, [r3, #4]
	ldr	r1, [sp, #16]
	str	ip, [r3, #8]
	ldr	r2, [sp, #8]
	bl	setPixel4
	b	.L28
.L27:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #0]
	add	r2, r4, r4, lsr #31
	bic	r2, r2, #1
	add	r3, r1, #36
	add	r2, r0, r2
	str	r9, [r1, #36]
	str	r2, [r3, #4]
	ldr	r2, [sp, #20]
	mov	r0, r6
	str	r2, [r3, #8]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #8]
	bl	setPixel4
	b	.L28
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	drawImage4
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	tst	r2, #1
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}
	addne	r2, r2, #1
	cmp	r3, #0
	ldr	r7, [sp, #24]
	ble	.L35
	ldr	r5, .L40
	add	r8, r7, r7, lsr #31
	ldr	r4, [r5, #0]
	rsb	r1, r1, r1, asl #4
	mov	r8, r8, asr #1
	mov	ip, #0
	ldr	sl, [r5, #4]
	add	r2, r2, r1, asl #4
	add	r4, r4, #36
	orr	r8, r8, #-2147483648
	mov	r1, ip
.L38:
	add	r6, ip, ip, lsr #31
	add	r5, r2, r2, lsr #31
	bic	r6, r6, #1
	bic	r5, r5, #1
	add	r1, r1, #1
	add	r6, r0, r6
	add	r5, sl, r5
	cmp	r1, r3
	str	r6, [r4, #0]
	add	ip, ip, r7
	str	r5, [r4, #4]
	add	r2, r2, #240
	str	r8, [r4, #8]
	bne	.L38
.L35:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawBackgroundImage
	.type	drawBackgroundImage, %function
drawBackgroundImage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L43
	ldmia	r3, {r1, ip}	@ phole ldm
	mov	r3, #-2147483648
	add	r2, r1, #36
	add	r3, r3, #19200
	str	r0, [r1, #36]
	str	ip, [r2, #4]
	str	r3, [r2, #8]
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.size	drawBackgroundImage, .-drawBackgroundImage
	.global	videoBuffer
	.global	frontBuffer
	.global	backBuffer
	.global	dma
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 31) 4.5.0"
