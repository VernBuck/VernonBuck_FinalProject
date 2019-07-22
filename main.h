#define ENEMYNUM 4

enum {ERIGHTWALKA, ERIGHTWALKB, ERIGHTATKPREP, ERIGHTATK, ERIGHTRUNA,ERIGHTRUNB, ELEFTWALKA, ELEFTWALKB, ELEFTATKPREP, ELEFTATK, ELEFTRUNA, ELEFTRUNB, ELEFTUPATK, ERIGHTUPATK};
enum {ENEMYMOVE, ENEMYATKPREP, ENEMYATK, ENEMYBLOCK};
enum {HORSEA, HORSEB, HORSEC};
enum {MAGESTAND, MAGECAST, MAGEATTACK};
enum {LYNSTAND, LYNPREP, LYNPULL, LYNSHOT};
enum {HECTORSTAND, HECTORSHIFTVERT, HECTORSHIFTHORIZ, HECTORATTACK, HECTORPOSTATTACK};
enum{ELIWOOD, LYN, HECTOR};

// random


//Prototypes
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

//Structs
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
