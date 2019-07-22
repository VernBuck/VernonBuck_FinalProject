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
	.file	"main.c"
	.text
	.align	2
	.global	updatecut
	.type	updatecut, %function
updatecut:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	ldr	r2, [r3, #0]
	add	r2, r2, #1
	tst	r2, #7
	str	r2, [r3, #0]
	ldreq	r3, .L3+4
	ldreq	r2, [r3, #0]
	addeq	r2, r2, #1
	streq	r2, [r3, #0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	cuttimer2
	.word	cuttimer
	.size	updatecut, .-updatecut
	.align	2
	.global	cutscene
	.type	cutscene, %function
cutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L64
	ldr	r3, .L64+4
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	ldr	r1, [r2, #0]
	cmp	r1, r3
	beq	.L63
	cmp	r3, #51
	ldrls	pc, [pc, r3, asl #2]
	b	.L8
.L61:
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
.L60:
	ldr	r4, .L64+8
	ldr	r0, .L64+12
.L8:
	str	r3, [r2, #0]
	ldr	r3, .L64+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+24
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L64+28
	mov	lr, pc
	bx	r3
.L5:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L63:
	ldr	r3, .L64+20
	mov	lr, pc
	bx	r3
	b	.L5
.L59:
	ldr	r4, .L64+32
	ldr	r0, .L64+36
	b	.L8
.L58:
	ldr	r4, .L64+40
	ldr	r0, .L64+44
	b	.L8
.L57:
	ldr	r4, .L64+48
	ldr	r0, .L64+52
	b	.L8
.L56:
	ldr	r4, .L64+56
	ldr	r0, .L64+60
	b	.L8
.L55:
	ldr	r4, .L64+64
	ldr	r0, .L64+68
	b	.L8
.L54:
	ldr	r4, .L64+72
	ldr	r0, .L64+76
	b	.L8
.L53:
	ldr	r4, .L64+80
	ldr	r0, .L64+84
	b	.L8
.L52:
	ldr	r4, .L64+88
	ldr	r0, .L64+92
	b	.L8
.L51:
	ldr	r4, .L64+96
	ldr	r0, .L64+100
	b	.L8
.L50:
	ldr	r4, .L64+104
	ldr	r0, .L64+108
	b	.L8
.L49:
	ldr	r4, .L64+112
	ldr	r0, .L64+116
	b	.L8
.L48:
	ldr	r4, .L64+120
	ldr	r0, .L64+124
	b	.L8
.L47:
	ldr	r4, .L64+128
	ldr	r0, .L64+132
	b	.L8
.L46:
	ldr	r4, .L64+136
	ldr	r0, .L64+140
	b	.L8
.L45:
	ldr	r4, .L64+144
	ldr	r0, .L64+148
	b	.L8
.L44:
	ldr	r4, .L64+152
	ldr	r0, .L64+156
	b	.L8
.L43:
	ldr	r4, .L64+160
	ldr	r0, .L64+164
	b	.L8
.L42:
	ldr	r4, .L64+168
	ldr	r0, .L64+172
	b	.L8
.L41:
	ldr	r4, .L64+176
	ldr	r0, .L64+180
	b	.L8
.L40:
	ldr	r4, .L64+184
	ldr	r0, .L64+188
	b	.L8
.L39:
	ldr	r4, .L64+192
	ldr	r0, .L64+196
	b	.L8
.L38:
	ldr	r4, .L64+200
	ldr	r0, .L64+204
	b	.L8
.L37:
	ldr	r4, .L64+208
	ldr	r0, .L64+212
	b	.L8
.L36:
	ldr	r4, .L64+216
	ldr	r0, .L64+220
	b	.L8
.L35:
	ldr	r4, .L64+224
	ldr	r0, .L64+228
	b	.L8
.L34:
	ldr	r4, .L64+232
	ldr	r0, .L64+236
	b	.L8
.L33:
	ldr	r4, .L64+240
	ldr	r0, .L64+244
	b	.L8
.L32:
	ldr	r4, .L64+248
	ldr	r0, .L64+252
	b	.L8
.L31:
	ldr	r4, .L64+256
	ldr	r0, .L64+260
	b	.L8
.L30:
	ldr	r4, .L64+264
	ldr	r0, .L64+268
	b	.L8
.L29:
	ldr	r4, .L64+272
	ldr	r0, .L64+276
	b	.L8
.L28:
	ldr	r4, .L64+280
	ldr	r0, .L64+284
	b	.L8
.L27:
	ldr	r4, .L64+288
	ldr	r0, .L64+292
	b	.L8
.L26:
	ldr	r4, .L64+296
	ldr	r0, .L64+300
	b	.L8
.L25:
	ldr	r4, .L64+304
	ldr	r0, .L64+308
	b	.L8
.L24:
	ldr	r4, .L64+312
	ldr	r0, .L64+316
	b	.L8
.L23:
	ldr	r4, .L64+320
	ldr	r0, .L64+324
	b	.L8
.L22:
	ldr	r4, .L64+328
	ldr	r0, .L64+332
	b	.L8
.L21:
	ldr	r4, .L64+336
	ldr	r0, .L64+340
	b	.L8
.L20:
	ldr	r4, .L64+344
	ldr	r0, .L64+348
	b	.L8
.L19:
	ldr	r4, .L64+352
	ldr	r0, .L64+356
	b	.L8
.L18:
	ldr	r4, .L64+360
	ldr	r0, .L64+364
	b	.L8
.L17:
	ldr	r4, .L64+368
	ldr	r0, .L64+372
	b	.L8
.L16:
	ldr	r4, .L64+376
	ldr	r0, .L64+380
	b	.L8
.L15:
	ldr	r4, .L64+384
	ldr	r0, .L64+388
	b	.L8
.L14:
	ldr	r4, .L64+392
	ldr	r0, .L64+396
	b	.L8
.L13:
	ldr	r4, .L64+400
	ldr	r0, .L64+404
	b	.L8
.L12:
	ldr	r4, .L64+408
	ldr	r0, .L64+412
	b	.L8
.L11:
	ldr	r4, .L64+416
	ldr	r0, .L64+420
	b	.L8
.L10:
	ldr	r4, .L64+424
	ldr	r0, .L64+428
	b	.L8
.L9:
	ldr	r4, .L64+432
	ldr	r0, .L64+436
	b	.L8
.L65:
	.align	2
.L64:
	.word	.LANCHOR0
	.word	cuttimer
	.word	page52Pal
	.word	page52Bitmap
	.word	drawBackgroundImage
	.word	waitForVblank
	.word	flipPage
	.word	loadPalette
	.word	page51Pal
	.word	page51Bitmap
	.word	page50Pal
	.word	page50Bitmap
	.word	page49Pal
	.word	page49Bitmap
	.word	page48Pal
	.word	page48Bitmap
	.word	page47Pal
	.word	page47Bitmap
	.word	page46Pal
	.word	page46Bitmap
	.word	page45Pal
	.word	page45Bitmap
	.word	page44Pal
	.word	page44Bitmap
	.word	page43Pal
	.word	page43Bitmap
	.word	page42Pal
	.word	page42Bitmap
	.word	page41Pal
	.word	page41Bitmap
	.word	page40Pal
	.word	page40Bitmap
	.word	page39Pal
	.word	page39Bitmap
	.word	page38Pal
	.word	page38Bitmap
	.word	page37Pal
	.word	page37Bitmap
	.word	page36Pal
	.word	page36Bitmap
	.word	page35Pal
	.word	page35Bitmap
	.word	page34Pal
	.word	page34Bitmap
	.word	page33Pal
	.word	page33Bitmap
	.word	page32Pal
	.word	page32Bitmap
	.word	page31Pal
	.word	page31Bitmap
	.word	page30Pal
	.word	page30Bitmap
	.word	page29Pal
	.word	page29Bitmap
	.word	page28Pal
	.word	page28Bitmap
	.word	page27Pal
	.word	page27Bitmap
	.word	page26Pal
	.word	page26Bitmap
	.word	page25Pal
	.word	page25Bitmap
	.word	page24Pal
	.word	page24Bitmap
	.word	page23Pal
	.word	page23Bitmap
	.word	page22Pal
	.word	page22Bitmap
	.word	page21Pal
	.word	page21Bitmap
	.word	page20Pal
	.word	page20Bitmap
	.word	page19Pal
	.word	page19Bitmap
	.word	page18Pal
	.word	page18Bitmap
	.word	page17Pal
	.word	page17Bitmap
	.word	page16Pal
	.word	page16Bitmap
	.word	page15Pal
	.word	page15Bitmap
	.word	page14Pal
	.word	page14Bitmap
	.word	page13Pal
	.word	page13Bitmap
	.word	page12Pal
	.word	page12Bitmap
	.word	page11Pal
	.word	page11Bitmap
	.word	page10Pal
	.word	page10Bitmap
	.word	page9Pal
	.word	page9Bitmap
	.word	page8Pal
	.word	page8Bitmap
	.word	page7Pal
	.word	page7Bitmap
	.word	page6Pal
	.word	page6Bitmap
	.word	page5Pal
	.word	page5Bitmap
	.word	page4Pal
	.word	page4Bitmap
	.word	page3Pal
	.word	page3Bitmap
	.word	page2Pal
	.word	page2Bitmap
	.word	page1Pal
	.word	page1Bitmap
	.size	cutscene, .-cutscene
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L68+8
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r8, r0
	mov	r5, #0
	mov	r4, #67108864
	add	ip, ip, #12
	mov	r6, r2
	add	fp, r4, #256
	add	r2, r4, #160
	mov	sl, r1
	mov	r9, r3
	mov	r1, r8
	mov	r0, #1
	mov	r3, #910163968
	str	r5, [ip, #8]
	ldr	ip, .L68+12
	mov	lr, pc
	bx	ip
	mov	r1, r6
	ldr	r3, .L68+16
	mov	r0, #16777216
	strh	r5, [fp, #2]	@ movhi
	mov	lr, pc
	bx	r3
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r4, .L68+20
	mov	r3, r3, lsr #16
	strh	r3, [fp, #0]	@ movhi
	mov	r3, #128	@ movhi
	str	r8, [r4, #0]
	strh	r3, [fp, #2]	@ movhi
	mov	r3, #1
	ldr	r7, .L68+24
	str	r3, [r4, #12]
	str	r9, [r4, #16]
	mov	r0, sl
	str	sl, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	adr	r3, .L68
	ldmia	r3, {r2-r3}
	ldr	ip, .L68+28
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	ip, .L68+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	ldr	r3, .L68+36
	mov	lr, pc
	bx	r3
	str	r5, [r4, #24]
	str	r0, [r4, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L69:
	.align	3
.L68:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L71+8
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r8, r0
	mov	r5, #0
	mov	r4, #67108864
	add	ip, ip, #24
	mov	r6, r2
	add	fp, r4, #256
	add	r2, r4, #164
	mov	sl, r1
	mov	r9, r3
	mov	r1, r8
	mov	r0, #2
	mov	r3, #910163968
	str	r5, [ip, #8]
	ldr	ip, .L71+12
	mov	lr, pc
	bx	ip
	mov	r1, r6
	ldr	r3, .L71+16
	mov	r0, #16777216
	strh	r5, [fp, #6]	@ movhi
	mov	lr, pc
	bx	r3
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	ldr	r4, .L71+20
	mov	r3, r3, lsr #16
	strh	r3, [fp, #4]	@ movhi
	mov	r3, #128	@ movhi
	str	r8, [r4, #0]
	strh	r3, [fp, #6]	@ movhi
	mov	r3, #1
	ldr	r7, .L71+24
	str	r3, [r4, #12]
	str	r9, [r4, #16]
	mov	r0, sl
	str	sl, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	adr	r3, .L71
	ldmia	r3, {r2-r3}
	ldr	ip, .L71+28
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	ip, .L71+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	ldr	r3, .L71+36
	mov	lr, pc
	bx	r3
	str	r5, [r4, #24]
	str	r0, [r4, #20]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L72:
	.align	3
.L71:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r3, #67108864
	add	r3, r3, #512
	ldrh	r2, [r3, #2]
	tst	r2, #1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L74
	ldr	r2, .L82
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L75
	add	r1, r2, #20
	ldmia	r1, {r1, r3}	@ phole ldm
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2, #24]
	blt	.L75
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L79
	ldr	r1, .L82+4
	ldr	r0, [r1, #0]
	mov	r1, #67108864
	add	r0, r0, #12
	add	r1, r1, #256
	str	r3, [r0, #8]
	str	r3, [r2, #12]
	strh	r3, [r1, #2]	@ movhi
.L75:
	ldr	r2, .L82+8
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L80
.L77:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L74:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r3, lr}
	bx	lr
.L80:
	add	r1, r2, #20
	ldmia	r1, {r1, r3}	@ phole ldm
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2, #24]
	blt	.L77
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L81
	ldr	r1, .L82+4
	ldr	r0, [r1, #0]
	mov	r1, #67108864
	add	r0, r0, #24
	add	r1, r1, #256
	str	r3, [r0, #8]
	str	r3, [r2, #12]
	strh	r3, [r1, #6]	@ movhi
	b	.L77
.L79:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	b	.L75
.L81:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundB
	b	.L77
.L83:
	.align	2
.L82:
	.word	soundA
	.word	dma
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	mov	r3, #0
	add	r2, r2, #256
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	ldr	r2, .L85
	str	r3, [r2, #12]
	ldr	r2, .L85+4
	str	r3, [r2, #12]
	bx	lr
.L86:
	.align	2
.L85:
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	add	r3, r3, #256
	mov	r1, #128
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	ldr	r3, .L88
	mov	r2, #1
	str	r2, [r3, #12]
	ldr	r3, .L88+4
	str	r2, [r3, #12]
	bx	lr
.L89:
	.align	2
.L88:
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L91
	ldr	r1, [r3, #0]
	mov	r2, #67108864
	mov	r3, #0
	add	r2, r2, #256
	add	r0, r1, #12
	add	r1, r1, #24
	str	r3, [r0, #8]
	str	r3, [r1, #8]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	ldr	r2, .L91+4
	str	r3, [r2, #12]
	ldr	r2, .L91+8
	str	r3, [r2, #12]
	bx	lr
.L92:
	.align	2
.L91:
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r3, r2, #512
	str	r4, [sp, #-4]!
	ldrh	r0, [r2, #4]
	ldrh	ip, [r3, #0]
	mov	r1, #50331648
	ldr	r4, .L94
	add	r1, r1, #28672
	orr	ip, ip, #1
	orr	r0, r0, #8
	str	r4, [r1, #4092]
	strh	ip, [r3, #0]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L95:
	.align	2
.L94:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r2, #24320	@ movhi
	mov	r3, #67108864
	strh	r2, [r3, #8]	@ movhi
	mov	r4, #0
	mov	r2, #256	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldr	r0, .L97
	strh	r4, [r3, #16]	@ movhi
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L97+8
	mov	r0, #3
	ldr	r1, .L97+12
	mov	r2, #100663296
	mov	r3, #3456
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L97+16
	add	r2, r2, #63488
	mov	lr, pc
	bx	r5
	ldr	r3, .L97+20
	str	r4, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	instructionsPal
	.word	loadPalette
	.word	DMANow
	.word	instructionsTiles
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #24320	@ movhi
	stmfd	sp!, {r4, lr}
	mov	r2, #0
	strh	r1, [r3, #8]	@ movhi
	mov	r1, #256	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r0, .L100
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	mov	r3, #9600
	mov	r0, #3
	ldr	r1, .L100+8
	mov	r2, #100663296
	add	r3, r3, #16
	ldr	r4, .L100+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #63488
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L100+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L100+20
	mov	r2, #1
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L101:
	.align	2
.L100:
	.word	splashPal
	.word	loadPalette
	.word	splashTiles
	.word	DMANow
	.word	splashMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	updateInstructions
	.type	updateInstructions, %function
updateInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L105
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L102
	ldr	r3, .L105+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L104
.L102:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L104:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L106:
	.align	2
.L105:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	updateInstructions, .-updateInstructions
	.align	2
	.global	updateStart
	.type	updateStart, %function
updateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L111
	ldr	r3, .L111+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	tst	r3, #4
	beq	.L108
	ldr	r2, .L111+8
	ldr	r2, [r2, #0]
	tst	r2, #4
	beq	.L110
.L108:
	tst	r3, #8
	beq	.L107
	ldr	r3, .L111+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	bne	.L107
	mov	r3, #1040
	add	r3, r3, #4
	mov	r2, #67108864
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L111+12
	mov	r2, #2
	str	r2, [r3, #0]
.L107:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L110:
	bl	goToInstructions
	ldr	r3, [r4, #0]
	b	.L108
.L112:
	.align	2
.L111:
	.word	oldButtons
	.word	waitForVblank
	.word	buttons
	.word	state
	.size	updateStart, .-updateStart
	.align	2
	.global	goToCutscene
	.type	goToCutscene, %function
goToCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1040
	add	r3, r3, #4
	mov	r2, #67108864
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L114
	mov	r2, #2
	str	r2, [r3, #0]
	bx	lr
.L115:
	.align	2
.L114:
	.word	state
	.size	goToCutscene, .-goToCutscene
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	ip, #67108864
	mov	r5, #24064	@ movhi
	mov	lr, #7424
	strh	r5, [ip, #8]	@ movhi
	add	lr, lr, #4
	mov	r2, #100663296
	mov	r5, #4864	@ movhi
	strh	r5, [ip, #0]	@ movhi
	strh	lr, [ip, #10]	@ movhi
	ldr	r4, .L119
	mov	r0, #3
	ldr	r1, .L119+4
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L119+8
	add	r2, r2, #512
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L119+12
	ldr	r3, .L119+16
	mov	lr, pc
	bx	r3
	mov	r3, #10880
	mov	r0, #3
	ldr	r1, .L119+20
	mov	r2, #100663296
	add	r3, r3, #32
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L119+24
	add	r2, r2, #61440
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L119+28
	add	r2, r2, #16384
	mov	r3, #10240
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #59392
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L119+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L119+36
	mov	r3, #0
.L117:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L117
	ldr	r3, .L119+40
	mov	r2, #3
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	DMANow
	.word	currentspritesheetTiles
	.word	currentspritesheetPal
	.word	innerbackgroundPal
	.word	loadPalette
	.word	innerbackgroundTiles
	.word	innerbackgroundMap
	.word	outterbackgroundTiles
	.word	outterbackgroundMap
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToLV2
	.type	goToLV2, %function
goToLV2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	ip, #67108864
	mov	r5, #24064	@ movhi
	mov	lr, #7424
	strh	r5, [ip, #8]	@ movhi
	add	lr, lr, #4
	mov	r2, #100663296
	mov	r5, #4864	@ movhi
	strh	r5, [ip, #0]	@ movhi
	strh	lr, [ip, #10]	@ movhi
	ldr	r4, .L124
	mov	r0, #3
	ldr	r1, .L124+4
	add	r2, r2, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L124+8
	add	r2, r2, #512
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r0, .L124+12
	ldr	r3, .L124+16
	mov	lr, pc
	bx	r3
	mov	r3, #6976
	mov	r0, #3
	ldr	r1, .L124+20
	mov	r2, #100663296
	add	r3, r3, #48
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #61440
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L124+24
	mov	lr, pc
	bx	r4
	ldr	r2, .L124+28
	mov	r3, #0
.L122:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L122
	ldr	r3, .L124+32
	mov	r2, #8
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L125:
	.align	2
.L124:
	.word	DMANow
	.word	currentspritesheetTiles
	.word	currentspritesheetPal
	.word	arenaPal
	.word	loadPalette
	.word	arenaTiles
	.word	arenaMap
	.word	shadowOAM
	.word	state
	.size	goToLV2, .-goToLV2
	.align	2
	.global	updateTransitionone
	.type	updateTransitionone, %function
updateTransitionone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L129
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L126
	ldr	r3, .L129+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L128
.L126:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L128:
	ldmfd	sp!, {r4, lr}
	b	goToLV2
.L130:
	.align	2
.L129:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	updateTransitionone, .-updateTransitionone
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #24320	@ movhi
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L132
	mov	r2, #0
	str	r2, [r1, #0]
	mov	r1, #256	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r0, .L132+4
	ldr	r3, .L132+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L132+12
	mov	r0, #3
	ldr	r1, .L132+16
	mov	r2, #100663296
	mov	r3, #1456
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #63488
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L132+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L132+24
	mov	r2, #6
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	.LANCHOR1
	.word	pausescreenPal
	.word	loadPalette
	.word	DMANow
	.word	pausescreenTiles
	.word	pausescreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #24320	@ movhi
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L135
	mov	r2, #0
	str	r2, [r1, #0]
	mov	r1, #256	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r0, .L135+4
	ldr	r3, .L135+8
	mov	lr, pc
	bx	r3
	mov	r3, #5248
	mov	r0, #3
	ldr	r1, .L135+12
	mov	r2, #100663296
	add	r3, r3, #32
	ldr	r4, .L135+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #63488
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L135+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L135+24
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L136:
	.align	2
.L135:
	.word	.LANCHOR1
	.word	gameoverPal
	.word	loadPalette
	.word	gameoverTiles
	.word	DMANow
	.word	gameoverMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #24320	@ movhi
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L138
	mov	r2, #0
	str	r2, [r1, #0]
	mov	r1, #256	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r0, .L138+4
	ldr	r3, .L138+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L138+12
	mov	r0, #3
	ldr	r1, .L138+16
	mov	r2, #100663296
	mov	r3, #9024
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #63488
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L138+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L138+24
	mov	r2, #4
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L139:
	.align	2
.L138:
	.word	.LANCHOR1
	.word	winscreenPal
	.word	loadPalette
	.word	DMANow
	.word	winscreenTiles
	.word	winscreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L143
	mov	r3, #0
.L141:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L141
	bx	lr
.L144:
	.align	2
.L143:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r8, .L148
	mov	r3, #4
	str	r3, [r8, #4]
	mov	r3, #30
	ldr	r4, .L148+4
	str	r3, [r8, #8]
	ldr	r3, .L148+8
	mov	r2, #10
	mov	r0, r4
	str	r2, [r3, #0]
	ldr	r3, .L148+12
	mov	lr, pc
	bx	r3
	ldr	r2, .L148+16
	ldr	lr, [r4, #0]
	ldr	ip, [r4, #4]
	ldr	r3, .L148+20
	mov	r1, #0
	mov	r0, #16
	str	r1, [r2, #20]
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	lr, [r2, #0]
	str	ip, [r2, #4]
	str	r1, [r2, #16]
	mov	r2, #130
	str	r2, [r3, #0]
	mov	r2, #100
	mov	r7, #32
	mov	r6, #1
	str	r2, [r3, #4]
	mov	r2, #3
	str	r7, [r3, #12]
	str	r7, [r3, #8]
	str	r6, [r3, #20]
	str	r2, [r3, #32]
	ldr	r4, .L148+24
	ldr	r9, .L148+28
	mov	r5, #202
	mov	sl, #2
.L146:
	str	r7, [r4, #-8]
	str	r7, [r4, #-12]
	mov	lr, pc
	bx	r9
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	str	r5, [r4, #-16]
	rsb	r3, r3, r0
	add	r3, r8, r3, asl #2
	ldr	r3, [r3, #12]
	sub	r5, r5, #10
	cmp	r5, #172
	str	r3, [r4, #-20]
	str	sl, [r4, #12]
	str	r6, [r4, #16]
	str	r6, [r4], #52
	bne	.L146
	ldr	r3, .L148+32
	mov	r2, #0
	str	r2, [r3, #4]
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	.LANCHOR0
	.word	eliwood
	.word	enemy1attack
	.word	resetLocation
	.word	arrow
	.word	soldier
	.word	arrKnight+20
	.word	rand
	.word	.LANCHOR1
	.size	initialize, .-initialize
	.align	2
	.global	updateWin
	.type	updateWin, %function
updateWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L154
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+4
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L150
	ldr	r3, .L154+8
	ldr	r3, [r3, #0]
	ands	r3, r3, #4
	bne	.L150
	ldr	r2, .L154+12
.L152:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L152
	bl	initialize
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L150:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.size	updateWin, .-updateWin
	.align	2
	.global	updateLose
	.type	updateLose, %function
updateLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L160
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L160+4
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L156
	ldr	r3, .L160+8
	ldr	r3, [r3, #0]
	ands	r3, r3, #4
	bne	.L156
	ldr	r2, .L160+12
.L158:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L158
	bl	initialize
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L156:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.size	updateLose, .-updateLose
	.align	2
	.global	updatePause
	.type	updatePause, %function
updatePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L171
	ldr	r3, .L171+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]
	tst	r3, #8
	beq	.L163
	ldr	r2, .L171+8
	ldr	r2, [r2, #0]
	tst	r2, #8
	bne	.L163
	ldr	r5, .L171+12
	ldr	r3, [r5, #0]
	cmp	r3, #3
	beq	.L170
.L164:
	cmp	r3, #8
	beq	.L165
	ldr	r3, [r4, #0]
.L163:
	tst	r3, #4
	beq	.L162
	ldr	r3, .L171+8
	ldr	r3, [r3, #0]
	ands	r3, r3, #4
	bne	.L162
	ldr	r2, .L171+16
.L167:
	mov	r1, #512	@ movhi
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L167
	bl	initialize
	ldmfd	sp!, {r4, r5, r6, lr}
	b	goToStart
.L162:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L165:
	bl	goToLV2
	ldr	r3, [r4, #0]
	b	.L163
.L170:
	bl	goToGame
	ldr	r3, [r5, #0]
	b	.L164
.L172:
	.align	2
.L171:
	.word	oldButtons
	.word	waitForVblank
	.word	buttons
	.word	savestate
	.word	shadowOAM
	.size	updatePause, .-updatePause
	.align	2
	.global	updateCutscene
	.type	updateCutscene, %function
updateCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	updatecut
	bl	cutscene
	ldr	r3, .L176
	ldr	r2, [r3, #0]
	cmp	r2, #52
	beq	.L175
	ldmfd	sp!, {r4, lr}
	bx	lr
.L175:
	mov	r2, #0
	str	r2, [r3, #0]
	bl	initialize
	ldmfd	sp!, {r4, lr}
	b	goToGame
.L177:
	.align	2
.L176:
	.word	cuttimer
	.size	updateCutscene, .-updateCutscene
	.align	2
	.global	initialize2
	.type	initialize2, %function
initialize2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r8, .L181
	mov	r3, #4
	str	r3, [r8, #4]
	mov	r3, #30
	ldr	r4, .L181+4
	str	r3, [r8, #8]
	ldr	r3, .L181+8
	mov	r2, #10
	mov	r0, r4
	str	r2, [r3, #0]
	ldr	r3, .L181+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L181+16
	ldr	ip, [r4, #0]
	ldr	r0, [r4, #4]
	mov	r2, #0
	mov	r1, #16
	str	r2, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #0]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	ldr	r4, .L181+20
	ldr	r9, .L181+24
	mov	r5, #202
	mov	r7, #32
	mov	sl, #2
	mov	r6, #1
.L179:
	str	r7, [r4, #-8]
	str	r7, [r4, #-12]
	mov	lr, pc
	bx	r9
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	str	r5, [r4, #-16]
	rsb	r3, r3, r0
	add	r3, r8, r3, asl #2
	ldr	r3, [r3, #12]
	sub	r5, r5, #10
	cmp	r5, #162
	str	r3, [r4, #-20]
	str	sl, [r4, #12]
	str	r6, [r4, #16]
	str	r6, [r4], #52
	bne	.L179
	ldr	r3, .L181+28
	mov	r2, #0
	str	r2, [r3, #4]
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L182:
	.align	2
.L181:
	.word	.LANCHOR0
	.word	eliwood
	.word	enemy1attack
	.word	resetLocation
	.word	arrow
	.word	arrKnight+20
	.word	rand
	.word	.LANCHOR1
	.size	initialize2, .-initialize2
	.align	2
	.global	goToTransitionOne
	.type	goToTransitionOne, %function
goToTransitionOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	initialize2
	mov	r3, #67108864
	mov	r1, #24320	@ movhi
	strh	r1, [r3, #8]	@ movhi
	mov	r2, #0
	mov	r1, #256	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r0, .L184
	ldr	r3, .L184+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L184+8
	mov	r0, #3
	ldr	r1, .L184+12
	mov	r2, #100663296
	mov	r3, #2960
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #63488
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L184+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L184+20
	mov	r2, #7
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L185:
	.align	2
.L184:
	.word	level2transitionPal
	.word	loadPalette
	.word	DMANow
	.word	level2transitionTiles
	.word	level2transitionMap
	.word	state
	.size	goToTransitionOne, .-goToTransitionOne
	.align	2
	.global	initialize3
	.type	initialize3, %function
initialize3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, .L187
	mov	r2, #1
	str	r2, [r3, #4]
	mov	r2, #30
	ldr	r4, .L187+4
	str	r2, [r3, #8]
	ldr	r3, .L187+8
	mov	r2, #10
	str	r2, [r3, #0]
	mov	r0, r4
	ldr	r3, .L187+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+16
	ldr	r1, .L187+20
	ldmia	r4, {r5, ip}	@ phole ldm
	mov	r2, #0
	mov	r0, #16
	str	r2, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	stmia	r3, {r5, ip}	@ phole stm
	str	r2, [r3, #16]
	str	r2, [r1, #4]
	str	r2, [r1, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L188:
	.align	2
.L187:
	.word	.LANCHOR0
	.word	eliwood
	.word	enemy1attack
	.word	resetLocation
	.word	arrow
	.word	.LANCHOR1
	.size	initialize3, .-initialize3
	.align	2
	.global	update
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L199
	stmfd	sp!, {r3, lr}
	ldr	r3, [r0, #16]
	cmp	r3, #1
	beq	.L195
	ldr	r3, .L199+4
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #0]
	str	r1, [r0, #4]
	str	r2, [r0, #0]
.L191:
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L196
	cmp	r3, #1
	beq	.L197
	cmp	r3, #2
	beq	.L198
.L189:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L196:
	ldr	r3, .L199+8
	ldr	r0, .L199+4
	add	r1, r3, #8
	ldmia	r1, {r1, r2}	@ phole ldm
	ldr	r3, .L199+12
	mov	lr, pc
	bx	r3
	b	.L189
.L198:
	ldr	r0, .L199+4
	ldr	r3, .L199+16
	mov	lr, pc
	bx	r3
	b	.L189
.L195:
	ldr	r3, .L199+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L199+4
	b	.L191
.L197:
	ldr	r0, .L199+4
	ldr	r1, .L199
	ldr	r3, .L199+24
	mov	lr, pc
	bx	r3
	b	.L189
.L200:
	.align	2
.L199:
	.word	arrow
	.word	eliwood
	.word	.LANCHOR1
	.word	updatePlayer
	.word	updatePlayer3
	.word	updateBullet
	.word	updatePlayer2
	.size	update, .-update
	.align	2
	.global	eattack
	.type	eattack, %function
eattack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L216
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r2, #0]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2, #0]
	bne	.L201
	ldr	r4, .L216+4
	ldr	r3, [r4, #44]
	cmp	r3, #0
	moveq	r1, #44
	moveq	r0, #28
	moveq	r3, r1
	beq	.L203
	cmp	r3, #30
	bgt	.L215
	mov	r1, #1
	str	r1, [r4, #24]
	sub	r0, r3, #16
	mov	r1, r3
.L205:
	cmp	r0, #14
	subls	r3, r3, #1
	movhi	r0, #1
	movls	r1, r3
	strhi	r0, [r4, #36]
	sub	r1, r1, #1
	movhi	r0, #2
	strls	r3, [r4, #44]
	strhi	r0, [r4, #24]
	cmp	r1, #14
	bhi	.L208
	ldr	r2, [r4, #32]
	cmp	r2, #0
	ldr	r5, .L216+4
	ble	.L209
	ldr	r6, .L216+8
	mov	r1, r5
	mov	r0, r6
	ldr	r3, .L216+12
	mov	lr, pc
	bx	r3
	cmp	r0, #1
	beq	.L210
	ldr	r3, [r5, #44]
.L209:
	sub	r3, r3, #1
	str	r3, [r4, #44]
.L201:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L215:
	sub	r3, r3, #1
	mov	r1, r3
	sub	r0, r3, #16
.L203:
	str	r3, [r4, #44]
	b	.L205
.L210:
	ldr	r3, [r6, #36]
	cmp	r3, #0
	ldreq	r3, [r6, #60]
	ldreq	r2, [r6, #4]
	subeq	r3, r3, #1
	subeq	r2, r2, #30
	streq	r3, [r6, #60]
	streq	r2, [r6, #4]
	ldr	r3, [r5, #44]
	b	.L209
.L208:
	mov	r3, #0
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	mov	r3, #10
	str	r3, [r2, #0]
	b	.L201
.L217:
	.align	2
.L216:
	.word	enemy1attack
	.word	soldier
	.word	eliwood
	.word	playerCollision
	.size	eattack, .-eattack
	.align	2
	.global	shadowset
	.type	shadowset, %function
shadowset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, .L353
	bl	eattack
	add	r2, r5, #16
	ldmia	r2, {r2, r3}	@ phole ldm
	ldr	r8, .L353+4
	add	r2, r2, #1
	add	r3, r3, #1
	add	r4, r8, #28
	ldr	r6, .L353+8
	str	r2, [r5, #16]
	str	r3, [r5, #20]
	ldr	fp, .L353+12
	mov	sl, r4
	mov	r7, #0
.L226:
	ldr	r3, [sl, #-28]
	cmp	r3, #19
	ble	.L315
.L219:
	ldr	r2, .L353+16
	add	r9, r7, r7, asl #1
	add	r9, r7, r9, asl #2
	add	r9, r2, r9, asl #2
	ldr	r3, .L353+20
	mov	r0, r9
	ldr	r1, [r5, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #28]
	cmp	r3, #0
	beq	.L316
	mov	r0, r9
	ldr	r1, .L353+24
	ldr	r2, .L353+28
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	beq	.L317
.L221:
	ldr	r0, .L353+32
	ldr	r1, .L353+24
	ldr	r2, .L353+28
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	beq	.L318
.L222:
	mov	r0, r9
	ldr	r1, .L353+36
	ldr	r2, .L353+40
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	beq	.L319
.L223:
	ldr	r0, .L353+36
	sub	r1, r8, #4
	ldr	r2, .L353+40
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	beq	.L320
.L224:
	add	r7, r7, #1
	cmp	r7, #4
	add	r8, r8, #52
	add	sl, sl, #52
	bne	.L226
	ldr	r2, .L353+36
	ldr	r3, [r2, #68]
	cmp	r3, #0
	mov	r8, r2
	bne	.L227
	ldr	r3, [r2, #48]
	cmp	r3, #0
	bne	.L228
	ldr	r2, [r2, #64]
	cmp	r2, #0
	beq	.L321
	cmp	r2, #1
	beq	.L322
	cmp	r2, #2
	beq	.L235
.L233:
	ldr	r7, .L353+36
	ldr	r3, [r7, #20]
	b	.L230
.L316:
	ldr	r2, .L353
	ldr	r0, .L353+12
	ldr	r1, [r2, #20]
	ldr	r3, .L353+44
	mov	lr, pc
	bx	r3
	mov	r0, r9
	ldr	r1, .L353+24
	ldr	r2, .L353+28
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	bne	.L221
.L317:
	ldr	r3, [r8, #28]
	ldr	r1, [sl, #-28]
	ldr	r2, [r6, #8]
	sub	r3, r3, #1
	add	r2, r1, r2
	cmp	r3, #0
	str	r2, [sl, #-28]
	str	r3, [r8, #28]
	bne	.L221
	ldr	r3, [r8, #16]
	cmp	r3, #1
	ldreq	r0, .L353+8
	ldreq	r3, [r0, #4]
	subeq	r3, r3, #1
	streq	r3, [r0, #4]
	ldr	r1, .L353+24
	ldr	r0, .L353+32
	ldr	r2, .L353+28
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	bne	.L222
.L318:
	ldr	r0, .L353+32
	ldr	r3, [r0, #32]
	ldr	r2, [r0, #4]
	ldr	r1, [r6, #8]
	sub	r3, r3, #1
	add	r2, r1, r2
	cmp	r3, #0
	str	r2, [r0, #4]
	str	r3, [r0, #32]
	bne	.L222
	ldr	r3, [r0, #20]
	cmp	r3, #1
	ldreq	r1, .L353+8
	ldreq	r3, [r1, #4]
	subeq	r3, r3, #1
	streq	r3, [r1, #4]
	mov	r0, r9
	ldr	r1, .L353+36
	ldr	r2, .L353+40
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	bne	.L223
.L319:
	ldr	r3, [r8, #28]
	ldr	r1, [sl, #-28]
	ldr	r2, [r6, #8]
	sub	r3, r3, #1
	add	r2, r1, r2
	cmp	r3, #0
	str	r2, [sl, #-28]
	str	r3, [r8, #28]
	bne	.L223
	ldr	r3, [r8, #16]
	cmp	r3, #1
	ldreq	r0, .L353+8
	ldreq	r3, [r0, #4]
	subeq	r3, r3, #1
	streq	r3, [r0, #4]
	sub	r1, r8, #4
	ldr	r0, .L353+36
	ldr	r2, .L353+40
	mov	lr, pc
	bx	r2
	cmp	r0, #1
	bne	.L224
.L320:
	ldr	r0, .L353+36
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bne	.L224
	ldr	r3, [r8, #28]
	cmp	r3, #0
	ble	.L224
	ldr	r3, [r0, #4]
	cmp	r3, #32
	ldrle	r1, .L353+36
	ldrgt	r2, [r0, #60]
	ldrle	r3, [r1, #60]
	subgt	r3, r3, #30
	subgt	r2, r2, #1
	suble	r3, r3, #1
	strgt	r2, [r0, #60]
	strgt	r3, [r0, #4]
	strle	r3, [r1, #60]
	b	.L224
.L315:
	ldr	r1, .L353+48
	mov	lr, pc
	bx	r1
	ldr	r2, .L353+52
	smull	r1, r3, r2, r0
	mov	r2, r0, asr #31
	add	r3, r3, r0
	rsb	r3, r2, r3, asr #2
	rsb	r3, r3, r3, asl #3
	rsb	r0, r3, r0
	add	r0, r6, r0, asl #2
	ldr	r3, [r0, #12]
	str	r3, [sl, #-32]
	b	.L219
.L227:
	cmp	r3, #1
	beq	.L323
	cmp	r3, #2
	ldrne	r1, .L353+56
	beq	.L324
.L247:
	ldr	r2, .L353+32
	ldr	r3, [r2, #32]
	cmp	r3, #0
	mov	r3, r2
	ble	.L299
.L327:
	ldr	r2, [r2, #24]
	cmp	r2, #0
	bne	.L300
	ldr	r2, [r3, #4]
	ldrh	r3, [r3, #0]
	orr	r2, r2, #16384
	strh	r3, [r1, #8]	@ movhi
	mov	r3, #768	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	r3, [r1, #12]	@ movhi
.L301:
	mov	ip, #900
	mov	lr, #904
	ldr	r3, .L353+56
	ldr	r0, .L353+60
	add	ip, ip, #1
	add	lr, lr, #2
.L303:
	ldr	r2, [r4, #0]
	cmp	r2, #0
	ble	.L304
	ldr	r2, [r4, #-8]
	cmp	r2, #0
	bne	.L305
	ldr	r2, [r4, #-28]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	ldrh	r7, [r4, #-32]
	strh	r2, [r3, #18]	@ movhi
	mov	r2, #896	@ movhi
	strh	r7, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
.L306:
	add	r4, r4, #52
	cmp	r4, r0
	add	r3, r3, #8
	bne	.L303
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bne	.L308
	mvn	r0, #32512
	mov	r2, #456
	sub	r0, r0, #55
	add	r2, r2, #2
	strh	r3, [r1, #48]	@ movhi
	strh	r0, [r1, #50]	@ movhi
	strh	r2, [r1, #52]	@ movhi
.L308:
	ldr	r3, .L353+64
	mov	lr, pc
	bx	r3
	ldr	r1, .L353+56
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	ip, .L353+68
	mov	lr, pc
	bx	ip
	ldrh	r1, [r5, #4]
	ldrh	r2, [r5, #0]
	mov	r3, #67108864
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L228:
	cmp	r3, #1
	beq	.L325
	cmp	r3, #2
	beq	.L241
.L240:
	ldr	r1, .L353+36
	ldr	r3, [r1, #20]
.L230:
	cmp	r3, #3
	beq	.L326
.L244:
	ldr	r2, .L353+36
	ldr	r1, .L353+56
	ldrh	r2, [r2, #0]
	strh	r2, [r1, #0]	@ movhi
.L245:
	cmp	r3, #0
	bne	.L246
	ldr	r7, .L353+36
	ldr	r2, [r7, #4]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L353+32
	strh	r3, [r1, #4]	@ movhi
	ldr	r3, [r2, #32]
	cmp	r3, #0
	mov	r3, r2
	bgt	.L327
.L299:
	ldr	r2, [r2, #0]
	ldr	r3, [r3, #4]
	orr	r2, r2, #512
	orr	r3, r3, #16384
	mov	r0, #768	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	b	.L301
.L305:
	cmp	r2, #1
	beq	.L328
	cmp	r2, #2
	bne	.L306
	ldr	r2, [r4, #-28]
	ldr	r7, [r4, #-32]
	mvn	r2, r2, asl #17
	orr	r7, r7, #16384
	mvn	r2, r2, lsr #17
	strh	r7, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	lr, [r3, #20]	@ movhi
	b	.L306
.L304:
	ldr	r2, [r4, #-28]
	ldr	r7, [r4, #-32]
	mvn	r2, r2, asl #17
	orr	r7, r7, #512
	mvn	r2, r2, lsr #17
	strh	r7, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	ip, [r3, #20]	@ movhi
	b	.L306
.L328:
	ldr	r2, [r4, #-28]
	ldrh	r7, [r4, #-32]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	strh	r7, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	strh	ip, [r3, #20]	@ movhi
	b	.L306
.L300:
	cmp	r2, #1
	beq	.L329
	cmp	r2, #2
	bne	.L301
	ldmia	r3, {r0, r2}	@ phole ldm
	mvn	r2, r2, asl #17
	mov	r3, #772
	orr	r0, r0, #16384
	mvn	r2, r2, lsr #17
	add	r3, r3, #3
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	b	.L301
.L323:
	ldr	r2, [r2, #48]
	cmp	r2, #0
	beq	.L330
	cmp	r2, #1
	beq	.L331
	cmp	r2, #2
	beq	.L332
	cmp	r2, #3
	beq	.L266
.L261:
	ldr	r0, .L353+36
	ldr	r2, .L353+24
	ldr	r3, [r0, #20]
	ldr	ip, [r0, #4]
.L258:
	cmp	r3, #0
	beq	.L270
	cmp	r3, #1
	beq	.L333
	cmp	r3, #2
	beq	.L334
	cmp	r3, #3
	mvneq	r3, ip, asl #17
	ldreq	r1, .L353+56
	mvneq	r3, r3, lsr #17
	ldrne	r1, .L353+36
	streqh	r3, [r1, #2]	@ movhi
	moveq	r3, #724	@ movhi
	ldrne	ip, [r1, #4]
	streqh	r3, [r1, #4]	@ movhi
	ldrne	r1, .L353+56
	b	.L272
.L321:
	bl	update
	ldr	r3, [r8, #20]
	b	.L230
.L325:
	ldr	r2, [r2, #52]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r8, #52]
	bgt	.L240
	ldr	r2, [r8, #8]
	add	r2, r2, #30
	str	r2, [r8, #8]
	mov	r2, #2
	mov	r1, #3
	str	r2, [r8, #48]
	mov	r2, #20
	str	r1, [r8, #20]
	str	r2, [r8, #52]
	str	r3, [r8, #36]
.L241:
	ldr	r2, .L353+36
	ldr	r3, [r2, #52]
	cmp	r3, #0
	mov	r1, r2
	ble	.L242
	ldr	r7, .L353+32
	ldr	r3, .L353+72
	mov	r0, r7
	mov	lr, pc
	bx	r3
	cmp	r0, #1
	beq	.L335
.L243:
	ldr	r7, .L353+36
	ldr	r3, [r7, #52]
	sub	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #20]
	b	.L230
.L246:
	cmp	r3, #1
	beq	.L336
	cmp	r3, #2
	beq	.L337
	cmp	r3, #3
	beq	.L338
	cmp	r3, #6
	beq	.L339
	cmp	r3, #7
	beq	.L340
	cmp	r3, #8
	beq	.L341
	cmp	r3, #9
	beq	.L342
	cmp	r3, #4
	beq	.L343
	cmp	r3, #13
	bne	.L247
	ldr	r3, .L353+36
	ldr	r2, [r3, #4]
	mov	r3, #2592
	mvn	r2, r2, asl #18
	mvn	r2, r2, lsr #18
	add	r3, r3, #8
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L329:
	ldr	r2, [r3, #4]
	ldrh	r3, [r3, #0]
	orr	r2, r2, #16384
	mov	r7, #772	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r7, [r1, #12]	@ movhi
	b	.L301
.L324:
	ldr	r2, [r2, #48]
	cmp	r2, #0
	bne	.L277
	ldr	r2, [r8, #64]
	cmp	r2, #0
	beq	.L344
	cmp	r2, #1
	beq	.L345
	cmp	r2, #2
	beq	.L283
.L284:
	cmp	r2, #3
	beq	.L346
	cmp	r2, #4
	bne	.L279
.L288:
	ldr	r1, .L353+36
	ldr	r2, [r1, #56]
	cmp	r2, #0
	mov	r3, r1
	ble	.L289
.L313:
	sub	r2, r2, #1
	str	r2, [r3, #56]
	b	.L279
.L269:
	ldr	r2, .L353+24
	mov	r1, #0
	str	r1, [r8, #20]
	str	r1, [r8, #48]
	str	r3, [r2, #16]
	ldr	ip, [r8, #4]
.L270:
	ldr	r1, .L353+56
	mvn	r0, ip, asl #17
	mov	r3, #876
	mvn	r0, r0, lsr #17
	add	r3, r3, #3
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
.L272:
	ldr	r0, [r2, #4]
	sub	r3, r0, #14
	cmp	r3, ip
	ldr	r3, .L353+24
	ble	.L276
	ldr	ip, [r3, #16]
	cmp	ip, #1
	beq	.L347
.L276:
	ldr	ip, [r2, #0]
	mov	r3, #824
	orr	ip, ip, #512
	orr	r0, r0, #16384
	add	r3, r3, #1
	mov	lr, #0
	str	lr, [r2, #20]
	strh	ip, [r1, #56]	@ movhi
	strh	r0, [r1, #58]	@ movhi
	strh	r3, [r1, #60]	@ movhi
	b	.L247
.L336:
	ldr	r0, .L353+36
	ldr	r3, [r0, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r2, #5	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	b	.L247
.L326:
	mov	r1, #8000
	mov	r2, #11008
	ldr	r0, .L353+76
	add	r1, r1, #13
	mov	r3, #0
	add	r2, r2, #17
	bl	playSoundB
	ldr	r0, .L353+36
	ldr	r3, [r0, #0]
	ldr	r1, .L353+56
	orr	r3, r3, #16384
	strh	r3, [r1, #0]	@ movhi
	ldr	r3, [r0, #20]
	b	.L245
.L337:
	ldr	r7, .L353+36
	ldr	r3, [r7, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #10	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L247
.L277:
	cmp	r2, #1
	beq	.L348
.L290:
	cmp	r2, #2
	beq	.L349
.L279:
	ldr	r1, .L353+36
	ldr	r3, [r1, #20]
	cmp	r3, #3
	mov	r2, r1
	beq	.L350
	ldr	r1, .L353+56
	ldrh	r7, [r2, #0]
	cmp	r3, #0
	strh	r7, [r1, #0]	@ movhi
	bne	.L296
	ldr	r3, [r2, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #368	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L247
.L242:
	ldr	r2, [r2, #8]
	mov	r3, #0
	sub	r2, r2, #30
	str	r3, [r1, #20]
	str	r3, [r1, #48]
	str	r3, [r1, #36]
	str	r2, [r1, #8]
	mov	r3, #0
	b	.L244
.L266:
	ldr	r1, [r8, #52]
	cmp	r1, #10
	beq	.L265
	cmp	r1, #0
	ble	.L269
	ldr	ip, [r8, #4]
	ldr	r2, .L353+24
.L268:
	ldr	r7, .L353+36
	sub	r1, r1, #1
	str	r1, [r7, #52]
	ldr	r3, [r7, #20]
	b	.L258
.L340:
	ldr	r2, .L353+36
	ldr	r3, [r2, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r1, #2]	@ movhi
	mov	r3, #165	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L344:
	bl	update
	b	.L279
.L348:
	ldr	r2, [r8, #52]
	cmp	r2, #0
	bgt	.L351
	ldr	r2, [r8, #0]
	add	r2, r2, #30
	str	r2, [r8, #0]
	str	r7, [r8, #20]
	str	r3, [r8, #48]
	mov	r3, #20
.L293:
	ldr	r0, .L353+36
	sub	r3, r3, #1
	str	r3, [r0, #52]
	b	.L279
.L334:
	ldr	r1, .L353+56
	mvn	r0, ip, asl #17
	mov	r3, #888
	mvn	r0, r0, lsr #17
	add	r3, r3, #1
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L272
.L322:
	ldr	r3, [r8, #56]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r8, #56]
	bgt	.L233
	mov	r3, #5
	str	r3, [r8, #20]
	mov	r3, #2
	str	r3, [r8, #64]
	mov	r2, #8
.L234:
	ldr	r0, .L353+36
	sub	r2, r2, #1
	str	r2, [r0, #56]
	ldr	r3, [r0, #20]
	b	.L230
.L330:
	bl	update
	ldr	r3, [r8, #20]
	ldr	ip, [r8, #4]
	ldr	r2, .L353+24
	b	.L258
.L338:
	ldr	r2, .L353+36
	ldr	r3, [r2, #4]
	mvn	r3, r3, asl #18
	mvn	r3, r3, lsr #18
	strh	r3, [r1, #2]	@ movhi
	mov	r3, #15	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L235:
	ldr	r2, [r8, #56]
	cmp	r2, #0
	bgt	.L234
	str	r3, [r8, #20]
	str	r3, [r8, #64]
	mov	r3, #0
	b	.L244
.L350:
	ldmia	r1, {r0, r2}	@ phole ldm
	mvn	r0, r0, asl #17
	ldr	r1, .L353+56
	mvn	r2, r2, asl #18
	mov	r3, #536
	mvn	r0, r0, lsr #17
	mvn	r2, r2, lsr #18
	add	r3, r3, #2
	strh	r0, [r1, #0]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L331:
	ldr	r3, [r8, #52]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r8, #52]
	bgt	.L261
	mov	r3, #2
	str	r3, [r8, #20]
	str	r3, [r8, #48]
	mov	r3, #20
.L262:
	ldr	r7, .L353+36
	sub	r3, r3, #1
	str	r3, [r7, #52]
	b	.L261
.L339:
	ldr	r7, .L353+36
	ldr	r3, [r7, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #160	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L247
.L296:
	cmp	r3, #1
	bne	.L297
	ldr	r2, [r2, #4]
	mov	r3, #372
.L314:
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	add	r3, r3, #1
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L332:
	ldr	r3, [r8, #52]
	cmp	r3, #0
	bgt	.L262
	mov	r3, #3
	str	r3, [r8, #20]
	str	r3, [r8, #48]
	mov	r1, #10
.L265:
	ldr	r2, .L353+36
	ldr	r3, .L353+36
	ldr	r0, [r2, #0]
	ldr	ip, [r3, #4]
	ldr	r2, .L353+24
	mov	r3, #1
	add	r0, r0, #10
	stmia	r2, {r0, ip}	@ phole stm
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	b	.L268
.L333:
	ldr	r1, .L353+56
	mvn	r3, ip, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #884	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L272
.L347:
	ldr	lr, [r3, #0]
	mov	r2, #824
	orr	lr, lr, #16384
	orr	r0, r0, #16384
	add	r2, r2, #1
	str	ip, [r3, #20]
	strh	lr, [r1, #56]	@ movhi
	strh	r0, [r1, #58]	@ movhi
	strh	r2, [r1, #60]	@ movhi
	b	.L247
.L341:
	ldr	r7, .L353+36
	ldr	r3, [r7, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #170	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L247
.L335:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r1, [r6, #8]
	sub	r3, r3, #1
	add	r1, r1, r2
	cmp	r3, #0
	ldr	r2, .L353+8
	str	r1, [r7, #4]
	str	r3, [r7, #32]
	bne	.L243
	ldr	r3, [r7, #20]
	cmp	r3, #1
	ldreq	r3, [r2, #4]
	subeq	r3, r3, #1
	streq	r3, [r2, #4]
	b	.L243
.L342:
	ldr	r2, .L353+36
	ldr	r3, [r2, #4]
	orr	r3, r3, #-16777216
	orr	r3, r3, #16711680
	orr	r3, r3, #53248
	strh	r3, [r1, #2]	@ movhi
	mov	r3, #15	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L346:
	ldr	r0, .L353+36
	ldr	r2, [r0, #56]
	cmp	r2, #0
	mov	r3, r0
	bgt	.L313
	mov	r2, #2
	str	r2, [r0, #20]
	add	r2, r2, #6
	str	r2, [r0, #56]
	mov	r2, #4
	str	r2, [r0, #64]
	b	.L288
.L345:
	ldr	r1, [r8, #56]
	cmp	r1, #0
	subgt	r1, r1, #1
	strgt	r1, [r8, #56]
	bgt	.L279
	str	r2, [r8, #20]
	mov	r2, #8
	str	r2, [r8, #56]
	str	r3, [r8, #64]
.L283:
	ldr	r7, .L353+36
	ldr	r2, [r7, #56]
	cmp	r2, #0
	mov	r3, r7
	ble	.L289
	sub	r2, r2, #1
	str	r2, [r7, #56]
	ldr	r2, [r7, #64]
	b	.L284
.L297:
	cmp	r3, #2
	bne	.L298
	ldr	r2, [r2, #4]
	mov	r3, #376
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	add	r3, r3, #2
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L247
.L351:
	ldr	r7, .L353+32
	mov	r1, r8
	mov	r0, r7
	ldr	r3, .L353+72
	mov	lr, pc
	bx	r3
	cmp	r0, #1
	beq	.L352
.L292:
	ldr	r2, .L353+36
	ldr	r3, [r2, #52]
	sub	r3, r3, #1
	str	r3, [r2, #52]
	ldr	r2, [r2, #48]
	b	.L290
.L349:
	ldr	r7, .L353+36
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bgt	.L293
	mov	r3, #0
	str	r3, [r7, #20]
	str	r3, [r7, #48]
	str	r3, [r7, #36]
	b	.L279
.L343:
	ldr	r7, .L353+36
	ldr	r3, [r7, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	mov	r0, #24	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L247
.L289:
	mov	r2, #0
	str	r2, [r3, #20]
	str	r2, [r3, #64]
	b	.L279
.L352:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r1, [r6, #8]
	sub	r3, r3, #1
	add	r2, r1, r2
	cmp	r3, #0
	str	r2, [r7, #4]
	str	r3, [r7, #32]
	bne	.L292
	ldr	r3, [r7, #20]
	cmp	r3, #1
	ldreq	r3, [r6, #4]
	subeq	r3, r3, #1
	streq	r3, [r6, #4]
	b	.L292
.L298:
	cmp	r3, #4
	bne	.L247
	ldr	r2, [r2, #4]
	mov	r3, #532
	b	.L314
.L354:
	.align	2
.L353:
	.word	.LANCHOR1
	.word	arrKnight+4
	.word	.LANCHOR0
	.word	mage
	.word	arrKnight
	.word	updateKnight
	.word	arrow
	.word	bulletCollision
	.word	soldier
	.word	eliwood
	.word	playerCollision2
	.word	updateMage
	.word	rand
	.word	-1840700269
	.word	shadowOAM
	.word	arrKnight+240
	.word	waitForVblank
	.word	DMANow
	.word	playerCollision
	.word	sword
	.size	shadowset, .-shadowset
	.align	2
	.global	updateLevel2
	.type	updateLevel2, %function
updateLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L377
	ldr	r3, .L377+4
	stmfd	sp!, {r4, r5, r6, lr}
	add	r0, r2, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r3, [r3, #0]
	add	r0, r0, #1
	add	r1, r1, #1
	tst	r3, #512
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	beq	.L372
	ldr	r2, .L377+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #512
	beq	.L369
.L372:
	ldr	r4, .L377+12
.L356:
	tst	r3, #256
	beq	.L358
	ldr	r2, .L377+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #256
	beq	.L374
.L358:
	tst	r3, #2
	beq	.L373
	ldr	r2, .L377+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #2
	beq	.L371
.L373:
	ldr	r5, .L377+16
.L360:
	tst	r3, #8
	beq	.L361
	ldr	r3, .L377+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L375
.L361:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L376
.L362:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bleq	goToWin
.L363:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	shadowset
.L371:
	ldr	r5, .L377+16
	str	r2, [r5, #8]
	b	.L360
.L374:
	ldr	r1, [r4, #20]
	cmp	r1, #3
	ldr	r1, .L377+12
	beq	.L358
	ldr	r0, [r1, #68]
	cmp	r0, #2
	streq	r2, [r1, #68]
	streq	r2, [r1, #20]
	beq	.L358
	cmp	r0, #0
	moveq	r2, #2
	streq	r2, [r1, #68]
	streq	r0, [r1, #20]
	b	.L358
.L369:
	ldr	r4, .L377+12
	ldr	r1, [r4, #20]
	cmp	r1, #3
	beq	.L356
	ldr	r1, [r4, #68]
	cmp	r1, #0
	moveq	r2, #1
	streq	r2, [r4, #68]
	streq	r1, [r4, #20]
	beq	.L356
	cmp	r1, #1
	bne	.L356
	ldr	r1, .L377+20
	ldr	ip, [r1, #0]
	ldr	r0, .L377+24
	orr	ip, ip, #512
	strh	ip, [r0, #56]	@ movhi
	str	r2, [r1, #16]
	str	r2, [r4, #68]
	str	r2, [r4, #20]
	b	.L356
.L376:
	bl	goToLose
	b	.L362
.L375:
	ldr	r3, .L377+28
	mov	r2, #8
	str	r2, [r3, #0]
	bl	goToPause
	b	.L361
.L378:
	.align	2
.L377:
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	eliwood
	.word	.LANCHOR0
	.word	arrow
	.word	shadowOAM
	.word	savestate
	.size	updateLevel2, .-updateLevel2
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L401
	ldr	r3, .L401+4
	stmfd	sp!, {r4, r5, r6, lr}
	add	r0, r2, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r3, [r3, #0]
	add	r0, r0, #1
	add	r1, r1, #1
	tst	r3, #512
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	beq	.L396
	ldr	r2, .L401+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #512
	beq	.L393
.L396:
	ldr	r4, .L401+12
.L380:
	tst	r3, #256
	beq	.L382
	ldr	r2, .L401+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #256
	beq	.L398
.L382:
	tst	r3, #2
	beq	.L397
	ldr	r2, .L401+8
	ldr	r2, [r2, #0]
	ands	r2, r2, #2
	beq	.L395
.L397:
	ldr	r5, .L401+16
.L384:
	tst	r3, #8
	beq	.L385
	ldr	r3, .L401+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L399
.L385:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L400
.L386:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bleq	goToTransitionOne
.L387:
	ldmfd	sp!, {r4, r5, r6, lr}
	b	shadowset
.L395:
	ldr	r5, .L401+16
	str	r2, [r5, #8]
	b	.L384
.L398:
	ldr	r1, [r4, #20]
	cmp	r1, #3
	ldr	r1, .L401+12
	beq	.L382
	ldr	r0, [r1, #68]
	cmp	r0, #2
	streq	r2, [r1, #68]
	streq	r2, [r1, #20]
	beq	.L382
	cmp	r0, #0
	moveq	r2, #2
	streq	r2, [r1, #68]
	streq	r0, [r1, #20]
	b	.L382
.L393:
	ldr	r4, .L401+12
	ldr	r1, [r4, #20]
	cmp	r1, #3
	beq	.L380
	ldr	r1, [r4, #68]
	cmp	r1, #0
	moveq	r2, #1
	streq	r2, [r4, #68]
	streq	r1, [r4, #20]
	beq	.L380
	cmp	r1, #1
	bne	.L380
	ldr	r1, .L401+20
	ldr	ip, [r1, #0]
	ldr	r0, .L401+24
	orr	ip, ip, #512
	strh	ip, [r0, #56]	@ movhi
	str	r2, [r1, #16]
	str	r2, [r4, #68]
	str	r2, [r4, #20]
	b	.L380
.L400:
	bl	goToLose
	b	.L386
.L399:
	ldr	r3, .L401+28
	mov	r2, #3
	str	r2, [r3, #0]
	bl	goToPause
	b	.L385
.L402:
	.align	2
.L401:
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	eliwood
	.word	.LANCHOR0
	.word	arrow
	.word	shadowOAM
	.word	savestate
	.size	updateGame, .-updateGame
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mvn	r2, #1264
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	sub	r2, r2, #1
	mov	r4, #67108864
	mov	r3, #128	@ movhi
	strh	r3, [r4, #132]	@ movhi
	strh	r2, [r4, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r4, #128]	@ movhi
	add	r3, r4, #512
	ldrh	r1, [r3, #0]
	ldr	r0, .L419
	mov	r2, #50331648
	orr	r1, r1, #1
	add	r2, r2, #28672
	str	r0, [r2, #4092]
	strh	r1, [r3, #0]	@ movhi
	ldrh	r2, [r4, #4]
	orr	r2, r2, #8
	strh	r2, [r4, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	bl	goToInstructions
	mov	r1, #970752
	mov	r2, #11008
	ldr	r0, .L419+4
	add	r1, r1, #1536
	add	r2, r2, #17
	mov	r3, #1
	bl	playSoundA
	ldr	r5, .L419+8
	ldr	r7, .L419+12
	ldr	r6, .L419+16
.L418:
	ldr	r3, [r5, #0]
	ldr	r2, [r7, #0]
.L405:
	str	r3, [r6, #0]
	ldr	r3, [r4, #304]
	str	r3, [r5, #0]
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L405
.L415:
	.word	.L406
	.word	.L407
	.word	.L408
	.word	.L409
	.word	.L410
	.word	.L411
	.word	.L412
	.word	.L413
	.word	.L414
.L414:
	bl	updateLevel2
	b	.L418
.L413:
	bl	updateTransitionone
	b	.L418
.L412:
	bl	updatePause
	b	.L418
.L411:
	bl	updateWin
	b	.L418
.L410:
	bl	updateLose
	b	.L418
.L409:
	bl	updateGame
	b	.L418
.L408:
	bl	updateCutscene
	b	.L418
.L407:
	bl	updateStart
	b	.L418
.L406:
	bl	updateInstructions
	b	.L418
.L420:
	.align	2
.L419:
	.word	interruptHandler
	.word	theme
	.word	buttons
	.word	state
	.word	oldButtons
	.size	main, .-main
	.global	atkTimer
	.global	prevcuttimer
	.global	enemyanimtimer
	.global	eliwoodHorsetimer
	.global	eliwoodHorsetimerB
	.global	hOff
	.global	vOff
	.global	knockback
	.global	axis
	.global	lv1total
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	cuttimer,4,4
	.comm	cuttimer2,4,4
	.comm	soundA,28,4
	.comm	soundB,28,4
	.comm	enemy1attack,4,4
	.comm	shadowOAM,1024,4
	.comm	arrow,24,4
	.comm	orb,24,4
	.comm	eliwood,72,4
	.comm	soldier,48,4
	.comm	arrKnight,208,4
	.comm	mage,56,4
	.comm	state,4,4
	.comm	savestate,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	prevcuttimer, %object
	.size	prevcuttimer, 4
prevcuttimer:
	.word	-1
	.type	lv1total, %object
	.size	lv1total, 4
lv1total:
	.word	4
	.type	knockback, %object
	.size	knockback, 4
knockback:
	.word	30
	.type	axis, %object
	.size	axis, 32
axis:
	.word	50
	.word	70
	.word	80
	.word	100
	.word	120
	.word	90
	.word	110
	.word	130
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	eliwoodHorsetimer, %object
	.size	eliwoodHorsetimer, 4
eliwoodHorsetimer:
	.space	4
	.type	eliwoodHorsetimerB, %object
	.size	eliwoodHorsetimerB, 4
eliwoodHorsetimerB:
	.space	4
	.type	enemyanimtimer, %object
	.size	enemyanimtimer, 4
enemyanimtimer:
	.space	4
	.type	atkTimer, %object
	.size	atkTimer, 4
atkTimer:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
