/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enunez-n <enunez-n@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/20 17:47:19 by enunez-n          #+#    #+#             */
/*   Updated: 2023/04/27 14:07:55 by enunez-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//String of digits to integer. See man atoi.

static int	ft_isspace(const char *str)
{
	int	i;

	i = 0;
	while (str[i] == '\v' || str[i] == '\f' || str[i] == '\r' || str[i] == '\n'
		|| str[i] == ' ' || str[i] == '\t' || str[i] == '\0')
		i++;
	return (i);
}

long	ft_atoi(const char *str)
{
	int		i;
	long	num;
	int		is_negative;

	i = ft_isspace(str);
	num = 0;
	is_negative = 1;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			is_negative *= -1;
		i++;
	}
	while (ft_isdigit(str[i]))
	{
		num *= 10;
		num += str[i] - '0';
		i++;
	}
	return (num * is_negative);
}
