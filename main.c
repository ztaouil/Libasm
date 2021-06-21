/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/24 15:29:30 by ztaouil           #+#    #+#             */
/*   Updated: 2021/05/31 13:40:25 by ztaouil          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/errno.h>

size_t      ft_strlen(const char *s);
ssize_t     ft_write(int fd, const void *buf, size_t nb);

int     main(void)
{
    int len;
    int fd, fd2;
    char src[50] = "WHAT'S UP BOY";

    printf("FT_STRLEN\n");
    len = ft_strlen(src);
    write(1, &src, len);
    printf("\n");
    ft_write(1, &src, len);


    return (0);
}