#include "main.h"
#include "myLib.h"
#include "update.h"

//resets position of player
void resetLocation(PLAYER* p) {
	p -> height = 32;
	p -> width = 32;
	p -> col = 20;
	p -> row = 120;
	p -> attacking = 0;
	p -> animationCounterR = 0;
	p -> atkAnimation = 0;
	p -> pHP = 3;
	p -> playing = ELIWOOD;
	p -> curranimation = ERIGHTWALKA;
}

//player collision
int playerCollision(ENEMY* b, PLAYER* p)
{
	if(b->col <= p->col + p->width && b->col + b->width >= p->col && b->row + b->height >= p->row && b->row <= p ->row + p-> height) {
		if(p -> attacking == 1) {
			//b -> active = !(b -> active);
			return 1;
		}
	}
	return 0;
}

int updateBullet(BULLET* b) {
	if (b->col >= 240) {
		b->active = 0;
		b->curranimation = 0;
	}
	b->col = b -> col + 2;
}

int bulletCollision(ENEMYHORSE* p, BULLET* b) {
	if(b->col <= p->col + p->width && b->col + b->width >= p->col && b->row + b->height >= p->row && b->row <= p ->row + p-> height) {
		if (p -> eHP > 0) {
			b -> active = 0;
			return 1;
		}
	}
	return 0;
}

int playerCollision2(ENEMYHORSE* b, PLAYER* p)
{
	if(b->col <= p->col + p->width && b->col + b->width >= p->col && b->row + b->height >= p->row && b->row <= p ->row + p-> height) {
		if(p -> attacking == 1) {
			return 1;
		}
	}
	return 0;
}

void updateMage(ENEMYMAGE *m, int cooldown) {
	if(cooldown % 70 == 0) {
		m -> etimer = 60;
		m -> animation = MAGECAST;
		m -> atk = 1;
	}
}

void updateOrb (BULLET *o) {
	if(o -> col < 18) {
		o -> active = 0;
	}
	o -> col = o -> col - 1;
}

void updateKnight(ENEMYHORSE *b, int timeenemy) {
	if(timeenemy % 8 == 0) {
		if (b -> animation == HORSEA) {
			b -> animation = HORSEB;
		} else if(b -> animation == HORSEB) {
			b -> animation = HORSEA;
		}
	} 
	if(b->col < 20) {
		b-> col = 200;
	}
	if (b -> animationCounter == 0) {
		//b -> animation = HORSEA;
		b -> animationCounter = 1;
		b-> col--;
	} else {
		//b -> animation = HORSEB;
		b -> animationCounter = 0;
	}
}

void updatePlayer2(PLAYER* p, BULLET* a) {
	if (BUTTON_PRESSED(BUTTON_A)) {
		a -> active = 1;
		p -> atkAnimation = 1;
		p -> timer = 15;
		p -> curranimation = LYNPREP;
	} 
}

void updatePlayer3(PLAYER* p) {
	if (BUTTON_PRESSED(BUTTON_A)) {
		p -> atkAnimation = 1;
		p -> timer = 15;
		p -> row = p -> row - 30;
		p -> attacking = 1;
		p -> curranimation = HECTORATTACK;
	} 
	if(BUTTON_HELD(BUTTON_RIGHT)) {
		if(p -> col < 200) {
				p ->curranimation = HECTORSHIFTHORIZ;
				p -> col = p -> col + 10;
				p -> rowChange = 3;
				p -> jumptimer = 8;
		}
	}
	if(BUTTON_HELD(BUTTON_LEFT)) {
		if(p -> col > 20) {
				p ->curranimation = HECTORSHIFTHORIZ;
				p -> col = p -> col - 10;
				p -> rowChange = 3;
				p -> jumptimer = 8;
		}
	}
	if (BUTTON_PRESSED(BUTTON_UP)) {
			if(p -> row > 50) {
				p ->curranimation = HECTORSHIFTVERT;
				p -> row = p -> row - 10;
				p -> rowChange = 1;
				p -> jumptimer = 8;
			}
		}
	if (BUTTON_PRESSED(BUTTON_DOWN)) {
			if (p -> row < 130) {
				p ->curranimation = HECTORSHIFTVERT;
				p -> row = p -> row + 10;
				p -> rowChange = 1;
				p -> jumptimer = 8;
			}
	}
}

//Items below are going into a seperate document
//Moves player and allows player to fire
void updatePlayer(PLAYER* p, int b, int c) {
		if (BUTTON_PRESSED(BUTTON_A)) {
			p -> atkAnimation = 1;
			p -> timer = 15;
			p -> curranimation = ERIGHTATKPREP;
		} 
		if (BUTTON_PRESSED(BUTTON_UP)) {
			if(p -> row > 50) {
				p ->curranimation = ERIGHTRUNA;
				p -> row = p -> row - 10;
				p -> rowChange = 1;
				p -> jumptimer = 8;
			}
		}
		if (BUTTON_PRESSED(BUTTON_DOWN)) {
			if (p -> row < 130) {
				p ->curranimation = ERIGHTRUNA;
				p -> row = p -> row + 10;
				p -> rowChange = 1;
				p -> jumptimer = 8;
			}
		}
		if(BUTTON_HELD(BUTTON_RIGHT)) {
			if(b % 8 == 0) {
				if (p -> curranimation == ERIGHTWALKA) {
					p -> curranimation = ERIGHTWALKB;
					p->col = p -> col + 3;
				} else if(p -> curranimation == ERIGHTWALKB) {
					p -> curranimation = ERIGHTWALKA;
					p->col = p -> col + 3;
				}
			}
		}
		if(BUTTON_HELD(BUTTON_LEFT)) {
			if (p -> col - 20 > 0) {
				p ->curranimation = ERIGHTRUNA;
				p -> col = p -> col - 20;
				p -> rowChange = 1;
				p -> jumptimer = 8;
			}
		}
}