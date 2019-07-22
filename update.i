# 1 "update.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "update.c"
# 1 "main.h" 1


enum {ERIGHTWALKA, ERIGHTWALKB, ERIGHTATKPREP, ERIGHTATK, ERIGHTRUNA,ERIGHTRUNB, ELEFTWALKA, ELEFTWALKB, ELEFTATKPREP, ELEFTATK, ELEFTRUNA, ELEFTRUNB, ELEFTUPATK, ERIGHTUPATK};
enum {ENEMYMOVE, ENEMYATKPREP, ENEMYATK, ENEMYBLOCK};
enum {HORSEA, HORSEB, HORSEC};
enum {MAGESTAND, MAGECAST, MAGEATTACK};
enum {LYNSTAND, LYNPREP, LYNPULL, LYNSHOT};
enum {HECTORSTAND, HECTORSHIFTVERT, HECTORSHIFTHORIZ, HECTORATTACK, HECTORPOSTATTACK};
enum{ELIWOOD, LYN, HECTOR};





void hideSprites();
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void setupInterrupts();
void interruptHandler();
void goToInstructions();
void updateInstructions();
void updateStart();
void updateCutscene();
void updateGame();
void updateLevel2();
void updatePause();
void updateLose();
void updateWin();
void goToInstructions();
void goToStart();
void goToCutscene();
void goToGame();
void goToLV2();
void goToPause();
void goToLose();
void goToWin();
void initialize2();
void shadowset();


typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int vbCount;
}SOUND;

typedef struct
{
 int row;
 int col;

 int width;
    int height;

    int pastanimation;
    int curranimation;

    int animationCounter;
    int animationCounterR;

    int attackprep;
    int attacking;

    int currFrame;

    int anicount;

    int atkAnimation;
    int timer;
    int jumptimer;

    int pHP;

    int rowChange;

    int playing;
} PLAYER;

typedef struct
{
 int row;
 int col;
 int width;
    int height;
    int currFrame;
    int active;
    int animation;
    int atk;
    int eHP;
    int attacking;
    int alternate;
    int etimer;
} ENEMY;

typedef struct
{
    int row;
    int col;
    int width;
    int height;
    int currFrame;
    int active;
    int animation;
    int atk;
    int eHP;
    int attacking;
    int alternate;
    int etimer;
    int animationCounter;
} ENEMYHORSE;

typedef struct
{
    int row;
    int col;
    int width;
    int height;
    int currFrame;
    int active;
    int animation;
    int atk;
    int eHP;
    int attacking;
    int alternate;
    int etimer;
    int animationCounter;
    int casting;
} ENEMYMAGE;

typedef struct
{
    int row;
    int col;
    int width;
    int height;
    int active;
    int curranimation;
} BULLET;
# 2 "update.c" 2
# 1 "myLib.h" 1



typedef unsigned short u16;
# 40 "myLib.h"
extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;



void loadPalette(const unsigned short* palette);
void initialize();

void waitForVblank();
void flipPage();

void drawBackgroundImage(volatile const unsigned short* image);

void drawImage4(volatile const unsigned short* image, int row, int col, int height, int width);

void drawRect4(int row, int col, int height, int width, unsigned char colorIndex);

void setPixel4(int row, int col, unsigned char colorIndex);
# 80 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 90 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control);






typedef volatile struct
{
        volatile const void *src;
        volatile void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 222 "myLib.h"
typedef struct { u16 tileimg[8192]; } charblock;
typedef struct { u16 tilemap[1024]; } screenblock;
# 279 "myLib.h"
typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
}OBJ_ATTR;

typedef struct {
    int row;
    int col;
} Sprite;
# 3 "update.c" 2
# 1 "update.h" 1
void updatePlayer(PLAYER* p, int b, int c);
int playerCollision(ENEMY* b, PLAYER* p);
void resetLocation(PLAYER* p);
int bulletCollision(ENEMYHORSE* p, BULLET* b);
int playerCollision2(ENEMYHORSE* b, PLAYER* p);
void updateKnight(ENEMYHORSE *b, int timeenemy);
void updatePlayer2(PLAYER* p, BULLET* a);
void updatePlayer3(PLAYER* p);
void updateMage(ENEMYMAGE *m, int cooldown);
# 4 "update.c" 2


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


int playerCollision(ENEMY* b, PLAYER* p)
{
 if(b->col <= p->col + p->width && b->col + b->width >= p->col && b->row + b->height >= p->row && b->row <= p ->row + p-> height) {
  if(p -> attacking == 1) {

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

  b -> animationCounter = 1;
  b-> col--;
 } else {

  b -> animationCounter = 0;
 }
}

void updatePlayer2(PLAYER* p, BULLET* a) {
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  a -> active = 1;
  p -> atkAnimation = 1;
  p -> timer = 15;
  p -> curranimation = LYNPREP;
 }
}

void updatePlayer3(PLAYER* p) {
 if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
  p -> atkAnimation = 1;
  p -> timer = 15;
  p -> row = p -> row - 30;
  p -> attacking = 1;
  p -> curranimation = HECTORATTACK;
 }
 if((~(*(volatile unsigned int *)0x04000130) & ((1<<4)))) {
  if(p -> col < 200) {
    p ->curranimation = HECTORSHIFTHORIZ;
    p -> col = p -> col + 10;
    p -> rowChange = 3;
    p -> jumptimer = 8;
  }
 }
 if((~(*(volatile unsigned int *)0x04000130) & ((1<<5)))) {
  if(p -> col > 20) {
    p ->curranimation = HECTORSHIFTHORIZ;
    p -> col = p -> col - 10;
    p -> rowChange = 3;
    p -> jumptimer = 8;
  }
 }
 if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
   if(p -> row > 50) {
    p ->curranimation = HECTORSHIFTVERT;
    p -> row = p -> row - 10;
    p -> rowChange = 1;
    p -> jumptimer = 8;
   }
  }
 if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
   if (p -> row < 130) {
    p ->curranimation = HECTORSHIFTVERT;
    p -> row = p -> row + 10;
    p -> rowChange = 1;
    p -> jumptimer = 8;
   }
 }
}



void updatePlayer(PLAYER* p, int b, int c) {
  if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
   p -> atkAnimation = 1;
   p -> timer = 15;
   p -> curranimation = ERIGHTATKPREP;
  }
  if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
   if(p -> row > 50) {
    p ->curranimation = ERIGHTRUNA;
    p -> row = p -> row - 10;
    p -> rowChange = 1;
    p -> jumptimer = 8;
   }
  }
  if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
   if (p -> row < 130) {
    p ->curranimation = ERIGHTRUNA;
    p -> row = p -> row + 10;
    p -> rowChange = 1;
    p -> jumptimer = 8;
   }
  }
  if((~(*(volatile unsigned int *)0x04000130) & ((1<<4)))) {
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
  if((~(*(volatile unsigned int *)0x04000130) & ((1<<5)))) {
   if (p -> col - 20 > 0) {
    p ->curranimation = ERIGHTRUNA;
    p -> col = p -> col - 20;
    p -> rowChange = 1;
    p -> jumptimer = 8;
   }
  }
}
