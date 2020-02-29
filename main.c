/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: smaniani <smaniani@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/26 11:03:09 by smaniani          #+#    #+#             */
/*   Updated: 2020/02/29 16:39:48 by smaniani         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{
	char *buff;
	char *write_buffer;
	char *dest;
	char read_buffer[5];

	buff = malloc(6);
	write_buffer = "souadmaniani";
	printf("ft_strlen: %zu\n", ft_strlen("ahmed"));
	printf("ft_strcpy: %s\n", ft_strcpy(buff, "Spoody"));
	printf("ft_strcmp: %d\n", ft_strcmp("àbbb", "àbde"));
	printf("%zd >> \n", ft_write(1, write_buffer, 5));
	printf("\n");
	printf("%zu\n", ft_read(0, read_buffer, 2));
	printf("buffer readding: %s\n", read_buffer);
	dest = ft_strdup("42");
	printf("ft_strdup: %s\n", dest);
	return (0);
}
