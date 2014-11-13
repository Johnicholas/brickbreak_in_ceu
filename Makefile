#CFLAGS = -DCEU_RUNTESTS -DCEU_DEBUG #-DCEU_DEBUG_TRAILS
CEUFILE = brickbreak.ceu

all:
	ceu --cpp-args "-I ." $(CEUFILE)
	#gcc main.c $(CFLAGS) -lSDL2
	gcc -g -Os main.c $(CFLAGS) -lpthread -lm \
		-lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lSDL2_net -lSDL2_gfx \
		-o $(basename $(CEUFILE)).exe

clean:
	find . -name "*.exe"  | xargs rm -f
	find . -name "_ceu_*" | xargs rm -f

.PHONY: all clean
