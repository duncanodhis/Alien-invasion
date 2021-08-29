CC = g++
INCLUDES	=	-I	Engine/include
CFLAGS = -c -Wall	-g
LINKER_FLAGS = -lSDL2main -lSDL2 -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lpthread
OBJ = main.o game.o sdl_components.o game_utilities.o main_menu_scene.o button.o label.o play_sp_scene.o sprite.o player.o bullet.o enemy.o enemy_horde.o special_monster.o health_bar.o play_mp_scene.o barricades.o ui.o play_scene.o highscores_scene.o

all: alienAttack clean_o




alienAttack: $(OBJ)
			$(CC)	$(INCLUDES) $(OBJ) -o AlienAttack $(LINKER_FLAGS)


main.o: Engine/src/main.cpp	
			$(CC)	$(INCLUDES)	$(CFLAGS) Engine/src/main.cpp
game.o:	Engine/src/game.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/game.cpp
sdl_components.o: Engine/src/sdl_components.cpp
			$(CC)	$(INCLUDES)	$(CFLAGS) Engine/src/sdl_components.cpp
game_utilities.o: Engine/src/game_utilities.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/game_utilities.cpp
main_menu_scene.o: Engine/src/main_menu_scene.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/main_menu_scene.cpp
button.o:	Engine/src/button.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/button.cpp
label.o:	Engine/src/label.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/label.cpp
play_sp_scene.o:	Engine/src/play_sp_scene.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/play_sp_scene.cpp
play_mp_scene.o:	Engine/src/play_mp_scene.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/play_mp_scene.cpp
sprite.o:	Engine/src/sprite.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/sprite.cpp
player.o:	Engine/src/player.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/player.cpp
bullet.o:	Engine/src/bullet.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/bullet.cpp
enemy.o:	Engine/src/enemy.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/enemy.cpp
enemy_horde.o:	Engine/src/enemy_horde.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/enemy_horde.cpp
special_monster.o:	Engine/src/special_monster.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/special_monster.cpp
health_bar.o:	Engine/src/health_bar.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/health_bar.cpp
barricades.o:	Engine/src/barricades.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/barricades.cpp
ui.o:	Engine/src/ui.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/ui.cpp
play_scene.o:	Engine/src/play_scene.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/play_scene.cpp
highscores_scene.o:	Engine/src/highscores_scene.cpp
			$(CC)	$(INCLUDES) $(CFLAGS) Engine/src/highscores_scene.cpp

clean:
			rm -rf *.o AlienAttack
			mv alienAttack	
clean_o:
			rm -rf *.o
