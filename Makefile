BIN = doom-nukem
LIBFT_DIR = lib/libft
LIBTGA_DIR = lib/libtga
LIBVEC_DIR = lib/libvec
ifeq ($(shell uname -s), Darwin)
	SDL2_DIR = $(HOME)/.brew/Cellar/sdl2/2.0.10/lib/
	SDL2_INC_DIR = $(HOME)/.brew/Cellar/sdl2/2.0.10/include/
	SDL2_TTF_DIR = $(HOME)/.brew/Cellar/sdl2_ttf/2.0.15/lib/
	SDL2_TTF_INC_DIR = $(HOME)/.brew/Cellar/sdl2_ttf/2.0.15/include/
	SDL2_MIXER_DIR = $(HOME)/.brew/Cellar/sdl2_mixer/2.0.4/lib/
	SDL2_MIXER_INC_DIR = $(HOME)/.brew/Cellar/sdl2_mixer/2.0.4/include/
else
	SDL2_DIR =.
	SDL2_INC_DIR =.
	SDL2_TTF_DIR =.
	SDL2_TTF_INC_DIR =.
	SDL2_MIXER_DIR = .
	SDL2_MIXER_INC_DIR = .
endif

NO_COLOR=\x1b[0m
GREEN=\x1b[32;01m
YELLOW=\x1b[33;01m
BLUE=\x1b[36;01m
BLINK=\x1b[5;01m

# -----------------
# SOURCE FILES (.c)
# Don't forget to list files at the end of the project
# -----------------

SRCS_FILES = srcs/checker_niveau/check_entities.c \
	srcs/checker_niveau/check_mats.c \
	srcs/checker_niveau/check_portal.c \
	srcs/checker_niveau/check_sector.c \
	srcs/checker_niveau/check_sector_2.c \
	srcs/checker_niveau/check_wall.c \
	srcs/checker_niveau/dangling_portal.c \
	srcs/checker_niveau/init_error.c \
	srcs/checker_niveau/launch_check.c \
	srcs/checker_niveau/parallel_portal.c \
	srcs/clean.c \
	srcs/clean_music_linux.c \
	srcs/common/entity_type_to_text.c \
	srcs/common/safe_malloc.c \
	srcs/common/time_measure.c \
	srcs/common/translate_id.c \
	srcs/components/common/button.c \
	srcs/components/common/button_ft.c \
	srcs/components/common/callback_button.c \
	srcs/components/common/destroy.c \
	srcs/components/common/display_deco.c \
	srcs/components/common/help_component.c \
	srcs/components/common/list/list_button.2.c \
	srcs/components/common/list/list_button.c \
	srcs/components/common/list/list_comp.2.c \
	srcs/components/common/list/list_comp.c \
	srcs/components/common/simple_rectangle.c \
	srcs/components/common/simple_text.c \
	srcs/components/common/switch_button.c \
	srcs/components/dead/index.c \
	srcs/components/editor_comp/index.c \
	srcs/components/editor_comp/map/assign_entity.c \
	srcs/components/editor_comp/map/assign_portal.c \
	srcs/components/editor_comp/map/assign_wall.c \
	srcs/components/editor_comp/map/class_list.c \
	srcs/components/editor_comp/map/draw/draw_map.c \
	srcs/components/editor_comp/map/draw/entity.c \
	srcs/components/editor_comp/map/draw/pointer_pos.c \
	srcs/components/editor_comp/map/draw/portal.c \
	srcs/components/editor_comp/map/draw/wall.c \
	srcs/components/editor_comp/map/entity_data.c \
	srcs/components/editor_comp/map/entity_info.c \
	srcs/components/editor_comp/map/entity_tool.c \
	srcs/components/editor_comp/map/index.c \
	srcs/components/editor_comp/map/index_childs.c \
	srcs/components/editor_comp/map/index_utils.c \
	srcs/components/editor_comp/map/point_tool.c \
	srcs/components/editor_comp/map/sector_color_tool.c \
	srcs/components/editor_comp/map/selectors/entity.c \
	srcs/components/editor_comp/map/selectors/selectors.c \
	srcs/components/editor_comp/map/utils.c \
	srcs/components/editor_comp/map/wall_tool.c \
	srcs/components/editor_comp/materials/color_chooser.c \
	srcs/components/editor_comp/materials/index.c \
	srcs/components/editor_comp/materials/index_2.c \
	srcs/components/editor_comp/materials/mat_list.c \
	srcs/components/editor_comp/materials/overlay_list.c \
	srcs/components/editor_comp/materials/preview.c \
	srcs/components/editor_comp/materials/texture_list.c \
	srcs/components/hud/cross.c \
	srcs/components/hud/full_empty_life.c \
	srcs/components/hud/help.c \
	srcs/components/hud/hud.c \
	srcs/components/hud/in_game_editor/index.c \
	srcs/components/hud/inventory.c \
	srcs/components/hud/life.c \
	srcs/components/hud/mini_map.c \
	srcs/components/hud/weapon_2.c \
	srcs/components/hud/weapon_mini_pri.c \
	srcs/components/hud/weapon_mini_sec.c \
	srcs/components/hud/weapons.c \
	srcs/components/index.c \
	srcs/components/win/index.c \
	srcs/dead.c \
	srcs/editor/create/create_entity.c \
	srcs/editor/create/create_material.c \
	srcs/editor/create/create_material_update.c \
	srcs/editor/create/create_point.c \
	srcs/editor/create/create_portal.c \
	srcs/editor/create/create_sector.c \
	srcs/editor/create/create_wall.c \
	srcs/editor/create/new_update.c \
	srcs/editor/delete/delete.c \
	srcs/editor/delete/delete_material.c \
	srcs/editor/delete/delete_material_update.c \
	srcs/editor/delete/delete_update.c \
	srcs/editor/editor.c \
	srcs/editor/in_game/in_game.c \
	srcs/editor/in_game/material.c \
	srcs/editor/in_game/sectors.c \
	srcs/editor/in_game/texture.c \
	srcs/editor/init.c \
	srcs/editor/legend.c \
	srcs/editor/world_selector.c \
	srcs/event.c \
	srcs/event2.c \
	srcs/game/audio.c \
	srcs/game/audio_linux.c \
	srcs/game/audio_mac.c \
	srcs/game/audio_tmp.c \
	srcs/game/default.c \
	srcs/game/event_action/actions.c \
	srcs/game/event_action/actions2.c \
	srcs/game/event_action/actions3.c \
	srcs/game/event_action/animate.c \
	srcs/game/event_action/event_action.c \
	srcs/game/event_action/shooting.c \
	srcs/game/game.c \
	srcs/game/init_classe.c \
	srcs/game/init_classe_2.c \
	srcs/game/init_map.c \
	srcs/game/init_mat_1.c \
	srcs/game/init_multi_sprite.c \
	srcs/game/init_weapons_1.c \
	srcs/game/init_weapons_2.c \
	srcs/graphic/bresenham.c \
	srcs/graphic/bunch/bunch.c \
	srcs/graphic/bunch/entity_bunch.c \
	srcs/graphic/color_filters.c \
	srcs/graphic/components/clean_childs.c \
	srcs/graphic/components/destroy_component.c \
	srcs/graphic/components/life_cycle.c \
	srcs/graphic/components/ui_tools.c \
	srcs/graphic/components/utils.c \
	srcs/graphic/display/display.c \
	srcs/graphic/display/display_portal.c \
	srcs/graphic/find.c \
	srcs/graphic/graphic_utils.c \
	srcs/graphic/incline.c \
	srcs/graphic/inline_functions.c \
	srcs/graphic/material/get_pixel.c \
	srcs/graphic/material/material.c \
	srcs/graphic/multi_sprite.c \
	srcs/graphic/multi_thread.c \
	srcs/graphic/proj_bis.c \
	srcs/graphic/projection.c \
	srcs/graphic/ray.c \
	srcs/graphic/render/render.c \
	srcs/graphic/render/render_objects.c \
	srcs/graphic/rotate.c \
	srcs/graphic/sort.c \
	srcs/graphic/switch.c \
	srcs/graphic/teleport.c \
	srcs/init.c \
	srcs/load_all_textures.c \
	srcs/load_all_textures_2.c \
	srcs/main.c \
	srcs/menu/choose_lvl.c \
	srcs/menu/init_menu.c \
	srcs/menu/menu_loop.c \
	srcs/menu/select_level.c \
	srcs/menu/start_mode.c \
	srcs/physic/collision_detec.c \
	srcs/physic/collision_entities.c \
	srcs/physic/collision_gestion.c \
	srcs/physic/entities_physic.c \
	srcs/physic/move.c \
	srcs/physic/physic.c \
	srcs/physic/player_properties.c \
	srcs/physic/teleportation.c \
	srcs/physic/tracking_entities.c \
	srcs/physic/z_inter.c \
	srcs/save_load/convert_p_id.c \
	srcs/save_load/default_entity.c \
	srcs/save_load/open_file.c \
	srcs/save_load/parse.c \
	srcs/save_load/parse_entities.c \
	srcs/save_load/parse_map.c \
	srcs/save_load/parse_textures_sounds.c \
	srcs/save_load/write.c \
	srcs/save_load/write_map.c \
	srcs/save_load/write_player_entities.c \
	srcs/save_load/write_textures_musics.c

# -----------------

SRCS_DIR = srcs
SRCS = $(SRCS_FILES:%=%)

# -----------------
# HEADER FILES (.h)
# Don't forget to list files at the end of the project
# -----------------

INCS_FILES = srcs/checker_niveau/checker.h \
	srcs/common/entity_type_to_text.h \
	srcs/common/time_measure.h \
	srcs/common/translate_id.h \
	srcs/components/common/common.h \
	srcs/components/common/list/list_comp.h \
	srcs/components/editor_comp/editor_comp.h \
	srcs/components/editor_comp/map/map.h \
	srcs/components/editor_comp/materials/materials.h \
	srcs/components/hud/hud.h \
	srcs/components/hud/in_game_editor/in_game_editor.h \
	srcs/components/root.h \
	srcs/graphic/bunch/singletons.h \
	srcs/graphic/color.h \
	srcs/graphic/multi_sprite.h \
	srcs/graphic/sort.h \
	srcs/menu/menu.h \
	includes/doom.h \
	includes/editor.h \
	includes/graphic.h \
	includes/graphic_singletons.h \
	includes/load_save.h \
	includes/physic.h \
	includes/structure.h \
	includes/structure_clone.h \
	includes/weapons.h

# -----------------

INCS_DIR = includes
INCS = $(INCS_FILES:%=%)

# -----------------

OBJS_DIR = objs
OBJS = $(SRCS:$(SRCS_DIR)/%.c=$(OBJS_DIR)/%.o)

# -----------------

CC = clang
CFLAGS = -Wall -Wextra -Iincludes
CFLAGS += -g
#CFLAGS += -O3 -march=native
#CFLAGS += -Werror

ifeq ($(SAN), yes)
ifeq ($(shell uname -s), Darwin) # remove _o
LDFLAGS = -fsanitize=address
CFLAGS += -fsanitize=address
else
LDFLAGS = -lasan
CFLAGS += -fsanitize=address
endif
endif

ifeq ($(OPT), yes)
CFLAGS += -O3 -march=native
endif

CFLAGS += -I$(LIBFT_DIR)/includes
CFLAGS += -I$(LIBVEC_DIR)/includes
CFLAGS += -I$(SDL2_INC_DIR)/SDL2 -I$(SDL2_INC_DIR)
CFLAGS += -I$(SDL2_TTF_INC_DIR) -I$(SDL2_TTF_INC_DIR)/SDL2
CFLAGS += -I$(SDL2_MIXER_INC_DIR) -I$(SDL2_MIXER_INC_DIR)/SDL2
CFLAGS += -I$(LIBTGA_DIR)/includes
CFLAGS += -I.

LDFLAGS += -L$(LIBFT_DIR) -lft
LDFLAGS += -lpthread -ldl -lm
LDFLAGS += -L$(LIBVEC_DIR) -lvec
LDFLAGS += -L$(SDL2_DIR) -lSDL2 -lSDL2main
LDFLAGS += -L$(SDL2_TTF_DIR) -lSDL2_ttf
LDFLAGS += -L$(SDL2_MIXER_DIR) -lSDL2_mixer
LDFLAGS += -L$(LIBTGA_DIR) -ltga

all: message libft libvec libtga $(BIN)

message:
	@echo -e "$(YELLOW)" "[BUILD]" "$(NO_COLOR)" $(BIN)

libft:
	@echo -e "$(YELLOW)" "[BUILD]" "$(NO_COLOR)" $@
	@$(MAKE) -j -s -C $(LIBFT_DIR) SAN=$(SAN) OPT=$(OPT)

libvec:
	@echo -e "$(YELLOW)" "[BUILD]" "$(NO_COLOR)" $@
	@$(MAKE) -j -s -C $(LIBVEC_DIR) SAN=$(SAN) OPT=$(OPT)

libtga:
	@echo -e "$(YELLOW)" "[BUILD]" "$(NO_COLOR)" $@
	@$(MAKE) -j -s -C $(LIBTGA_DIR) SAN=$(SAN) OPT=$(OPT)

$(BIN): $(OBJS)
	@echo -e "$(BLUE)" "[LINK]" "$(NO_COLOR)" $@
	@$(CC) -o $@ $^ $(LDFLAGS)
	@echo -e "$(BLINK)" "FINISHED !" "$(NO_COLOR)"

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.c $(INCS)
	@echo -e "$(GREEN)" "[COMPILE]" "$(NO_COLOR)" $<
	@mkdir -p $(dir $@)
	@$(CC) -c -o $@ $< $(CFLAGS)

clean:
	@rm -rf $(OBJS_DIR)
	@$(MAKE) -s -C $(LIBFT_DIR) clean
	@$(MAKE) -s -C $(LIBVEC_DIR) clean
	@$(MAKE) -s -C $(LIBTGA_DIR) clean

fclean:
	@rm -rf $(OBJS_DIR)
	@$(MAKE) -s -C $(LIBFT_DIR) fclean
	@$(MAKE) -s -C $(LIBVEC_DIR) fclean
	@$(MAKE) -s -C $(LIBTGA_DIR) fclean
	rm -rf $(BIN)

re: fclean
	@$(MAKE) all

.PHONY: clean fclean libft libvec libtga re all

.SILENT: clean fclean libft libvec libtga re all
