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
	.file	"update.c"
	.text
	.align	2
	.global	resetLocation
	.type	resetLocation, %function
resetLocation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	mov	r2, #20
	str	r2, [r0, #4]
	mov	r2, #120
	mov	r3, #0
	str	r2, [r0, #0]
	mov	r2, #3
	str	r3, [r0, #36]
	str	r3, [r0, #28]
	str	r3, [r0, #48]
	str	r2, [r0, #60]
	str	r3, [r0, #68]
	str	r3, [r0, #20]
	bx	lr
	.size	resetLocation, .-resetLocation
	.align	2
	.global	playerCollision
	.type	playerCollision, %function
playerCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldmib	r1, {r3, ip}	@ phole ldm
	ldr	r2, [r0, #4]
	add	ip, r3, ip
	cmp	r2, ip
	bgt	.L6
	ldr	ip, [r0, #8]
	add	r2, r2, ip
	cmp	r3, r2
	bgt	.L6
	ldr	r3, [r0, #0]
	ldr	r0, [r0, #12]
	ldr	r2, [r1, #0]
	add	r0, r3, r0
	cmp	r0, r2
	blt	.L6
	ldr	r0, [r1, #12]
	add	r2, r2, r0
	cmp	r3, r2
	bgt	.L7
	ldr	r0, [r1, #36]
	cmp	r0, #1
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L6:
	mov	r0, #0
	bx	lr
.L7:
	mov	r0, #0
	bx	lr
	.size	playerCollision, .-playerCollision
	.align	2
	.global	updateBullet
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	cmp	r2, #239
	mov	r3, r0
	movgt	r1, #0
	add	r2, r2, #2
	strgt	r1, [r0, #16]
	strgt	r1, [r0, #20]
	str	r2, [r3, #4]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	bulletCollision
	.type	bulletCollision, %function
bulletCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldmib	r0, {r3, ip}	@ phole ldm
	ldr	r2, [r1, #4]
	add	ip, r3, ip
	cmp	r2, ip
	bgt	.L16
	ldr	ip, [r1, #8]
	add	r2, r2, ip
	cmp	r3, r2
	bgt	.L16
	ldr	r3, [r1, #0]
	ldr	ip, [r1, #12]
	ldr	r2, [r0, #0]
	add	ip, r3, ip
	cmp	ip, r2
	blt	.L16
	ldr	ip, [r0, #12]
	add	r2, r2, ip
	cmp	r3, r2
	bgt	.L16
	ldr	r3, [r0, #32]
	cmp	r3, #0
	movgt	r3, #0
	strgt	r3, [r1, #16]
	movgt	r0, #1
	bxgt	lr
	mov	r0, #0
	bx	lr
.L16:
	mov	r0, #0
	bx	lr
	.size	bulletCollision, .-bulletCollision
	.align	2
	.global	playerCollision2
	.type	playerCollision2, %function
playerCollision2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldmib	r1, {r3, ip}	@ phole ldm
	ldr	r2, [r0, #4]
	add	ip, r3, ip
	cmp	r2, ip
	bgt	.L22
	ldr	ip, [r0, #8]
	add	r2, r2, ip
	cmp	r3, r2
	bgt	.L22
	ldr	r3, [r0, #0]
	ldr	r0, [r0, #12]
	ldr	r2, [r1, #0]
	add	r0, r3, r0
	cmp	r0, r2
	blt	.L22
	ldr	r0, [r1, #12]
	add	r2, r2, r0
	cmp	r3, r2
	bgt	.L23
	ldr	r0, [r1, #36]
	cmp	r0, #1
	movne	r0, #0
	moveq	r0, #1
	bx	lr
.L22:
	mov	r0, #0
	bx	lr
.L23:
	mov	r0, #0
	bx	lr
	.size	playerCollision2, .-playerCollision2
	.align	2
	.global	updateMage
	.type	updateMage, %function
updateMage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #-369098752
	add	r3, r3, #958464
	add	r3, r3, #235
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, asl #2
	rsb	r3, r3, r3, asl #3
	cmp	r1, r3, asl #1
	moveq	r3, #1
	moveq	r2, #60
	streq	r2, [r0, #44]
	streq	r3, [r0, #24]
	streq	r3, [r0, #28]
	bx	lr
	.size	updateMage, .-updateMage
	.align	2
	.global	updateOrb
	.type	updateOrb, %function
updateOrb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	cmp	r3, #17
	movle	r2, #0
	sub	r3, r3, #1
	strle	r2, [r0, #16]
	str	r3, [r0, #4]
	bx	lr
	.size	updateOrb, .-updateOrb
	.align	2
	.global	updateKnight
	.type	updateKnight, %function
updateKnight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ands	r1, r1, #7
	bne	.L29
	ldr	r3, [r0, #24]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r0, #24]
	beq	.L29
	cmp	r3, #1
	streq	r1, [r0, #24]
.L29:
	ldr	r3, [r0, #4]
	cmp	r3, #19
	movle	r3, #200
	strle	r3, [r0, #4]
	ldr	r3, [r0, #48]
	cmp	r3, #0
	ldreq	r3, [r0, #4]
	moveq	r2, #1
	subeq	r3, r3, #1
	movne	r3, #0
	streq	r2, [r0, #48]
	streq	r3, [r0, #4]
	strne	r3, [r0, #48]
	bx	lr
	.size	updateKnight, .-updateKnight
	.align	2
	.global	updatePlayer2
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r3, [r3, #0]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L36+4
	ldr	r3, [r3, #0]
	tst	r3, #1
	bxne	lr
	mov	r3, #1
	mov	r2, #15
	str	r3, [r1, #16]
	str	r3, [r0, #48]
	str	r2, [r0, #52]
	str	r3, [r0, #20]
	bx	lr
.L37:
	.align	2
.L36:
	.word	oldButtons
	.word	buttons
	.size	updatePlayer2, .-updatePlayer2
	.align	2
	.global	updatePlayer3
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	ldr	r2, [r3, #0]
	tst	r2, #1
	beq	.L39
	ldr	r2, .L49+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L44
.L39:
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	tst	r2, #16
	bne	.L40
	ldr	r2, [r0, #4]
	cmp	r2, #199
	ble	.L45
.L40:
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	tst	r2, #32
	bne	.L41
	ldr	r2, [r0, #4]
	cmp	r2, #20
	bgt	.L46
.L41:
	ldr	r3, [r3, #0]
	tst	r3, #64
	beq	.L42
	ldr	r2, .L49+4
	ldr	r2, [r2, #0]
	tst	r2, #64
	beq	.L47
.L42:
	tst	r3, #128
	bxeq	lr
.L48:
	ldr	r3, .L49+4
	ldr	r3, [r3, #0]
	tst	r3, #128
	bxne	lr
	ldr	r3, [r0, #0]
	cmp	r3, #129
	bxgt	lr
	add	r3, r3, #10
	mov	r2, #1
	str	r3, [r0, #0]
	mov	r3, #8
	str	r2, [r0, #20]
	str	r2, [r0, #64]
	str	r3, [r0, #56]
	bx	lr
.L47:
	ldr	r2, [r0, #0]
	cmp	r2, #50
	ble	.L42
	sub	r2, r2, #10
	mov	r1, #1
	str	r2, [r0, #0]
	tst	r3, #128
	mov	r2, #8
	str	r1, [r0, #20]
	str	r1, [r0, #64]
	str	r2, [r0, #56]
	bne	.L48
	bx	lr
.L46:
	sub	r2, r2, #10
	str	r2, [r0, #4]
	mov	r2, #3
	mov	r1, #2
	str	r2, [r0, #64]
	mov	r2, #8
	str	r1, [r0, #20]
	str	r2, [r0, #56]
	b	.L41
.L45:
	add	r2, r2, #10
	str	r2, [r0, #4]
	mov	r2, #3
	mov	r1, #2
	str	r2, [r0, #64]
	mov	r2, #8
	str	r1, [r0, #20]
	str	r2, [r0, #56]
	b	.L40
.L44:
	ldr	r1, [r0, #0]
	mov	r2, #1
	sub	r1, r1, #30
	str	r2, [r0, #48]
	mov	ip, #15
	str	r2, [r0, #36]
	mov	r2, #3
	str	ip, [r0, #52]
	str	r1, [r0, #0]
	str	r2, [r0, #20]
	b	.L39
.L50:
	.align	2
.L49:
	.word	oldButtons
	.word	buttons
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L63
	ldr	r3, [r3, #0]
	tst	r3, #1
	beq	.L52
	ldr	r2, .L63+4
	ldr	r2, [r2, #0]
	tst	r2, #1
	beq	.L58
.L52:
	tst	r3, #64
	beq	.L53
	ldr	r2, .L63+4
	ldr	r2, [r2, #0]
	tst	r2, #64
	beq	.L59
.L53:
	tst	r3, #128
	beq	.L54
	ldr	r3, .L63+4
	ldr	r3, [r3, #0]
	tst	r3, #128
	beq	.L60
.L54:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L55
	ands	r1, r1, #7
	beq	.L61
.L55:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bxne	lr
.L62:
	ldr	r3, [r0, #4]
	cmp	r3, #20
	bxle	lr
	sub	r3, r3, #20
	str	r3, [r0, #4]
	mov	r3, #1
	mov	r2, #4
	str	r3, [r0, #64]
	mov	r3, #8
	str	r2, [r0, #20]
	str	r3, [r0, #56]
	bx	lr
.L61:
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r0, #4]
	mov	r2, #1
	add	r3, r3, #3
	str	r3, [r0, #4]
	str	r2, [r0, #20]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	beq	.L62
	bx	lr
.L60:
	ldr	r3, [r0, #0]
	cmp	r3, #129
	bgt	.L54
	add	r3, r3, #10
	str	r3, [r0, #0]
	mov	r3, #1
	mov	r2, #4
	str	r3, [r0, #64]
	mov	r3, #8
	str	r2, [r0, #20]
	str	r3, [r0, #56]
	b	.L54
.L59:
	ldr	r2, [r0, #0]
	cmp	r2, #50
	ble	.L53
	sub	r2, r2, #10
	str	r2, [r0, #0]
	mov	r2, #1
	mov	ip, #4
	str	r2, [r0, #64]
	mov	r2, #8
	str	ip, [r0, #20]
	str	r2, [r0, #56]
	b	.L53
.L58:
	mov	r2, #1
	str	r2, [r0, #48]
	mov	r2, #15
	str	r2, [r0, #52]
	mov	r2, #2
	str	r2, [r0, #20]
	b	.L52
.L56:
	cmp	r3, #1
	ldreq	r3, [r0, #4]
	addeq	r3, r3, #3
	streq	r3, [r0, #4]
	streq	r1, [r0, #20]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	beq	.L62
	bx	lr
.L64:
	.align	2
.L63:
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
	.ident	"GCC: (devkitARM release 31) 4.5.0"
