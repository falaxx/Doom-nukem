/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_anew.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabouri <hsabouri@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/30 15:57:59 by hugo              #+#    #+#             */
/*   Updated: 2018/12/21 13:05:27 by hsabouri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_array		anew(void *first, size_t len, size_t elem_size)
{
	t_array res;

	if (first == NULL && len != 0)
		res.mem = (void *)malloc(len * elem_size);
	else
		res.mem = first;
	res.first = res.mem;
	if (first == NULL)
		res.len = 0;
	else
		res.len = len;
	res.elem_size = elem_size;
	res.allocated = len * elem_size;
	return (res);
}
