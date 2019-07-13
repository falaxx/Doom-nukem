/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   graphic_singletons.h                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabouri <hsabouri@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/07 07:04:14 by hugo              #+#    #+#             */
/*   Updated: 2019/03/02 13:43:39 by hsabouri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _GRAPHIC_SINGLETONS_H
# define _GRAPHIC_SINGLETONS_H

# include <vec.h>

/*
** This header contains all the singletons structures used to draw on screen
** in a highly optimized manner.
*/

typedef struct	s_ray
{
	t_fvec2		dir;
	int			id;
	ssize_t		mask_wall;
}				t_ray;

typedef struct	s_limit
{
	t_ray	left;
	t_ray	right;
}				t_limit;

#endif
