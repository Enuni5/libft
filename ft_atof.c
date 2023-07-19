/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enunez-n <enunez-n@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/20 17:47:19 by enunez-n          #+#    #+#             */
/*   Updated: 2023/07/19 21:05:22 by enunez-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//String of digits to float.

// To check for errors, call float_positions != 0 before calling atof.

int	float_positions(const char *str)
{
	int		f_positions;
	char	*pos;
	char	*fake;

	f_positions = 0;
	pos = ft_strrchr(str, '.');
	fake = ft_strchr(str, '.');
	if (!pos || &pos[0] != &fake[0])
		return (0);
	while (pos[f_positions])
		f_positions++;
	return (f_positions - 1);
}

double	ft_atof(const char *str)
{
	int		i;
	double	num;
	double	decimals;
	int		decimals_pos;

	i = 1;
	num = ft_atoi(str);
	decimals_pos = float_positions(str);
	if (!decimals_pos)
		return (num);
	decimals = ft_atoi(ft_strrchr(str, '.') + 1);
	while (decimals_pos > 0)
	{
		i = i * 10;
		decimals_pos--;
	}
	if (num >= 0)
		num += (decimals / i);
	else
		num -= (decimals / i);
	return (num);

}
