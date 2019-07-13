/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   clean.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iporsenn <iporsenn@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/27 16:16:55 by iporsenn          #+#    #+#             */
/*   Updated: 2019/06/23 16:32:03 by fmerding         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <doom.h>

void		clean_texture(t_env env)
{
	SDL_DestroyTexture(env.sdl.buf);
}

void		clean_game(t_game game)
{
	size_t	cpt;

	free(game.entities);
	free(game.classes);
	free(game.sectors);
	free(game.walls);
	free(game.portals);
	free(game.points);
	free(game.materials);
	free(game.player.inventory.mem);
	cpt = 0;
	while (cpt < game.ntextures)
	{
		if (game.textures[cpt].content)
			free(game.textures[cpt].content);
		cpt++;
	}
	free(game.textures);
	cpt = -1;
	while (++cpt < game.nmulti_mats)
		free(game.multi_mats[cpt].mem);
	free(game.multi_mats);
	clean_music(game);
	free(game.chunks.mem);
	free(game.id_buf);
}
