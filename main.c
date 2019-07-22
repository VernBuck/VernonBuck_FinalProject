/*****************************************
    I am making a game where the player
    controls a knight(s) with different abilities
    the knight that is currently playable will have the ability 
    to jump from row to row and will have a dash ability that 
    will knock enemies back.
	***currently implemented***
	Basic enemy unit attacking
	Basic player unit attacking (note the enemy's hitbox moves in the opposite direction of what I want)
	Basic player attack animation
	Basic player movement animation
	Prototype hitpoints for player (currently invisible)
	Prototype hitpoints for enemy (currently invisible)
	***************************
    At the moment the enemy on the screen is capable of killing
    the player, however the animation/hitbox is the reverse of
    what I want. I've also decided to have it so that the player
    is only able to move towards the right, but in this current
    version the player can move left and right. The reason
    for why I want the player to only move to the right 
    is to create a sense of urgency (I might also add timers)
    this sense of urgency is amplified by have the enemy 
    knock the player back as well as damage him/her upon
    attack contact. Ideally I will be able to create different
    kinds of situations where the player has to swap from 
    knight to knight for the sake of dynamic gameplay
    ******************************************/

/*** M3 update notes
	* Update. A looping bgm music has been implemented as well
	* as an attack sound to go with Eliwood (player's attack animation)
	* Additionally, there are 2 backgrounds present in this version although the hOffset is currently bugged
	* The objective for M4 will be increasing enemy # and adding basic AI
	* The objective for the final version will be adding the 2 other playable characters and a final boss

**/

/** M4 update notes
 * Level 1 completed!
 * Knight type enemies implemented
 * Cheat implemented
 * TODO: ADD ALLY SWAP Feature. Add 5 or 6 more levels(Will not take much time)! Add final boss Maybe
 * Add HP marker for character being used (will not take much time)
 *
 **/

//go to advance resources lab
// to blend 
//REG_BLDMOD = BG0_B |BG1_B | OBJ_A|BACKDROP_B| NORMAL_TRANS; blending on
//REG_BLDMOD = 0; blending off
//two blending layers A and B and flags for different background layers
// Layer A: OBJ
// Layer B: BG1 BACKDROP
// visually speaking A has to be on top of B

//BG_0 will always be infront of BG_1
//if sprites are on the same layer than one will blend and the other will not in regards to attribute 0

/*
if(++counter % changeBlending ==0) {
	ghost_blend--;
	if(ghost_blend < 0) ghost_blend = 16;
	REG_COLEV = WEIGHTOFB(8) | WEIGHTOFA(8); 
	//REG_COLEV = WEIGHTOFB(ghost_blend) | WEIGHTOFA(16-ghost_blend);
}
*/

#include "myLib.h"
#include "currentspritesheet.h"
#include "main.h"
#include "update.h"
#include <stdlib.h>
#include "gameover.h"
#include "pausescreen.h"
#include "titlescreen.h"
#include "winscreen.h"
#include "splash.h"
#include "instructions.h"
#include "sword.h"
#include "theme.h"
#include "innerbackground.h"
#include "outterbackground.h"
#include "page1.h"
#include "page2.h"
#include "page3.h"
#include "page4.h"
#include "page5.h"
#include "page6.h"
#include "page7.h"
#include "page8.h"
#include "page9.h"
#include "page10.h"
#include "page11.h"
#include "page12.h"
#include "page13.h"
#include "page14.h"
#include "page15.h"
#include "page16.h"
#include "page17.h"
#include "page18.h"
#include "page19.h"
#include "page20.h"
#include "page21.h"
#include "page22.h"
#include "page23.h"
#include "page24.h"
#include "page25.h"
#include "page26.h"
#include "page27.h"
#include "page28.h"
#include "page29.h"
#include "page30.h"
#include "page31.h"
#include "page32.h"
#include "page33.h"
#include "page34.h"
#include "page35.h"
#include "page36.h"
#include "page37.h"
#include "page38.h"
#include "page39.h"
#include "page40.h"
#include "page41.h"
#include "page42.h"
#include "page43.h"
#include "page44.h"
#include "page45.h"
#include "page46.h"
#include "page47.h"
#include "page48.h"
#include "page49.h"
#include "page50.h"
#include "page51.h"
#include "page52.h"
#include "arena.h"
#include "level2transition.h"
#include "spritesheet2.h"

unsigned int buttons;
unsigned int oldButtons;

//emptying structure

//magestuff
int atkTimer = 0;

// cutscene timer variables
int cuttimer;
int cuttimer2;
int prevcuttimer = -1;
int enemyanimtimer = 0;
int eliwoodHorsetimer = 0;
int eliwoodHorsetimerB = 0;

// sound struct items
SOUND soundA;
SOUND soundB;

int hOff = 0;
int vOff = 0;

int enemy1attack;

int knockback = 30;

OBJ_ATTR shadowOAM[128];

#define ROWMASK 0xFF
#define COLMASK 0x1FF

//Playable characters!
//enum{ELIWOOD, LYN, HECTOR};

enum {PLAYERSPRITE, ENEMYSPRITE, ENEMYSPRITEHORSE, CHEAT = ENEMYSPRITEHORSE + 4, BULLE = CHEAT + 1, MAGE = BULLE + 1, ORB = MAGE + 1};

//All of eliwood's movements

// player sprite and enemy sprite
BULLET arrow;
BULLET orb;
PLAYER eliwood;
ENEMY soldier;
ENEMYHORSE arrKnight[ENEMYNUM];
ENEMYMAGE mage;

//ENEMYHORSE arrKnight;

//game states
enum {INSTRUCTION, STARTSCREEN, CUTSCENE, GAMESCREEN, LOSESCREEN, WINSCREEN, PAUSESCREEN, TRANSITIONONE,LEVELTWO,LEVELTWOB};
int state;
int savestate;

//enemy knight spawning axis
int axis[] = {50, 70, 80, 100, 120, 90, 110, 130};

int lv1total = 4;
int main()
{
	setupSounds();
	setupInterrupts();
	goToInstructions();

	playSoundA(theme,THEMELEN,THEMEFREQ, 1);
        
	while(1)
	{
		oldButtons = buttons;
        buttons = BUTTONS;
		switch(state) {
			case INSTRUCTION:
				updateInstructions();
				break;
        	case STARTSCREEN:
        		updateStart();
        		break;
        	case CUTSCENE:
        		updateCutscene();
        		break;
        	case GAMESCREEN:
        		updateGame();
        		break;
        	case TRANSITIONONE:
        		updateTransitionone();
        		break;
        	case LEVELTWO:
        		updateLevel2();
        		break;
        	/*case LEVELTWOB:
        		updateLevel2B();
        		break;*/
        	case PAUSESCREEN:
        		updatePause();
        		break;
        	case LOSESCREEN:
        		updateLose();
        		break;
        	case WINSCREEN:
        		updateWin();
        		break;  
        }   
      
	}

	return 0;
}
//cutscene page timer 
//maybe use this as a movement timer
void updatecut()
{
	cuttimer2++;
	if(cuttimer2 % 8 == 0)
	{
		cuttimer++;
		//cuttimer %= 4;
	}
}

//cutscene implementation
void cutscene() {
	if (prevcuttimer == cuttimer) {

		waitForVblank();
	} else {
		 const unsigned short* page; 
		 const unsigned short* palette; 
		switch(cuttimer) {
		case 0:
			palette = page1Pal;
			page = page1Bitmap;
			//loadPalette(page1Pal);
			//drawBackgroundImage(page1Bitmap);
			break;
		case 1:
			//loadPalette(page2Pal);
			//drawBackgroundImage(page2Bitmap);
			palette = page2Pal;
			page = page2Bitmap;
			break;
		case 2:
			//loadPalette(page3Pal);
			//drawBackgroundImage(page3Bitmap);
			palette = page3Pal;
			page = page3Bitmap;
			break;
		case 3:
			palette = page4Pal;
			page = page4Bitmap;
			//loadPalette(page4Pal);
			//drawBackgroundImage(page4Bitmap);
			break;
		case 4:
			palette = page5Pal;
			page = page5Bitmap;
			//loadPalette(page5Pal);
			//drawBackgroundImage(page5Bitmap);
			break;
		case 5:
			palette = page6Pal;
			page = page6Bitmap;
			//loadPalette(page6Pal);
			//drawBackgroundImage(page6Bitmap);
			break;
		case 6:
			palette = page7Pal;
			page = page7Bitmap;
			//loadPalette(page7Pal);
			//drawBackgroundImage(page7Bitmap);
			break;
		case 7:
			palette = page8Pal;
			page = page8Bitmap;
			//loadPalette(page8Pal);
			//drawBackgroundImage(page8Bitmap);
			break;
		case 8:
			palette = page9Pal;
			page = page9Bitmap;
			//loadPalette(page9Pal);
			//drawBackgroundImage(page9Bitmap);
			break;
		case 9:
			palette = page10Pal;
			page = page10Bitmap;
			//loadPalette(page10Pal);
			//drawBackgroundImage(page10Bitmap);
			break;
		case 10:
			palette = page11Pal;
			page = page11Bitmap;
			//loadPalette(page11Pal);
			//drawBackgroundImage(page11Bitmap);
			break;
		case 11:
			palette = page12Pal;
			page = page12Bitmap;
			//loadPalette(page12Pal);
			//drawBackgroundImage(page12Bitmap);
			break;
		case 12:
			palette = page13Pal;
			page = page13Bitmap;
			//loadPalette(page13Pal);
			//drawBackgroundImage(page13Bitmap);
			break;
		case 13:
			palette = page14Pal;
			page = page14Bitmap;
			//loadPalette(page14Pal);
			//drawBackgroundImage(page14Bitmap);
			break;
		case 14:
			palette = page15Pal;
			page = page15Bitmap;
			//loadPalette(page15Pal);
			//drawBackgroundImage(page15Bitmap);
			break;
		case 15:
			palette = page16Pal;
			page = page16Bitmap;
			//loadPalette(page16Pal);
			//drawBackgroundImage(page16Bitmap);
			break;
		case 16:
			palette = page17Pal;
			page = page17Bitmap;
			//loadPalette(page17Pal);
			//drawBackgroundImage(page17Bitmap);
			break;
		case 17:
			palette = page18Pal;
			page = page18Bitmap;
			//loadPalette(page18Pal);
			//drawBackgroundImage(page18Bitmap);
			break;
		case 18:
			palette = page19Pal;
			page = page19Bitmap;
			//loadPalette(page19Pal);
			//drawBackgroundImage(page19Bitmap);
			break;
		case 19:
			palette = page20Pal;
			page = page20Bitmap;
			//loadPalette(page20Pal);
			//drawBackgroundImage(page20Bitmap);
			break;
		case 20:
			palette = page21Pal;
			page = page21Bitmap;
			//loadPalette(page21Pal);
			//drawBackgroundImage(page21Bitmap);
			break;
		case 21:
			palette = page22Pal;
			page = page22Bitmap;
			//loadPalette(page22Pal);
			//drawBackgroundImage(page22Bitmap);
			break;
		case 22:
			palette = page23Pal;
			page = page23Bitmap;
			//loadPalette(page23Pal);
			//drawBackgroundImage(page23Bitmap);
			break;
		case 23:
			palette = page24Pal;
			page = page24Bitmap;
			//loadPalette(page24Pal);
			//drawBackgroundImage(page24Bitmap);
			break;
		case 24:
			palette = page25Pal;
			page = page25Bitmap;
			//loadPalette(page25Pal);
			//drawBackgroundImage(page25Bitmap);
			break;
		case 25:
			palette = page26Pal;
			page = page26Bitmap;
			//loadPalette(page26Pal);
			//drawBackgroundImage(page26Bitmap);
			break;
		case 26:
			palette = page27Pal;
			page = page27Bitmap;
			//loadPalette(page27Pal);
			//drawBackgroundImage(page27Bitmap);
			break;
		case 27:
			palette = page28Pal;
			page = page28Bitmap;
			//loadPalette(page28Pal);
			//drawBackgroundImage(page28Bitmap);
			break;
		case 28:
			palette = page29Pal;
			page = page29Bitmap;
			//loadPalette(page29Pal);
			//drawBackgroundImage(page29Bitmap);
			break;
		case 29:
			palette = page30Pal;
			page = page30Bitmap;
			//loadPalette(page30Pal);
			//drawBackgroundImage(page30Bitmap);
			break;
		case 30:
			palette = page31Pal;
			page = page31Bitmap;
			//loadPalette(page31Pal);
			//drawBackgroundImage(page31Bitmap);
			break;
		case 31:
			palette = page32Pal;
			page = page32Bitmap;
			//loadPalette(page32Pal);
			//drawBackgroundImage(page32Bitmap);
			break;
		case 32:
			palette = page33Pal;
			page = page33Bitmap;
			//loadPalette(page33Pal);
			//drawBackgroundImage(page33Bitmap);
			break;
		case 33:
			palette = page34Pal;
			page = page34Bitmap;
			//loadPalette(page34Pal);
			//drawBackgroundImage(page34Bitmap);
			break;
		case 34:
			palette = page35Pal;
			page = page35Bitmap;
			//loadPalette(page35Pal);
			//drawBackgroundImage(page35Bitmap);
			break;
		case 35:
			palette = page36Pal;
			page = page36Bitmap;
			//loadPalette(page36Pal);
			//drawBackgroundImage(page36Bitmap);
			break;
		case 36:
			palette = page37Pal;
			page = page37Bitmap;
			//loadPalette(page37Pal);
			//drawBackgroundImage(page37Bitmap);
			break;
		case 37:
			palette = page38Pal;
			page = page38Bitmap;
			//loadPalette(page38Pal);
			//drawBackgroundImage(page38Bitmap);
			break;
		case 38:
			palette = page39Pal;
			page = page39Bitmap;
			//loadPalette(page39Pal);
			//drawBackgroundImage(page39Bitmap);
			break;
		case 39:
			palette = page40Pal;
			page = page40Bitmap;
			//loadPalette(page40Pal);
			//drawBackgroundImage(page40Bitmap);
			break;
		case 40:
			palette = page41Pal;
			page = page41Bitmap;
			//loadPalette(page41Pal);
			//drawBackgroundImage(page41Bitmap);
			break;
		case 41:
			palette = page42Pal;
			page = page42Bitmap;
			//loadPalette(page42Pal);
			//drawBackgroundImage(page42Bitmap);
			break;
		case 42:
			palette = page43Pal;
			page = page43Bitmap;
			//loadPalette(page43Pal);
			//drawBackgroundImage(page43Bitmap);
			break;
		case 43:
			palette = page44Pal;
			page = page44Bitmap;
			//loadPalette(page44Pal);
			//drawBackgroundImage(page44Bitmap);
			break;
		case 44:
			palette = page45Pal;
			page = page45Bitmap;
			//loadPalette(page45Pal);
			//drawBackgroundImage(page45Bitmap);
			break;
		case 45:
			palette = page46Pal;
			page = page46Bitmap;
			//loadPalette(page46Pal);
			//drawBackgroundImage(page46Bitmap);
			break;
		case 46:
			palette = page47Pal;
			page = page47Bitmap;
			//loadPalette(page47Pal);
			//drawBackgroundImage(page47Bitmap);
			break;
		case 47:
			palette = page48Pal;
			page = page48Bitmap;
			//loadPalette(page48Pal);
			//drawBackgroundImage(page48Bitmap);
			break;
		case 48:
			palette = page49Pal;
			page = page49Bitmap;
			//loadPalette(page49Pal);
			//drawBackgroundImage(page49Bitmap);
			break;
		case 49:
			palette = page50Pal;
			page = page50Bitmap;
			//loadPalette(page50Pal);
			//drawBackgroundImage(page50Bitmap);
			break;
		case 50:
			palette = page51Pal;
			page = page51Bitmap;
			//loadPalette(page51Pal);
			//drawBackgroundImage(page51Bitmap);
			break;
		case 51:
			palette = page52Pal;
			page = page52Bitmap;
			//loadPalette(page52Pal);
			//drawBackgroundImage(page52Bitmap);
			break;
	}
	prevcuttimer = cuttimer;
	drawBackgroundImage(page);
	waitForVblank();
	flipPage();
	loadPalette(palette);
	}
	
}

//sound stuff
void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;
}
void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
	
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
	
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
	
        REG_TM0CNT = 0;
	
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;
	
        soundA.data = sound;
        soundA.length = length;
		soundA.frequency = frequency;
		soundA.isPlaying = 1;
		soundA.loops = loops;
		soundA.duration = ((VBLANK_FREQ*length)/frequency);
		soundA.vbCount = 0;
        
}

void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
	
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
	
        soundB.data = sound;
        soundB.length = length;
		soundB.frequency = frequency;
		soundB.isPlaying = 1;
		soundB.loops = loops;
		soundB.duration = ((VBLANK_FREQ*length)/frequency);
		soundB.vbCount = 0;
        
}

void pauseSound()
{
	// TODO: WRITE THIS FUNCTION
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
	soundA.isPlaying = 0;
	soundB.isPlaying = 0;
	
}

void unpauseSound()
{
	// TODO: WRITE THIS FUNCTION
	REG_TM0CNT = TIMER_ON;
	REG_TM1CNT = TIMER_ON;
	soundA.isPlaying = 1;
	soundB.isPlaying = 1;
	
}

void stopSound()
{
    // TODO: WRITE THIS FUNCTION
   	dma[1].cnt = 0;
   	dma[2].cnt = 0;
    REG_TM0CNT = 0;
	REG_TM1CNT = 0;
	soundA.isPlaying = 0;
	soundB.isPlaying = 0;
}

void setupInterrupts()
{
	REG_IME = 0;
	// TODO: SET UP THE INTERRUPT HANDLER HERE
	// HINT: THERE IS A REGISTER THAT NEEDS TO POINT TO A INTERRUPT FUNCTION
	// HINT: THAT INTERRUPT FUNCTION HAS TO BE CAST TO SOMETHING...
	REG_INTERRUPT = (unsigned int) interruptHandler;
	REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;
	REG_IME = 1;
}

void interruptHandler()
{
	REG_IME = 0;
	if(REG_IF & INT_VBLANK)
	{
		//TODO: FINISH THIS FUNCTION
		// This should be where you determine if a sound if finished or not
		if(soundA.isPlaying) {
			soundA.vbCount++;
			if(soundA.vbCount >= soundA.duration) {
				if(soundA.loops) {
					playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
				} else {
					dma[1].cnt = 0;
					soundA.isPlaying = 0;
					REG_TM0CNT = 0;
				}
			}
		}
		if(soundB.isPlaying) {
			soundB.vbCount++;
			if(soundB.vbCount >= soundB.duration) {
				if(soundB.loops) {
					playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
				} else {
					dma[2].cnt = 0;
					soundB.isPlaying = 0;
					REG_TM1CNT = 0;
				}
			}
		}
		REG_IF = INT_VBLANK; 
	}

	REG_IME = 1;
}

//


//state machine stuff
void goToInstructions() {
	REG_DISPCTL = MODE0|BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	REG_BG0HOFS = 0;
	loadPalette(instructionsPal); 
	DMANow(3, instructionsTiles, &CHARBLOCKBASE[0], instructionsTilesLen/2);
	DMANow(3, instructionsMap, &SCREENBLOCKBASE[31], instructionsMapLen/2);
    state = INSTRUCTION;
}

void updateInstructions() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_START)) { 
		goToStart();
	}
}

void goToStart() {
	REG_DISPCTL = MODE0|BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	REG_BG0HOFS = 0;
	loadPalette(splashPal); 
	DMANow(3, splashTiles, &CHARBLOCKBASE[0], splashTilesLen/2);
	DMANow(3, splashMap, &SCREENBLOCKBASE[31], splashMapLen /2);
    state = STARTSCREEN;
}

void updateStart() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_SELECT)) {
		goToInstructions();
	}
	if(BUTTON_PRESSED(BUTTON_START)) {
		//initialize();
		goToCutscene(); 
		//goToGame();
	}
}

void goToCutscene() {
	REG_DISPCTL = MODE4 | BG2_ENABLE | BACKBUFFER;
	state = CUTSCENE;
	
	//cutsceneinit();
}


void updateCutscene() {
	updatecut();
	//waitForVBlank();
	cutscene();
	if(cuttimer == 52) {
		cuttimer = 0;
		initialize();
		goToGame();
	}
}

void goToGame() {
	REG_DISPCTL = MODE0|BG0_ENABLE| BG1_ENABLE|SPRITE_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(30) | BG_SIZE1;
	REG_BG1CNT = CBB(1) | SBB(29) | BG_SIZE0;
	//Game sprite info DMAing in
	DMANow(3, currentspritesheetTiles, &CHARBLOCKBASE[4], currentspritesheetTilesLen/2);
	DMANow(3,  currentspritesheetPal, SPRITE_PALETTE, currentspritesheetPalLen/2);
	
	// inner background
	loadPalette(innerbackgroundPal); 
	DMANow(3, innerbackgroundTiles, &CHARBLOCKBASE[0], innerbackgroundTilesLen/2);
	DMANow(3, innerbackgroundMap, &SCREENBLOCKBASE[30], innerbackgroundMapLen /2);
	//outer background
	DMANow(3, outterbackgroundTiles, &CHARBLOCKBASE[1], outterbackgroundTilesLen/2);
	DMANow(3, outterbackgroundMap, &SCREENBLOCKBASE[29], outterbackgroundMapLen /2);
	//
    hideSprites();
	state = GAMESCREEN;
}

void updateGame() {
	//0 knock back 1 hit per frame hack
	eliwoodHorsetimer++;
	eliwoodHorsetimerB++;

	if(BUTTON_PRESSED(BUTTON_L) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == ELIWOOD) {
			eliwood.playing = LYN;
			eliwood.curranimation = LYNSTAND;
		} else if (eliwood.playing == LYN) {
			shadowOAM[BULLE].attr0 = arrow.row | ATTR0_HIDE;
			arrow.active = 0;
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		}
	}

	if(BUTTON_PRESSED(BUTTON_R) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == HECTOR) {
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		} else if (eliwood.playing == ELIWOOD) {
			eliwood.playing = HECTOR;
			eliwood.curranimation = HECTORSTAND;
		}
	}

	if(BUTTON_PRESSED(BUTTON_B)) {
		knockback = 0;
	}
	if(BUTTON_PRESSED(BUTTON_START)) {
		savestate = GAMESCREEN;
		goToPause();
	}
	if(eliwood.pHP == 0) {
		goToLose();
	}
	if(lv1total == 0) {
		//waitForVblank();
		
		//initialize2();
		//goToLV2();
		goToTransitionOne();
	}
	shadowset();
}

void goToTransitionOne() {
	initialize2();
	REG_DISPCTL = MODE0|BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	REG_BG0HOFS = 0;
	loadPalette(level2transitionPal); 
	DMANow(3, level2transitionTiles, &CHARBLOCKBASE[0], level2transitionTilesLen/2);
	DMANow(3, level2transitionMap, &SCREENBLOCKBASE[31], level2transitionMapLen /2);
    state = TRANSITIONONE;
}

void updateTransitionone() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_START)) {
		
		goToLV2(); 

	}
}

//LEVELTWO
void goToLV2() {
	REG_DISPCTL = MODE0|BG0_ENABLE| BG1_ENABLE|SPRITE_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(30) | BG_SIZE1;
	REG_BG1CNT = CBB(1) | SBB(29) | BG_SIZE0;
	//Game sprite info DMAing in
	DMANow(3, currentspritesheetTiles, &CHARBLOCKBASE[4], currentspritesheetTilesLen/2);
	DMANow(3,  currentspritesheetPal, SPRITE_PALETTE, currentspritesheetPalLen/2);
	
	// inner background
	loadPalette(arenaPal); 
	DMANow(3, arenaTiles, &CHARBLOCKBASE[0], arenaTilesLen/2);
	DMANow(3, arenaMap, &SCREENBLOCKBASE[30], arenaMapLen /2);

    hideSprites();
	state = LEVELTWO;
}

void updateLevel2() {
	//0 knock back 1 hit per frame hack
	eliwoodHorsetimer++;
	eliwoodHorsetimerB++;

	if(BUTTON_PRESSED(BUTTON_L) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == ELIWOOD) {
			eliwood.playing = LYN;
			eliwood.curranimation = LYNSTAND;
		} else if (eliwood.playing == LYN) {
			shadowOAM[BULLE].attr0 = arrow.row | ATTR0_HIDE;
			arrow.active = 0;
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		}
	}

	if(BUTTON_PRESSED(BUTTON_R) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == HECTOR) {
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		} else if (eliwood.playing == ELIWOOD) {
			eliwood.playing = HECTOR;
			eliwood.curranimation = HECTORSTAND;
		}
	}

	if(BUTTON_PRESSED(BUTTON_B)) {
		knockback = 0;
	}
	if(BUTTON_PRESSED(BUTTON_START)) {
		savestate = LEVELTWO;
		goToPause();
	}
	if(eliwood.pHP == 0) {
		goToLose();
	}
	if(lv1total == 0) {
		//goToLV2B();
		goToWin();
	}
	shadowset();
}

//Level2B
//LEVELTWO
/*void goToLV2B() {
	REG_DISPCTL = MODE0|BG0_ENABLE| BG1_ENABLE|SPRITE_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(30) | BG_SIZE1;
	REG_BG1CNT = CBB(1) | SBB(29) | BG_SIZE0;
	//Game sprite info DMAing in
	DMANow(3, spritesheet2Tiles, &CHARBLOCKBASE[4], spritesheet2TilesLen/2);
	DMANow(3,  spritesheet2Pal, SPRITE_PALETTE, spritesheet2PalLen/2);
	
	// inner background
	loadPalette(arenaPal); 
	DMANow(3, arenaTiles, &CHARBLOCKBASE[0], arenaTilesLen/2);
	DMANow(3, arenaMap, &SCREENBLOCKBASE[30], arenaMapLen /2);

    hideSprites();
    initialize3();
	state = LEVELTWOB;
}

void updateLevel2B() {
	//0 knock back 1 hit per frame hack
	eliwoodHorsetimer++;
	eliwoodHorsetimerB++;

	if(BUTTON_PRESSED(BUTTON_L) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == ELIWOOD) {
			eliwood.playing = LYN;
			eliwood.curranimation = LYNSTAND;
		} else if (eliwood.playing == LYN) {
			shadowOAM[BULLE].attr0 = arrow.row | ATTR0_HIDE;
			arrow.active = 0;
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		}
	}

	if(BUTTON_PRESSED(BUTTON_R) && eliwood.curranimation != ERIGHTATK) {
		if(eliwood.playing == HECTOR) {
			eliwood.playing = ELIWOOD;
			eliwood.curranimation = ERIGHTWALKA;
		} else if (eliwood.playing == ELIWOOD) {
			eliwood.playing = HECTOR;
			eliwood.curranimation = HECTORSTAND;
		}
	}

	if(BUTTON_PRESSED(BUTTON_B)) {
		knockback = 0;
	}
	if(BUTTON_PRESSED(BUTTON_START)) {
		savestate = LEVELTWOB;
		goToPause();
	}
	if(eliwood.pHP == 0) {
		goToLose();
	}
	if(lv1total == 0) {
		goToWin();
	}
	shadowset();
}*/


void goToPause() {
	vOff = 0;
	REG_DISPCTL = MODE0 |BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	loadPalette(pausescreenPal); 
	DMANow(3, pausescreenTiles, &CHARBLOCKBASE[0], pausescreenTilesLen/2);
	DMANow(3, pausescreenMap, &SCREENBLOCKBASE[31], pausescreenMapLen /2);
	state = PAUSESCREEN;
}

void updatePause() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_START)) {
		if (savestate == GAMESCREEN) {
			goToGame();
		}
		if (savestate == LEVELTWO) {
			goToLV2();
		}
		/*if (savestate == LEVELTWOB) {
			goToLV2B();
		}*/
		
	}
	if(BUTTON_PRESSED(BUTTON_SELECT)) {
		hideSprites();
		initialize();

		goToStart();
	}
}

void goToLose() {
	vOff = 0;
	REG_DISPCTL = MODE0 |BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	loadPalette(gameoverPal); 
	DMANow(3, gameoverTiles, &CHARBLOCKBASE[0], gameoverTilesLen/2);
	DMANow(3, gameoverMap, &SCREENBLOCKBASE[31], gameoverMapLen /2);
	state = LOSESCREEN;
}

void updateLose() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_SELECT)) {
		hideSprites();
		initialize();
		goToStart();
	}
}

void goToWin() {
	vOff = 0;
	REG_DISPCTL = MODE0 |BG0_ENABLE;
	REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE1;
	REG_BG0VOFS = 0;
	loadPalette(winscreenPal); 
	DMANow(3, winscreenTiles, &CHARBLOCKBASE[0], winscreenTilesLen/2);
	DMANow(3, winscreenMap, &SCREENBLOCKBASE[31], winscreenMapLen /2);
	state = LOSESCREEN;
}

void updateWin() {
	waitForVblank();
	if(BUTTON_PRESSED(BUTTON_SELECT)) {
		hideSprites();
		initialize();
		goToStart();
	}
}


//Makes sprites invisible
void hideSprites()
{
    for(int i = 0; i < 128; i++) {
    	shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}

//Sets all of the values for the sprites used
void initialize()
{   
	lv1total = 4;
	knockback = 30;
	enemy1attack = 10;
    //player starting location
	/*eliwood.height = 32;
	eliwood.width = 32;
	eliwood.row = 120;
	eliwood.col = 20;

	eliwood.attacking = 0;

	eliwood.animationCounterR = 0;

	eliwood.atkAnimation = 0;

	eliwood.pHP = 3;

	eliwood.playing = ELIWOOD;

	eliwood.curranimation = ERIGHTWALKA;*/
	resetLocation(&eliwood);

	//arrow for lyn
	arrow.curranimation = 0;
	arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;

	//enemy starting locations
	soldier.height = 32;
	soldier.width = 32;
	soldier.row = 130;
	soldier.col = 100;
	soldier.active = 1;
	soldier.eHP = 3;

	//soldier.animation = ENEMYMOVE;

	//knight starting location
	for (int i = 0; i < 3; i++) {
		arrKnight[i].height = 32;
		arrKnight[i].width = 32;
		arrKnight[i].row = axis[rand()%4];
		arrKnight[i].col = 202 - (i*10);
		arrKnight[i].eHP = 2;
		arrKnight[i].attacking = 1;
		arrKnight[i].active = 1;
	}

	hOff = 0;
	vOff = 0;

}

//initialized level 2
void initialize2()
{   
	//eliwood = 0;
	//PLAYER eliwood;
	//struct StructType structVar = {0};
	//issue with initialization 2, reason being location set to odd area and attack enabled until z pressed!
	//typedef PLAYER eliwood = {0};
	lv1total = 4;
	knockback = 30;
	enemy1attack = 10;
	resetLocation(&eliwood);
	//resetLocation(&eliwood);
    //player starting location
	//eliwood.height = 32;
	//eliwood.width = 32;
	//eliwood.row = 120;
	//eliwood.col = 20;

	//resetLocation(&eliwood);

	//eliwood.attacking = 0;

	//eliwood.animationCounterR = 0;

	//eliwood.atkAnimation = 0;

	//eliwood.pHP = 3;

	//eliwood.playing = ELIWOOD;

	//eliwood.curranimation = ERIGHTWALKA;

	//arrow for lyn
	arrow.curranimation = 0;
	arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;

	//enemy starting locations
	/*soldier.height = 32;
	soldier.width = 32;
	soldier.row = 130;
	soldier.col = 100;
	soldier.active = 1;
	soldier.eHP = 3;*/

	//soldier.animation = ENEMYMOVE;

	//knight starting location
	for (int i = 0; i < 4; i++) {
		arrKnight[i].height = 32;
		arrKnight[i].width = 32;
		arrKnight[i].row = axis[rand()%4];
		arrKnight[i].col = 202 - (i*10);
		arrKnight[i].eHP = 2;
		arrKnight[i].attacking = 1;
		arrKnight[i].active = 1;
	}

	hOff = 0;
	vOff = 0;

}

void initialize3()
{   

	lv1total = 1;
	knockback = 30;
	enemy1attack = 10;
	resetLocation(&eliwood);

	//arrow for lyn
	arrow.curranimation = 0;
	arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;

    

	//enemy starting locations
	/*mage.atk = 0;
	mage.animation = MAGESTAND;
	mage.height = 32;
	mage.width = 32;
	mage.row = 80;
	mage.col = 200;
	mage.active = 1;
	mage.eHP = 2;

	orb.curranimation = 0;
    orb.width = 16;
    orb.height = 16;
    orb.row = mage.row;
    orb.col = mage.col;
    orb.active = 0;*/

	hOff = 0;
	vOff = 0;

}

//Updates player location, alien location, and pools bullets
void update() { //currently all code here works except for bulletCollision!
	if(arrow.active == 1) {
		updateBullet(&arrow);
	} else {
		arrow.col = eliwood.col;
		arrow.row = eliwood.row;
	}
	if(eliwood.playing == ELIWOOD) {
		updatePlayer(&eliwood, eliwoodHorsetimer, eliwoodHorsetimerB);
	} else if(eliwood.playing == LYN) {
		updatePlayer2(&eliwood, &arrow);
	} else if(eliwood.playing == HECTOR) {
		updatePlayer3(&eliwood);
	}
}

/*void mageattack() {
	if(mage.atk == 1) {
		if(mage.alternate == 0) {
			if(mage.etimer > 0) {
		        mage.etimer = mage.etimer - 1;
		    } else {
		    	orb.active = 1;
		     	mage.animation = MAGEATTACK;
		     	mage.alternate = 1;
			    mage.etimer = 100;
		    }
		}
		if(mage.alternate == 1){
			if(mage.etimer > 0) {
		        mage.etimer = mage.etimer - 1;
		    } else {
		    	mage.alternate = 0;
		     	mage.animation = MAGESTAND;
		     	mage.atk = 0;
		    }
		}
	}
}*/

void eattack() {
	if(enemy1attack == 0) {
		if(soldier.etimer == 0) {
			soldier.etimer = 45; 
		}
		if(soldier.etimer > 30) {
	        soldier.etimer = soldier.etimer - 1;
	    } else {
	     	soldier.animation = ENEMYATKPREP;
	    } 
	    if(soldier.etimer <= 30 && soldier.etimer > 15) {
	     	soldier.etimer = soldier.etimer - 1;
	    } else {
	    	soldier.attacking = 1;
	     	soldier.animation = ENEMYATK;
	     	//soldier.col = soldier.col - 8; //moves the soldier forward constantly can maybe be used for simulating AI
	    }
	    if(soldier.etimer <= 15 && soldier.etimer > 0) {
	    	if(soldier.eHP > 0) {
	    		if(playerCollision(&eliwood, &soldier) == 1 && (eliwood.attacking == 0)) {
        			eliwood.col = eliwood.col - 30;
        			eliwood.pHP = eliwood.pHP - 1;
        		}
	    	}
	     	soldier.etimer = soldier.etimer - 1;
	    } else {
	    	//soldier.col = soldier.col + 8; this line of code can be used to simulate a backdash charging soldier which is kinda cool
	    	soldier.attacking = 0;
	    	soldier.animation = ENEMYMOVE;
	    	enemy1attack = 10;
	    } 
	} else {
		enemy1attack--;
	}
}

void shadowset() {
		
        eattack();
        //mageattack();
        enemyanimtimer++;
        //Mage spell timer
        atkTimer++;
        //updateOrb (&orb);

        for(int j = 0; j < ENEMYNUM; j++) {
        	//scrambles location or enemy knights in the future might use 3 seperate arrays to avoid overlap
        	if (arrKnight[j].col < 20) {
				arrKnight[j].row = axis[rand()%7];
			}
			updateKnight(&arrKnight[j], enemyanimtimer);

			//updates single mage!
			if(mage.atk == 0) {
				updateMage(&mage, atkTimer);
			}
			

			if(bulletCollision(&arrKnight[j], &arrow) == 1) {
			 	arrKnight[j].col = arrKnight[j].col + knockback;
				arrKnight[j].eHP = arrKnight[j].eHP - 1;
				if(arrKnight[j].eHP == 0 && arrKnight[j].active == 1) {
        			lv1total--;
        			arrKnight[j].active == 0;
        		}
			}

			if(bulletCollision(&soldier, &arrow) == 1) {
			 	soldier.col = soldier.col + knockback;
				soldier.eHP = soldier.eHP - 1;
				if(soldier.eHP == 0 && soldier.active == 1) {
        			lv1total--;
        			soldier.active == 0;
        		}
			}

			if(playerCollision2(&arrKnight[j], &eliwood) == 1) {
        		arrKnight[j].col = arrKnight[j].col + knockback;
        		arrKnight[j].eHP = arrKnight[j].eHP - 1;
        		if(arrKnight[j].eHP == 0 && arrKnight[j].active == 1) {
        			lv1total--;
        			arrKnight[j].active == 0;
        		}
        	}
        	if(playerCollision2(&eliwood, &arrKnight[j]) == 1 && (eliwood.attacking == 0)) {
        		if(arrKnight[j].eHP > 0) {
        			if(eliwood.col - 32 > 0) {
        				eliwood.pHP = eliwood.pHP - 1;
        				eliwood.col = eliwood.col - 30;
        			} else {
        				eliwood.pHP = eliwood.pHP - 1;
        				//eliwood.col = eliwood.col + 80;
        			}
        		}
        	}
		}

        
        //draws player sprite
        if(eliwood.playing == ELIWOOD) {
	        	if (eliwood.atkAnimation == 0) {
		        	if (eliwood.rowChange == 0) {
		        		update();
		        	} else {
		        		// Jumping/row shift code!
			        	if(eliwood.rowChange == 1) {
			        		if (eliwood.jumptimer > 0) {
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = ERIGHTRUNB;
			        			eliwood.jumptimer = 8;
			        			eliwood.rowChange = eliwood.rowChange + 1;
			        		}
			        	}
			        	if(eliwood.rowChange == 2) {
			        		if (eliwood.jumptimer > 0) {
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = ERIGHTWALKA;
			        			eliwood.rowChange = 0;
			        		}
			        	}
		        	}
		        } else {
		        	if(eliwood.atkAnimation == 1){
		        		
		        		if (eliwood.timer > 0) {
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.curranimation = ERIGHTATK;
		        			eliwood.width = eliwood.width + 30;
		        			eliwood.atkAnimation = 2;
		        			eliwood.timer = 20;
		        			eliwood.attacking = 1;
		        		}
		        	}
		        	if (eliwood.atkAnimation == 2) {
		        		if (eliwood.timer > 0) {
		        			//collision check
		        			if(playerCollision(&soldier, &eliwood) == 1) {
		        				soldier.col = soldier.col + knockback;
		        				soldier.eHP = soldier.eHP - 1;
		        				if (soldier.eHP == 0 && soldier.active == 1) {
		        					soldier.active == 0;
		        					lv1total--;
		        				}
		        			}
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.width = eliwood.width - 30;
		        			eliwood.curranimation = ERIGHTWALKA;
		        			eliwood.atkAnimation = 0;
		        			eliwood.attacking = 0;
		        		}
		        	}	
		        }

	        if (eliwood.curranimation == ERIGHTATK) {
	        	playSoundB(sword,SWORDLEN,SWORDFREQ, 0);
	        	shadowOAM[PLAYERSPRITE].attr0 = ATTR0_WIDE | eliwood.row;
	        } else {
	        	shadowOAM[PLAYERSPRITE].attr0 = eliwood.row;
	        }
			//hard coded eliwood movement (will change later)
			if(eliwood.curranimation == ERIGHTWALKA) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,0); 
			} else if(eliwood.curranimation == ERIGHTWALKB) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,5); 
			} else if(eliwood.curranimation == ERIGHTATKPREP) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,10); 
			} else if(eliwood.curranimation == ERIGHTATK) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE64 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,15); 
			} else if(eliwood.curranimation == ELEFTWALKA) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(5,0); 
			} else if(eliwood.curranimation == ELEFTWALKB) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(5,5); 
			} else if(eliwood.curranimation == ELEFTATKPREP) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(5,10); 
			} else if(eliwood.curranimation == ELEFTATK) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE64 | ATTR1_HFLIP| eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,15); 
			} else if(eliwood.curranimation == ERIGHTRUNA) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,24); 
			} else if(eliwood.curranimation == ERIGHTRUNA) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(0,28); 
			} else if(eliwood.curranimation == ERIGHTUPATK) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE64 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(80,40); 
			}
        } else if (eliwood.playing == LYN) {
        	if (eliwood.atkAnimation == 0) {
		        update();
		    } else {
		        	if(eliwood.atkAnimation == 1){
		        		if (eliwood.timer > 0) {
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.curranimation = LYNPULL;
		        			eliwood.atkAnimation = 2;
		        			eliwood.timer = 20;
		        		}
		        	}
		        	if(eliwood.atkAnimation == 2){
		        		if (eliwood.timer > 0) {
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.curranimation = LYNSHOT;
		        			eliwood.atkAnimation = 3;
		        			eliwood.timer = 10;
		        		}
		        	}
		        	if (eliwood.atkAnimation == 3) {
		        		if(eliwood.timer == 10) {
		        			arrow.row = eliwood.row + 10;
		        			arrow.col = eliwood.col;
		        			arrow.active = 1;
		        			arrow.curranimation = 1;
		        		}
		        		if (eliwood.timer > 0) {
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.curranimation = LYNSTAND;
		        			eliwood.atkAnimation = 0;
		        			//eliwood.attacking = 0;
		        			arrow.active = 1;
		        		}
		        	}	
		        }


		    //hardcoded Lyn sprites
		    if(eliwood.curranimation == LYNSTAND) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(27,15); 
			} else if(eliwood.curranimation == LYNPREP) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(27,20); 
			} else if(eliwood.curranimation == LYNPULL) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(27,25); 
			} else if(eliwood.curranimation == LYNSHOT) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(22,20); 
			}

			//arrow visibility
			if(arrow.curranimation = 1 && (arrow.col - 15) >= eliwood.col && arrow.active == 1) {
				shadowOAM[BULLE].attr0 = arrow.row | ATTR0_WIDE;
				shadowOAM[BULLE].attr1 = ATTR1_SIZE16 | arrow.col;
				shadowOAM[BULLE].attr2 = SPRITEOFFSET16(25,25);  
			} else {
				shadowOAM[BULLE].attr0 = arrow.row | ATTR0_HIDE;
				shadowOAM[BULLE].attr1 = ATTR1_SIZE16 | arrow.col;
				shadowOAM[BULLE].attr2 = SPRITEOFFSET16(25,25); 
			}
        } else if (eliwood.playing == HECTOR) {
        	if (eliwood.atkAnimation == 0) {
		        if (eliwood.rowChange == 0) {
		        		update();
		        } else {
			        	if(eliwood.rowChange == 1) {
			        		if (eliwood.jumptimer > 0) {
			        			
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = HECTORSHIFTVERT;
			        			eliwood.jumptimer = 8;
			        			eliwood.rowChange = eliwood.rowChange + 1;
			        		}
			        	}
			        	if(eliwood.rowChange == 2) {
			        		if (eliwood.jumptimer > 0) {
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = HECTORSTAND;
			        			eliwood.rowChange = 0;
			        		}
			        	}
			        	if(eliwood.rowChange == 3) {
			        		if (eliwood.jumptimer > 0) {
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = HECTORSHIFTHORIZ;
			        			eliwood.jumptimer = 8;
			        			eliwood.rowChange = eliwood.rowChange + 1;
			        		}
			        	}
			        	if(eliwood.rowChange == 4) {
			        		if (eliwood.jumptimer > 0) {
			        			eliwood.jumptimer = eliwood.jumptimer - 1;
			        		} else {
			        			eliwood.curranimation = HECTORSTAND;
			        			eliwood.rowChange = 0;
			        		}
			        	}
		        }
		    } else {
		    	if(eliwood.atkAnimation == 1){
		        		if (eliwood.timer > 0) {
		        			if(playerCollision(&soldier, &eliwood) == 1) {
			        				soldier.col = soldier.col + knockback;
			        				soldier.eHP = soldier.eHP - 1;
			        				if (soldier.eHP == 0 && soldier.active == 1) {
			        					soldier.active == 0;
			        					lv1total--;
			        				}
		        			}
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.row = eliwood.row + 30;
		        			eliwood.curranimation = HECTORPOSTATTACK;
		        			eliwood.atkAnimation = 2;
		        			eliwood.timer = 20;
		        			//eliwood.attacking = 1;
		        		}
		        	}
		        	if (eliwood.atkAnimation == 2) {
		        		if (eliwood.timer > 0) {
		        			eliwood.timer = eliwood.timer - 1;
		        		} else {
		        			eliwood.curranimation = HECTORSTAND;
		        			eliwood.atkAnimation = 0;
		        			eliwood.attacking = 0;
		        		}
		        	}
		    }

        	if (eliwood.curranimation == HECTORATTACK) {
	        	shadowOAM[PLAYERSPRITE].attr0 = ATTR0_TALL | eliwood.row;
	        } else {
	        	shadowOAM[PLAYERSPRITE].attr0 = eliwood.row;
	        }
	        
        	if(eliwood.curranimation == HECTORSTAND) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(11,16); 
			} else if(eliwood.curranimation == HECTORSHIFTVERT) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(11,21); 
			} else if(eliwood.curranimation == HECTORSHIFTHORIZ) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(11,26); 
			} else if(eliwood.curranimation == HECTORATTACK) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE64 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(16,26); 
			} else if(eliwood.curranimation == HECTORPOSTATTACK) {
				shadowOAM[PLAYERSPRITE].attr1 = ATTR1_SIZE32 | eliwood.col;
				shadowOAM[PLAYERSPRITE].attr2 = SPRITEOFFSET16(16,21); 
			}
        }

		//draws enemy sprite
		if(soldier.eHP > 0) {
			if (soldier.animation == ENEMYMOVE) {
				shadowOAM[ENEMYSPRITE].attr0 = soldier.row;
				shadowOAM[ENEMYSPRITE].attr1 = ATTR1_SIZE16 | soldier.col;
				shadowOAM[ENEMYSPRITE].attr2 = SPRITEOFFSET16(24,0); 
			} else if(soldier.animation == ENEMYATKPREP) {
				shadowOAM[ENEMYSPRITE].attr0 = soldier.row;
				shadowOAM[ENEMYSPRITE].attr1 = ATTR1_SIZE16 | soldier.col;
				shadowOAM[ENEMYSPRITE].attr2 = SPRITEOFFSET16(24,4);
			} else if(soldier.animation == ENEMYATK) {
				shadowOAM[ENEMYSPRITE].attr0 = soldier.row | ATTR0_WIDE;
				shadowOAM[ENEMYSPRITE].attr1 = ATTR1_SIZE32 | soldier.col;
				shadowOAM[ENEMYSPRITE].attr2 = SPRITEOFFSET16(24,7);
			}
			
		} else {
			shadowOAM[ENEMYSPRITE].attr0 = soldier.row | ATTR0_HIDE;
			shadowOAM[ENEMYSPRITE].attr1 = ATTR1_SIZE16 | soldier.col;
			shadowOAM[ENEMYSPRITE].attr2 = SPRITEOFFSET16(24,0); 
		}

		//draws enemy knight sprites
		for(int i = 0; i < ENEMYNUM; i++) {
			if(arrKnight[i].eHP > 0) {
				if (arrKnight[i].animation == HORSEA) {
					shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row;
					shadowOAM[ENEMYSPRITEHORSE + i].attr1 = ATTR1_SIZE32 | arrKnight[i].col;
					shadowOAM[ENEMYSPRITEHORSE + i].attr2 = SPRITEOFFSET16(28,0); 
				} else if(arrKnight[i].animation == HORSEB) {
					shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row;
					shadowOAM[ENEMYSPRITEHORSE + i].attr1 = ATTR1_SIZE32 | arrKnight[i].col;
					shadowOAM[ENEMYSPRITEHORSE + i].attr2 = SPRITEOFFSET16(28,5);
				} else if(arrKnight[i].animation == HORSEC) {
					shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row | ATTR0_WIDE;
					shadowOAM[ENEMYSPRITEHORSE + i].attr1 = ATTR1_SIZE32 | arrKnight[i].col;
					shadowOAM[ENEMYSPRITEHORSE + i].attr2 = SPRITEOFFSET16(28,10);
				}
			} else {
				shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row | ATTR0_HIDE;
				shadowOAM[ENEMYSPRITEHORSE + i].attr1 = ATTR1_SIZE32 | arrKnight[i].col;
				shadowOAM[ENEMYSPRITEHORSE + i].attr2 = SPRITEOFFSET16(28,5); 
			}
		}

		//draws enemy mage
		/*if(mage.eHP > 0) {
			if (mage.animation == MAGESTAND) {
				shadowOAM[MAGE].attr0 = mage.row;
				shadowOAM[MAGE].attr1 = ATTR1_SIZE32 | mage.col;
				shadowOAM[MAGE].attr2 = SPRITEOFFSET16(27,0); 
			} else if(mage.animation == MAGECAST) {
				shadowOAM[MAGE].attr0 = mage.row;
				shadowOAM[MAGE].attr1 = ATTR1_SIZE32 | mage.col;
				shadowOAM[MAGE].attr2 = SPRITEOFFSET16(27,5);
			} else if(mage.animation == MAGEATTACK) {
				shadowOAM[MAGE].attr0 = mage.row;
				shadowOAM[MAGE].attr1 = ATTR1_SIZE32 | mage.col;
				shadowOAM[MAGE].attr2 = SPRITEOFFSET16(27,10);
			}
			
		} else {
			shadowOAM[MAGE].attr0 = mage.row | ATTR0_HIDE;
			shadowOAM[MAGE].attr1 = ATTR1_SIZE16 | mage.col;
			shadowOAM[MAGE].attr2 = SPRITEOFFSET16(27,0); 
		}*/

		//draws mage attack
		/*if(orb.active == 1) {
			shadowOAM[ORB].attr0 = orb.row;
			shadowOAM[ORB].attr1 = ATTR1_SIZE16 | orb.col;
			shadowOAM[ORB].attr2 = SPRITEOFFSET16(21,0);  
		} else {
			shadowOAM[ORB].attr0 = orb.row | ATTR0_HIDE;
			shadowOAM[ORB].attr1 = ATTR1_SIZE16 | orb.col;
			shadowOAM[ORB].attr2 = SPRITEOFFSET16(21,0); 
		}*/

		if(knockback == 0) {
			shadowOAM[CHEAT].attr0 = 0;
			shadowOAM[CHEAT].attr1 = ATTR1_SIZE32 | 200;
			shadowOAM[CHEAT].attr2 = SPRITEOFFSET16(14, 10);
		}
		waitForVblank();
		DMANow(3, shadowOAM, OAM, 128*4);

		//waitForVblank();

		REG_BG0HOFS = hOff;
        REG_BG0VOFS = vOff;
}