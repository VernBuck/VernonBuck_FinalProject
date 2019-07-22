# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 68 "main.c"
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
# 69 "main.c" 2
# 1 "currentspritesheet.h" 1
# 21 "currentspritesheet.h"
extern const unsigned short currentspritesheetTiles[16384];


extern const unsigned short currentspritesheetPal[256];
# 70 "main.c" 2
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
# 71 "main.c" 2
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
# 72 "main.c" 2
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 1 3
# 10 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 11 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 12 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3



# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 211 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 16 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3

# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 1 3
# 13 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 14 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 1 3






# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 1 3
# 26 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 2 3
# 13 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef int __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 352 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 18 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/stdlib.h" 1 3
# 19 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 27 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 73 "main.c" 2
# 1 "gameover.h" 1
# 22 "gameover.h"
extern const unsigned short gameoverTiles[5280];


extern const unsigned short gameoverMap[1024];


extern const unsigned short gameoverPal[256];
# 74 "main.c" 2
# 1 "pausescreen.h" 1
# 22 "pausescreen.h"
extern const unsigned short pausescreenTiles[1456];


extern const unsigned short pausescreenMap[1024];


extern const unsigned short pausescreenPal[256];
# 75 "main.c" 2
# 1 "titlescreen.h" 1
# 22 "titlescreen.h"
extern const unsigned short titlescreenTiles[6976];


extern const unsigned short titlescreenMap[1024];


extern const unsigned short titlescreenPal[256];
# 76 "main.c" 2
# 1 "winscreen.h" 1
# 22 "winscreen.h"
extern const unsigned short winscreenTiles[9024];


extern const unsigned short winscreenMap[1024];


extern const unsigned short winscreenPal[256];
# 77 "main.c" 2
# 1 "splash.h" 1
# 22 "splash.h"
extern const unsigned short splashTiles[9616];


extern const unsigned short splashMap[1024];


extern const unsigned short splashPal[256];
# 78 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3456];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 79 "main.c" 2
# 1 "sword.h" 1
# 20 "sword.h"
extern const unsigned char sword[8013];
# 80 "main.c" 2
# 1 "theme.h" 1
# 20 "theme.h"
extern const unsigned char theme[972288];
# 81 "main.c" 2
# 1 "innerbackground.h" 1
# 22 "innerbackground.h"
extern const unsigned short innerbackgroundTiles[10912];


extern const unsigned short innerbackgroundMap[2048];


extern const unsigned short innerbackgroundPal[256];
# 82 "main.c" 2
# 1 "outterbackground.h" 1
# 22 "outterbackground.h"
extern const unsigned short outterbackgroundTiles[10240];


extern const unsigned short outterbackgroundMap[1024];


extern const unsigned short outterbackgroundPal[256];
# 83 "main.c" 2
# 1 "page1.h" 1
# 21 "page1.h"
extern const unsigned short page1Bitmap[19200];


extern const unsigned short page1Pal[256];
# 84 "main.c" 2
# 1 "page2.h" 1
# 21 "page2.h"
extern const unsigned short page2Bitmap[19200];


extern const unsigned short page2Pal[256];
# 85 "main.c" 2
# 1 "page3.h" 1
# 21 "page3.h"
extern const unsigned short page3Bitmap[19200];


extern const unsigned short page3Pal[256];
# 86 "main.c" 2
# 1 "page4.h" 1
# 21 "page4.h"
extern const unsigned short page4Bitmap[19200];


extern const unsigned short page4Pal[256];
# 87 "main.c" 2
# 1 "page5.h" 1
# 21 "page5.h"
extern const unsigned short page5Bitmap[19200];


extern const unsigned short page5Pal[256];
# 88 "main.c" 2
# 1 "page6.h" 1
# 21 "page6.h"
extern const unsigned short page6Bitmap[19200];


extern const unsigned short page6Pal[256];
# 89 "main.c" 2
# 1 "page7.h" 1
# 21 "page7.h"
extern const unsigned short page7Bitmap[19200];


extern const unsigned short page7Pal[256];
# 90 "main.c" 2
# 1 "page8.h" 1
# 21 "page8.h"
extern const unsigned short page8Bitmap[19200];


extern const unsigned short page8Pal[256];
# 91 "main.c" 2
# 1 "page9.h" 1
# 21 "page9.h"
extern const unsigned short page9Bitmap[19200];


extern const unsigned short page9Pal[256];
# 92 "main.c" 2
# 1 "page10.h" 1
# 21 "page10.h"
extern const unsigned short page10Bitmap[19200];


extern const unsigned short page10Pal[256];
# 93 "main.c" 2
# 1 "page11.h" 1
# 21 "page11.h"
extern const unsigned short page11Bitmap[19200];


extern const unsigned short page11Pal[256];
# 94 "main.c" 2
# 1 "page12.h" 1
# 21 "page12.h"
extern const unsigned short page12Bitmap[19200];


extern const unsigned short page12Pal[256];
# 95 "main.c" 2
# 1 "page13.h" 1
# 21 "page13.h"
extern const unsigned short page13Bitmap[19200];


extern const unsigned short page13Pal[256];
# 96 "main.c" 2
# 1 "page14.h" 1
# 21 "page14.h"
extern const unsigned short page14Bitmap[19200];


extern const unsigned short page14Pal[256];
# 97 "main.c" 2
# 1 "page15.h" 1
# 21 "page15.h"
extern const unsigned short page15Bitmap[19200];


extern const unsigned short page15Pal[256];
# 98 "main.c" 2
# 1 "page16.h" 1
# 21 "page16.h"
extern const unsigned short page16Bitmap[19200];


extern const unsigned short page16Pal[256];
# 99 "main.c" 2
# 1 "page17.h" 1
# 21 "page17.h"
extern const unsigned short page17Bitmap[19200];


extern const unsigned short page17Pal[256];
# 100 "main.c" 2
# 1 "page18.h" 1
# 21 "page18.h"
extern const unsigned short page18Bitmap[19200];


extern const unsigned short page18Pal[256];
# 101 "main.c" 2
# 1 "page19.h" 1
# 21 "page19.h"
extern const unsigned short page19Bitmap[19200];


extern const unsigned short page19Pal[256];
# 102 "main.c" 2
# 1 "page20.h" 1
# 21 "page20.h"
extern const unsigned short page20Bitmap[19200];


extern const unsigned short page20Pal[256];
# 103 "main.c" 2
# 1 "page21.h" 1
# 21 "page21.h"
extern const unsigned short page21Bitmap[19200];


extern const unsigned short page21Pal[256];
# 104 "main.c" 2
# 1 "page22.h" 1
# 21 "page22.h"
extern const unsigned short page22Bitmap[19200];


extern const unsigned short page22Pal[256];
# 105 "main.c" 2
# 1 "page23.h" 1
# 21 "page23.h"
extern const unsigned short page23Bitmap[19200];


extern const unsigned short page23Pal[256];
# 106 "main.c" 2
# 1 "page24.h" 1
# 21 "page24.h"
extern const unsigned short page24Bitmap[19200];


extern const unsigned short page24Pal[256];
# 107 "main.c" 2
# 1 "page25.h" 1
# 21 "page25.h"
extern const unsigned short page25Bitmap[19200];


extern const unsigned short page25Pal[256];
# 108 "main.c" 2
# 1 "page26.h" 1
# 21 "page26.h"
extern const unsigned short page26Bitmap[19200];


extern const unsigned short page26Pal[256];
# 109 "main.c" 2
# 1 "page27.h" 1
# 21 "page27.h"
extern const unsigned short page27Bitmap[19200];


extern const unsigned short page27Pal[256];
# 110 "main.c" 2
# 1 "page28.h" 1
# 21 "page28.h"
extern const unsigned short page28Bitmap[19200];


extern const unsigned short page28Pal[256];
# 111 "main.c" 2
# 1 "page29.h" 1
# 21 "page29.h"
extern const unsigned short page29Bitmap[19200];


extern const unsigned short page29Pal[256];
# 112 "main.c" 2
# 1 "page30.h" 1
# 21 "page30.h"
extern const unsigned short page30Bitmap[19200];


extern const unsigned short page30Pal[256];
# 113 "main.c" 2
# 1 "page31.h" 1
# 21 "page31.h"
extern const unsigned short page31Bitmap[19200];


extern const unsigned short page31Pal[256];
# 114 "main.c" 2
# 1 "page32.h" 1
# 21 "page32.h"
extern const unsigned short page32Bitmap[19200];


extern const unsigned short page32Pal[256];
# 115 "main.c" 2
# 1 "page33.h" 1
# 21 "page33.h"
extern const unsigned short page33Bitmap[19200];


extern const unsigned short page33Pal[256];
# 116 "main.c" 2
# 1 "page34.h" 1
# 21 "page34.h"
extern const unsigned short page34Bitmap[19200];


extern const unsigned short page34Pal[256];
# 117 "main.c" 2
# 1 "page35.h" 1
# 21 "page35.h"
extern const unsigned short page35Bitmap[19200];


extern const unsigned short page35Pal[256];
# 118 "main.c" 2
# 1 "page36.h" 1
# 21 "page36.h"
extern const unsigned short page36Bitmap[19200];


extern const unsigned short page36Pal[256];
# 119 "main.c" 2
# 1 "page37.h" 1
# 21 "page37.h"
extern const unsigned short page37Bitmap[19200];


extern const unsigned short page37Pal[256];
# 120 "main.c" 2
# 1 "page38.h" 1
# 21 "page38.h"
extern const unsigned short page38Bitmap[19200];


extern const unsigned short page38Pal[256];
# 121 "main.c" 2
# 1 "page39.h" 1
# 21 "page39.h"
extern const unsigned short page39Bitmap[19200];


extern const unsigned short page39Pal[256];
# 122 "main.c" 2
# 1 "page40.h" 1
# 21 "page40.h"
extern const unsigned short page40Bitmap[19200];


extern const unsigned short page40Pal[256];
# 123 "main.c" 2
# 1 "page41.h" 1
# 21 "page41.h"
extern const unsigned short page41Bitmap[19200];


extern const unsigned short page41Pal[256];
# 124 "main.c" 2
# 1 "page42.h" 1
# 21 "page42.h"
extern const unsigned short page42Bitmap[19200];


extern const unsigned short page42Pal[256];
# 125 "main.c" 2
# 1 "page43.h" 1
# 21 "page43.h"
extern const unsigned short page43Bitmap[19200];


extern const unsigned short page43Pal[256];
# 126 "main.c" 2
# 1 "page44.h" 1
# 21 "page44.h"
extern const unsigned short page44Bitmap[19200];


extern const unsigned short page44Pal[256];
# 127 "main.c" 2
# 1 "page45.h" 1
# 21 "page45.h"
extern const unsigned short page45Bitmap[19200];


extern const unsigned short page45Pal[256];
# 128 "main.c" 2
# 1 "page46.h" 1
# 21 "page46.h"
extern const unsigned short page46Bitmap[19200];


extern const unsigned short page46Pal[256];
# 129 "main.c" 2
# 1 "page47.h" 1
# 21 "page47.h"
extern const unsigned short page47Bitmap[19200];


extern const unsigned short page47Pal[256];
# 130 "main.c" 2
# 1 "page48.h" 1
# 21 "page48.h"
extern const unsigned short page48Bitmap[19200];


extern const unsigned short page48Pal[256];
# 131 "main.c" 2
# 1 "page49.h" 1
# 21 "page49.h"
extern const unsigned short page49Bitmap[19200];


extern const unsigned short page49Pal[256];
# 132 "main.c" 2
# 1 "page50.h" 1
# 21 "page50.h"
extern const unsigned short page50Bitmap[19200];


extern const unsigned short page50Pal[256];
# 133 "main.c" 2
# 1 "page51.h" 1
# 21 "page51.h"
extern const unsigned short page51Bitmap[19200];


extern const unsigned short page51Pal[256];
# 134 "main.c" 2
# 1 "page52.h" 1
# 21 "page52.h"
extern const unsigned short page52Bitmap[19200];


extern const unsigned short page52Pal[256];
# 135 "main.c" 2
# 1 "arena.h" 1
# 22 "arena.h"
extern const unsigned short arenaTiles[7024];


extern const unsigned short arenaMap[1024];


extern const unsigned short arenaPal[256];
# 136 "main.c" 2
# 1 "level2transition.h" 1
# 22 "level2transition.h"
extern const unsigned short level2transitionTiles[2960];


extern const unsigned short level2transitionMap[1024];


extern const unsigned short level2transitionPal[256];
# 137 "main.c" 2
# 1 "spritesheet2.h" 1
# 21 "spritesheet2.h"
extern const unsigned short spritesheet2Tiles[16384];


extern const unsigned short spritesheet2Pal[256];
# 138 "main.c" 2

unsigned int buttons;
unsigned int oldButtons;




int atkTimer = 0;


int cuttimer;
int cuttimer2;
int prevcuttimer = -1;
int enemyanimtimer = 0;
int eliwoodHorsetimer = 0;
int eliwoodHorsetimerB = 0;


SOUND soundA;
SOUND soundB;

int hOff = 0;
int vOff = 0;

int enemy1attack;

int knockback = 30;

OBJ_ATTR shadowOAM[128];







enum {PLAYERSPRITE, ENEMYSPRITE, ENEMYSPRITEHORSE, CHEAT = ENEMYSPRITEHORSE + 4, BULLE = CHEAT + 1, MAGE = BULLE + 1, ORB = MAGE + 1};




BULLET arrow;
BULLET orb;
PLAYER eliwood;
ENEMY soldier;
ENEMYHORSE arrKnight[4];
ENEMYMAGE mage;




enum {INSTRUCTION, STARTSCREEN, CUTSCENE, GAMESCREEN, LOSESCREEN, WINSCREEN, PAUSESCREEN, TRANSITIONONE,LEVELTWO,LEVELTWOB};
int state;
int savestate;


int axis[] = {50, 70, 80, 100, 120, 90, 110, 130};

int lv1total = 4;
int main()
{
 setupSounds();
 setupInterrupts();
 goToInstructions();

 playSoundA(theme,972288,11025, 1);

 while(1)
 {
  oldButtons = buttons;
        buttons = *(volatile unsigned int *)0x04000130;
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


void updatecut()
{
 cuttimer2++;
 if(cuttimer2 % 8 == 0)
 {
  cuttimer++;

 }
}


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


   break;
  case 1:


   palette = page2Pal;
   page = page2Bitmap;
   break;
  case 2:


   palette = page3Pal;
   page = page3Bitmap;
   break;
  case 3:
   palette = page4Pal;
   page = page4Bitmap;


   break;
  case 4:
   palette = page5Pal;
   page = page5Bitmap;


   break;
  case 5:
   palette = page6Pal;
   page = page6Bitmap;


   break;
  case 6:
   palette = page7Pal;
   page = page7Bitmap;


   break;
  case 7:
   palette = page8Pal;
   page = page8Bitmap;


   break;
  case 8:
   palette = page9Pal;
   page = page9Bitmap;


   break;
  case 9:
   palette = page10Pal;
   page = page10Bitmap;


   break;
  case 10:
   palette = page11Pal;
   page = page11Bitmap;


   break;
  case 11:
   palette = page12Pal;
   page = page12Bitmap;


   break;
  case 12:
   palette = page13Pal;
   page = page13Bitmap;


   break;
  case 13:
   palette = page14Pal;
   page = page14Bitmap;


   break;
  case 14:
   palette = page15Pal;
   page = page15Bitmap;


   break;
  case 15:
   palette = page16Pal;
   page = page16Bitmap;


   break;
  case 16:
   palette = page17Pal;
   page = page17Bitmap;


   break;
  case 17:
   palette = page18Pal;
   page = page18Bitmap;


   break;
  case 18:
   palette = page19Pal;
   page = page19Bitmap;


   break;
  case 19:
   palette = page20Pal;
   page = page20Bitmap;


   break;
  case 20:
   palette = page21Pal;
   page = page21Bitmap;


   break;
  case 21:
   palette = page22Pal;
   page = page22Bitmap;


   break;
  case 22:
   palette = page23Pal;
   page = page23Bitmap;


   break;
  case 23:
   palette = page24Pal;
   page = page24Bitmap;


   break;
  case 24:
   palette = page25Pal;
   page = page25Bitmap;


   break;
  case 25:
   palette = page26Pal;
   page = page26Bitmap;


   break;
  case 26:
   palette = page27Pal;
   page = page27Bitmap;


   break;
  case 27:
   palette = page28Pal;
   page = page28Bitmap;


   break;
  case 28:
   palette = page29Pal;
   page = page29Bitmap;


   break;
  case 29:
   palette = page30Pal;
   page = page30Bitmap;


   break;
  case 30:
   palette = page31Pal;
   page = page31Bitmap;


   break;
  case 31:
   palette = page32Pal;
   page = page32Bitmap;


   break;
  case 32:
   palette = page33Pal;
   page = page33Bitmap;


   break;
  case 33:
   palette = page34Pal;
   page = page34Bitmap;


   break;
  case 34:
   palette = page35Pal;
   page = page35Bitmap;


   break;
  case 35:
   palette = page36Pal;
   page = page36Bitmap;


   break;
  case 36:
   palette = page37Pal;
   page = page37Bitmap;


   break;
  case 37:
   palette = page38Pal;
   page = page38Bitmap;


   break;
  case 38:
   palette = page39Pal;
   page = page39Bitmap;


   break;
  case 39:
   palette = page40Pal;
   page = page40Bitmap;


   break;
  case 40:
   palette = page41Pal;
   page = page41Bitmap;


   break;
  case 41:
   palette = page42Pal;
   page = page42Bitmap;


   break;
  case 42:
   palette = page43Pal;
   page = page43Bitmap;


   break;
  case 43:
   palette = page44Pal;
   page = page44Bitmap;


   break;
  case 44:
   palette = page45Pal;
   page = page45Bitmap;


   break;
  case 45:
   palette = page46Pal;
   page = page46Bitmap;


   break;
  case 46:
   palette = page47Pal;
   page = page47Bitmap;


   break;
  case 47:
   palette = page48Pal;
   page = page48Bitmap;


   break;
  case 48:
   palette = page49Pal;
   page = page49Bitmap;


   break;
  case 49:
   palette = page50Pal;
   page = page50Bitmap;


   break;
  case 50:
   palette = page51Pal;
   page = page51Bitmap;


   break;
  case 51:
   palette = page52Pal;
   page = page52Bitmap;


   break;
 }
 prevcuttimer = cuttimer;
 drawBackgroundImage(page);
 waitForVblank();
 flipPage();
 loadPalette(palette);
 }

}


void setupSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     0 |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}
void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(1, sound, 0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;

        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);

        soundA.data = sound;
        soundA.length = length;
  soundA.frequency = frequency;
  soundA.isPlaying = 1;
  soundA.loops = loops;
  soundA.duration = (((59.727)*length)/frequency);
  soundA.vbCount = 0;

}

void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(2, sound, 0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;

        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);

        soundB.data = sound;
        soundB.length = length;
  soundB.frequency = frequency;
  soundB.isPlaying = 1;
  soundB.loops = loops;
  soundB.duration = (((59.727)*length)/frequency);
  soundB.vbCount = 0;

}

void pauseSound()
{

    *(volatile unsigned short*)0x4000102 = 0;
    *(volatile unsigned short*)0x4000106 = 0;
 soundA.isPlaying = 0;
 soundB.isPlaying = 0;

}

void unpauseSound()
{

 *(volatile unsigned short*)0x4000102 = (1<<7);
 *(volatile unsigned short*)0x4000106 = (1<<7);
 soundA.isPlaying = 1;
 soundB.isPlaying = 1;

}

void stopSound()
{

    dma[1].cnt = 0;
    dma[2].cnt = 0;
    *(volatile unsigned short*)0x4000102 = 0;
 *(volatile unsigned short*)0x4000106 = 0;
 soundA.isPlaying = 0;
 soundB.isPlaying = 0;
}

void setupInterrupts()
{
 *(unsigned short*)0x4000208 = 0;



 *(unsigned int*)0x3007FFC = (unsigned int) interruptHandler;
 *(unsigned short*)0x4000200 |= 1 << 0;
 *(unsigned short*)0x4000004 |= 1 << 3;
 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler()
{
 *(unsigned short*)0x4000208 = 0;
 if(*(volatile unsigned short*)0x4000202 & 1 << 0)
 {


  if(soundA.isPlaying) {
   soundA.vbCount++;
   if(soundA.vbCount >= soundA.duration) {
    if(soundA.loops) {
     playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
    } else {
     dma[1].cnt = 0;
     soundA.isPlaying = 0;
     *(volatile unsigned short*)0x4000102 = 0;
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
     *(volatile unsigned short*)0x4000106 = 0;
    }
   }
  }
  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }

 *(unsigned short*)0x4000208 = 1;
}





void goToInstructions() {
 *(unsigned short *)0x4000000 = 0|(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 *(volatile unsigned short *)0x04000010 = 0;
 loadPalette(instructionsPal);
 DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 6912/2);
 DMANow(3, instructionsMap, &((screenblock *)0x6000000)[31], 2048/2);
    state = INSTRUCTION;
}

void updateInstructions() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  goToStart();
 }
}

void goToStart() {
 *(unsigned short *)0x4000000 = 0|(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 *(volatile unsigned short *)0x04000010 = 0;
 loadPalette(splashPal);
 DMANow(3, splashTiles, &((charblock *)0x6000000)[0], 19232/2);
 DMANow(3, splashMap, &((screenblock *)0x6000000)[31], 2048 /2);
    state = STARTSCREEN;
}

void updateStart() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  goToInstructions();
 }
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

  goToCutscene();

 }
}

void goToCutscene() {
 *(unsigned short *)0x4000000 = 4 | (1<<10) | (1<<4);
 state = CUTSCENE;


}


void updateCutscene() {
 updatecut();

 cutscene();
 if(cuttimer == 52) {
  cuttimer = 0;
  initialize();
  goToGame();
 }
}

void goToGame() {
 *(unsigned short *)0x4000000 = 0|(1<<8)| (1<<9)|(1 << 12);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 30 << 8 | 1<<14;
 *(volatile unsigned short*)0x400000A = 1 << 2 | 29 << 8 | 0<<14;

 DMANow(3, currentspritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);
 DMANow(3, currentspritesheetPal, ((unsigned short*)(0x5000200)), 512/2);


 loadPalette(innerbackgroundPal);
 DMANow(3, innerbackgroundTiles, &((charblock *)0x6000000)[0], 21824/2);
 DMANow(3, innerbackgroundMap, &((screenblock *)0x6000000)[30], 4096 /2);

 DMANow(3, outterbackgroundTiles, &((charblock *)0x6000000)[1], 20480/2);
 DMANow(3, outterbackgroundMap, &((screenblock *)0x6000000)[29], 2048 /2);

    hideSprites();
 state = GAMESCREEN;
}

void updateGame() {

 eliwoodHorsetimer++;
 eliwoodHorsetimerB++;

 if((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9)))) && eliwood.curranimation != ERIGHTATK) {
  if(eliwood.playing == ELIWOOD) {
   eliwood.playing = LYN;
   eliwood.curranimation = LYNSTAND;
  } else if (eliwood.playing == LYN) {
   shadowOAM[BULLE].attr0 = arrow.row | (2 << 8);
   arrow.active = 0;
   eliwood.playing = ELIWOOD;
   eliwood.curranimation = ERIGHTWALKA;
  }
 }

 if((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))) && eliwood.curranimation != ERIGHTATK) {
  if(eliwood.playing == HECTOR) {
   eliwood.playing = ELIWOOD;
   eliwood.curranimation = ERIGHTWALKA;
  } else if (eliwood.playing == ELIWOOD) {
   eliwood.playing = HECTOR;
   eliwood.curranimation = HECTORSTAND;
  }
 }

 if((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
  knockback = 0;
 }
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  savestate = GAMESCREEN;
  goToPause();
 }
 if(eliwood.pHP == 0) {
  goToLose();
 }
 if(lv1total == 0) {




  goToTransitionOne();
 }
 shadowset();
}

void goToTransitionOne() {
 initialize2();
 *(unsigned short *)0x4000000 = 0|(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 *(volatile unsigned short *)0x04000010 = 0;
 loadPalette(level2transitionPal);
 DMANow(3, level2transitionTiles, &((charblock *)0x6000000)[0], 5920/2);
 DMANow(3, level2transitionMap, &((screenblock *)0x6000000)[31], 2048 /2);
    state = TRANSITIONONE;
}

void updateTransitionone() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

  goToLV2();

 }
}


void goToLV2() {
 *(unsigned short *)0x4000000 = 0|(1<<8)| (1<<9)|(1 << 12);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 30 << 8 | 1<<14;
 *(volatile unsigned short*)0x400000A = 1 << 2 | 29 << 8 | 0<<14;

 DMANow(3, currentspritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);
 DMANow(3, currentspritesheetPal, ((unsigned short*)(0x5000200)), 512/2);


 loadPalette(arenaPal);
 DMANow(3, arenaTiles, &((charblock *)0x6000000)[0], 14048/2);
 DMANow(3, arenaMap, &((screenblock *)0x6000000)[30], 2048 /2);

    hideSprites();
 state = LEVELTWO;
}

void updateLevel2() {

 eliwoodHorsetimer++;
 eliwoodHorsetimerB++;

 if((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9)))) && eliwood.curranimation != ERIGHTATK) {
  if(eliwood.playing == ELIWOOD) {
   eliwood.playing = LYN;
   eliwood.curranimation = LYNSTAND;
  } else if (eliwood.playing == LYN) {
   shadowOAM[BULLE].attr0 = arrow.row | (2 << 8);
   arrow.active = 0;
   eliwood.playing = ELIWOOD;
   eliwood.curranimation = ERIGHTWALKA;
  }
 }

 if((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))) && eliwood.curranimation != ERIGHTATK) {
  if(eliwood.playing == HECTOR) {
   eliwood.playing = ELIWOOD;
   eliwood.curranimation = ERIGHTWALKA;
  } else if (eliwood.playing == ELIWOOD) {
   eliwood.playing = HECTOR;
   eliwood.curranimation = HECTORSTAND;
  }
 }

 if((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
  knockback = 0;
 }
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  savestate = LEVELTWO;
  goToPause();
 }
 if(eliwood.pHP == 0) {
  goToLose();
 }
 if(lv1total == 0) {

  goToWin();
 }
 shadowset();
}
# 1009 "main.c"
void goToPause() {
 vOff = 0;
 *(unsigned short *)0x4000000 = 0 |(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 loadPalette(pausescreenPal);
 DMANow(3, pausescreenTiles, &((charblock *)0x6000000)[0], 2912/2);
 DMANow(3, pausescreenMap, &((screenblock *)0x6000000)[31], 2048 /2);
 state = PAUSESCREEN;
}

void updatePause() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  if (savestate == GAMESCREEN) {
   goToGame();
  }
  if (savestate == LEVELTWO) {
   goToLV2();
  }




 }
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  hideSprites();
  initialize();

  goToStart();
 }
}

void goToLose() {
 vOff = 0;
 *(unsigned short *)0x4000000 = 0 |(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 loadPalette(gameoverPal);
 DMANow(3, gameoverTiles, &((charblock *)0x6000000)[0], 10560/2);
 DMANow(3, gameoverMap, &((screenblock *)0x6000000)[31], 2048 /2);
 state = LOSESCREEN;
}

void updateLose() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  hideSprites();
  initialize();
  goToStart();
 }
}

void goToWin() {
 vOff = 0;
 *(unsigned short *)0x4000000 = 0 |(1<<8);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 31 << 8 | 1<<14;
 *(volatile unsigned short *)0x04000012 = 0;
 loadPalette(winscreenPal);
 DMANow(3, winscreenTiles, &((charblock *)0x6000000)[0], 18048/2);
 DMANow(3, winscreenMap, &((screenblock *)0x6000000)[31], 2048 /2);
 state = LOSESCREEN;
}

void updateWin() {
 waitForVblank();
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
  hideSprites();
  initialize();
  goToStart();
 }
}



void hideSprites()
{
    for(int i = 0; i < 128; i++) {
     shadowOAM[i].attr0 = (2 << 8);
    }
}


void initialize()
{
 lv1total = 4;
 knockback = 30;
 enemy1attack = 10;
# 1114 "main.c"
 resetLocation(&eliwood);


 arrow.curranimation = 0;
 arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;


 soldier.height = 32;
 soldier.width = 32;
 soldier.row = 130;
 soldier.col = 100;
 soldier.active = 1;
 soldier.eHP = 3;




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


void initialize2()
{





 lv1total = 4;
 knockback = 30;
 enemy1attack = 10;
 resetLocation(&eliwood);
# 1184 "main.c"
 arrow.curranimation = 0;
 arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;
# 1202 "main.c"
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


 arrow.curranimation = 0;
 arrow.width = 16;
    arrow.height = 16;
    arrow.row = eliwood.row;
    arrow.col = eliwood.col;
    arrow.active = 0;
# 1252 "main.c"
 hOff = 0;
 vOff = 0;

}


void update() {
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
# 1298 "main.c"
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

        enemyanimtimer++;

        atkTimer++;


        for(int j = 0; j < 4; j++) {

         if (arrKnight[j].col < 20) {
    arrKnight[j].row = axis[rand()%7];
   }
   updateKnight(&arrKnight[j], enemyanimtimer);


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

           }
          }
         }
  }



        if(eliwood.playing == ELIWOOD) {
          if (eliwood.atkAnimation == 0) {
           if (eliwood.rowChange == 0) {
            update();
           } else {

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
          playSoundB(sword,8013,11025, 0);
          shadowOAM[PLAYERSPRITE].attr0 = (1 << 14) | eliwood.row;
         } else {
          shadowOAM[PLAYERSPRITE].attr0 = eliwood.row;
         }

   if(eliwood.curranimation == ERIGHTWALKA) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(0);
   } else if(eliwood.curranimation == ERIGHTWALKB) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(5);
   } else if(eliwood.curranimation == ERIGHTATKPREP) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(10);
   } else if(eliwood.curranimation == ERIGHTATK) {
    shadowOAM[PLAYERSPRITE].attr1 = (3 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(15);
   } else if(eliwood.curranimation == ELEFTWALKA) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (5)*32+(0);
   } else if(eliwood.curranimation == ELEFTWALKB) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (5)*32+(5);
   } else if(eliwood.curranimation == ELEFTATKPREP) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (5)*32+(10);
   } else if(eliwood.curranimation == ELEFTATK) {
    shadowOAM[PLAYERSPRITE].attr1 = (3 << 14) | (1 << 12)| eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(15);
   } else if(eliwood.curranimation == ERIGHTRUNA) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(24);
   } else if(eliwood.curranimation == ERIGHTRUNA) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (0)*32+(28);
   } else if(eliwood.curranimation == ERIGHTUPATK) {
    shadowOAM[PLAYERSPRITE].attr1 = (3 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (80)*32+(40);
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

             arrow.active = 1;
            }
           }
          }



      if(eliwood.curranimation == LYNSTAND) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (27)*32+(15);
   } else if(eliwood.curranimation == LYNPREP) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (27)*32+(20);
   } else if(eliwood.curranimation == LYNPULL) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (27)*32+(25);
   } else if(eliwood.curranimation == LYNSHOT) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (22)*32+(20);
   }


   if(arrow.curranimation = 1 && (arrow.col - 15) >= eliwood.col && arrow.active == 1) {
    shadowOAM[BULLE].attr0 = arrow.row | (1 << 14);
    shadowOAM[BULLE].attr1 = (1 << 14) | arrow.col;
    shadowOAM[BULLE].attr2 = (25)*32+(25);
   } else {
    shadowOAM[BULLE].attr0 = arrow.row | (2 << 8);
    shadowOAM[BULLE].attr1 = (1 << 14) | arrow.col;
    shadowOAM[BULLE].attr2 = (25)*32+(25);
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
          shadowOAM[PLAYERSPRITE].attr0 = (2 << 14) | eliwood.row;
         } else {
          shadowOAM[PLAYERSPRITE].attr0 = eliwood.row;
         }

         if(eliwood.curranimation == HECTORSTAND) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (11)*32+(16);
   } else if(eliwood.curranimation == HECTORSHIFTVERT) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (11)*32+(21);
   } else if(eliwood.curranimation == HECTORSHIFTHORIZ) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (11)*32+(26);
   } else if(eliwood.curranimation == HECTORATTACK) {
    shadowOAM[PLAYERSPRITE].attr1 = (3 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (16)*32+(26);
   } else if(eliwood.curranimation == HECTORPOSTATTACK) {
    shadowOAM[PLAYERSPRITE].attr1 = (2 << 14) | eliwood.col;
    shadowOAM[PLAYERSPRITE].attr2 = (16)*32+(21);
   }
        }


  if(soldier.eHP > 0) {
   if (soldier.animation == ENEMYMOVE) {
    shadowOAM[ENEMYSPRITE].attr0 = soldier.row;
    shadowOAM[ENEMYSPRITE].attr1 = (1 << 14) | soldier.col;
    shadowOAM[ENEMYSPRITE].attr2 = (24)*32+(0);
   } else if(soldier.animation == ENEMYATKPREP) {
    shadowOAM[ENEMYSPRITE].attr0 = soldier.row;
    shadowOAM[ENEMYSPRITE].attr1 = (1 << 14) | soldier.col;
    shadowOAM[ENEMYSPRITE].attr2 = (24)*32+(4);
   } else if(soldier.animation == ENEMYATK) {
    shadowOAM[ENEMYSPRITE].attr0 = soldier.row | (1 << 14);
    shadowOAM[ENEMYSPRITE].attr1 = (2 << 14) | soldier.col;
    shadowOAM[ENEMYSPRITE].attr2 = (24)*32+(7);
   }

  } else {
   shadowOAM[ENEMYSPRITE].attr0 = soldier.row | (2 << 8);
   shadowOAM[ENEMYSPRITE].attr1 = (1 << 14) | soldier.col;
   shadowOAM[ENEMYSPRITE].attr2 = (24)*32+(0);
  }


  for(int i = 0; i < 4; i++) {
   if(arrKnight[i].eHP > 0) {
    if (arrKnight[i].animation == HORSEA) {
     shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row;
     shadowOAM[ENEMYSPRITEHORSE + i].attr1 = (2 << 14) | arrKnight[i].col;
     shadowOAM[ENEMYSPRITEHORSE + i].attr2 = (28)*32+(0);
    } else if(arrKnight[i].animation == HORSEB) {
     shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row;
     shadowOAM[ENEMYSPRITEHORSE + i].attr1 = (2 << 14) | arrKnight[i].col;
     shadowOAM[ENEMYSPRITEHORSE + i].attr2 = (28)*32+(5);
    } else if(arrKnight[i].animation == HORSEC) {
     shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row | (1 << 14);
     shadowOAM[ENEMYSPRITEHORSE + i].attr1 = (2 << 14) | arrKnight[i].col;
     shadowOAM[ENEMYSPRITEHORSE + i].attr2 = (28)*32+(10);
    }
   } else {
    shadowOAM[ENEMYSPRITEHORSE + i].attr0 = arrKnight[i].row | (2 << 8);
    shadowOAM[ENEMYSPRITEHORSE + i].attr1 = (2 << 14) | arrKnight[i].col;
    shadowOAM[ENEMYSPRITEHORSE + i].attr2 = (28)*32+(5);
   }
  }
# 1736 "main.c"
  if(knockback == 0) {
   shadowOAM[CHEAT].attr0 = 0;
   shadowOAM[CHEAT].attr1 = (2 << 14) | 200;
   shadowOAM[CHEAT].attr2 = (14)*32+(10);
  }
  waitForVblank();
  DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);



  *(volatile unsigned short *)0x04000010 = hOff;
        *(volatile unsigned short *)0x04000012 = vOff;
}
