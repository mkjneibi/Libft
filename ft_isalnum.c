/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mealjnei <mealjnei@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/29 15:57:56 by mealjnei          #+#    #+#             */
/*   Updated: 2022/04/19 22:34:57 by mealjnei         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalnum(int mk)
{
	if (mk >= '0' && mk <= '9')
		return (1);
	else if (mk >= 65 && mk <= 90)
		return (1);
	else if (mk >= 97 && mk <= 122)
		return (1);
	return (0);
}
