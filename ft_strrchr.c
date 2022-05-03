/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enunez-n <enunez-n@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/20 13:14:03 by enunez-n          #+#    #+#             */
/*   Updated: 2022/04/25 13:35:49 by enunez-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char	*ptr;
	char	*ptr2;
	int		i;

	ptr = (char *)s;
	ptr2 = 0;
	i = 0;
	while (ptr[i])
	{
		if (ptr[i] == (unsigned char)c)
			ptr2 = ptr + i;
		i++;
	}
	if (c == '\0')
		return (ptr + i);
	return (ptr2);
}
