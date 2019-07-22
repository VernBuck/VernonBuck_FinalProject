PRODUCT_NAME       = M4
SOURCES            = main.c currentspritesheet.c myLib.c update.c gameover.c pausescreen.c titlescreen.c winscreen.c splash.c instructions.c sword.c theme.c innerbackground.c outterbackground.c page1.c page2.c page3.c page4.c page5.c page6.c page7.c page8.c page9.c page10.c page11.c page12.c page13.c page14.c page15.c page16.c page17.c page18.c page19.c page20.c page21.c page22.c page23.c page24.c page25.c page26.c page27.c page28.c page29.c page30.c page31.c page32.c page33.c page34.c page35.c page36.c page37.c page38.c page39.c page40.c page41.c page42.c page43.c page44.c page45.c page46.c page47.c page48.c page49.c page50.c page51.c page52.c arena.c level2transition.c spritesheet2.c
DKPATH             = "C:\devkitARM\bin"
CCPATH             = "C:\cygwin64\bin"
VBASIM             = "C:\vba\vba.exe"
FIND               = find
COPY               = cp -r

# --- File Names
ELF_NAME           = $(PRODUCT_NAME).elf
ROM_NAME           = $(PRODUCT_NAME).gba
BIN_NAME           = $(PRODUCT_NAME)

#MODEL              = -mthumb-interwork -mthumb
MODEL              = -mthumb-interwork -marm -mlong-calls #This makes interrupts work
SPECS              = -specs=gba.specs

# --- Archiver
AS                 = $(DKPATH)/arm-eabi-as
ASFLAGS            = -mthumb-interwork

# --- Compiler
CC                 = $(DKPATH)/arm-eabi-gcc
CFLAGS             = $(MODEL) -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=$(ROM_NAME) -D_VBA=$(VBASIM) 


# --- Linker
LD                 = $(DKPATH)/arm-eabi-gcc
LDFLAGS            = $(SPECS) $(MODEL) -lm

# --- Object/Executable Packager
OBJCOPY            = $(DKPATH)/arm-eabi-objcopy
OBJCOPYFLAGS       = -O binary

# --- ROM Fixer
GBAFIX             = $(DKPATH)/gbafix

# --- Delete
RM                 = rm -f

OBJECTS = $(SOURCES:.c=.o)


# --- Main build target

all : clean build 

run : $(ROM_NAME)
	$(VBASIM) $(ROM_NAME)


build : $(ROM_NAME)

# --- Build .elf file into .gba ROM file
$(ROM_NAME) : $(ELF_NAME)
	$(OBJCOPY) $(OBJCOPYFLAGS) $(ELF_NAME) $(ROM_NAME)
	$(GBAFIX) $(ROM_NAME)

# --- Build .o files into .elf file
$(ELF_NAME) : $(OBJECTS)
	$(LD) $(OBJECTS) $(LDFLAGS) -o $@

# -- Build .c files into .o files
$(OBJECTS) : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@



clean:
	$(RM) $(ROM_NAME)
	$(RM) $(ELF_NAME)
	$(RM) $(BIN_NAME)
	$(RM) *.o