# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
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
# 2 "myLib.c" 2

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer = (u16 *)0x600A000;

DMA *dma = (DMA *)0x40000B0;

void loadPalette(const unsigned short* palette)
{
 DMANow(3, (unsigned short*)palette, ((u16 *)0x5000000), 256);
}


void DMANow(int channel, volatile const void* source, volatile void* destination, unsigned int control)
{
 dma[channel].src = source;
 dma[channel].dst = destination;
 dma[channel].cnt = (1 << 31) | control;
}

void waitForVblank()
{
 while(*(volatile u16 *)0x4000006 > 160);
 while(*(volatile u16 *)0x4000006 < 160);
}


void flipPage()
{
    if(*(unsigned short *)0x4000000 & (1<<4))
    {
        *(unsigned short *)0x4000000 &= ~(1<<4);
        videoBuffer = backBuffer;
    }
    else
    {
        *(unsigned short *)0x4000000 |= (1<<4);
        videoBuffer = frontBuffer;
    }
}

void setPixel4(int row, int col, unsigned char colorIndex) {



    unsigned short pixel = videoBuffer[((row)*(240)+(col))/2];
    if(col & 1) {
        pixel &= 0xFF;
        videoBuffer[((row)*(240)+(col))/2] = pixel | (colorIndex << 8);
    } else {
        pixel &= ~0xFF;
        videoBuffer[((row)*(240)+(col))/2] = pixel | colorIndex;
    }
}

void drawRect4(int row, int col, int height, int width, unsigned char colorIndex)
{




    unsigned short pixels = colorIndex << 8 | colorIndex;
    for(int r = 0; r < height; r++) {
        if(col & 1) {
            setPixel4(row + r, col, colorIndex);
            if(width & 1) {
                DMANow(3, &pixels, &videoBuffer[((row+r)*(240)+(col+1))/2], width/2 | (2 << 23));
            } else {
                DMANow(3, &pixels, &videoBuffer[((row+r)*(240)+(col+1))/2], (width/2 - 1) | (2 << 23));
                setPixel4(row + r, col + width - 1, colorIndex);
            }
        } else {
            if (width & 1) {
                DMANow(3, &pixels, &videoBuffer[((row+r)*(240)+(col))/2], width/2 | (2 << 23));
                setPixel4(row + r, col + width - 1, colorIndex);
            } else {
                DMANow(3, &pixels, &videoBuffer[((row+r)*(240)+(col))/2], width/2 | (2 << 23));
            }
        }
    }

}

void drawImage4(volatile const unsigned short* image, int row, int col, int height, int width) {



    int i;
    if ((col & 1)) {
        col++;
    }
    for(i = 0; i < height; i++)
    {
        DMANow(3, (unsigned short*)&image[((i)*(width)+(0))/2], &videoBuffer[((row+i)*(240)+(col))/2], (width)/2);
    }
}

void drawBackgroundImage(volatile const unsigned short* image) {
    DMANow(3, (unsigned short*)image, videoBuffer, (240*160)/2);
}
