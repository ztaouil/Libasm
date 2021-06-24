/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/24 15:29:30 by ztaouil           #+#    #+#             */
/*   Updated: 2021/06/24 06:53:54 by ztaouil          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/errno.h>

extern size_t      ft_strlen(const char *s);
extern ssize_t     ft_write(int fd, const void *buf, size_t nb);

int     main(void)
{
    int len;
    int fd, fd2;
    char src[50] = "WHAT'S UP BOY";

    len = ft_strlen(src);
    errno = 0;
    int     ret = ft_write(9, src, len);
    printf("\n1-|%s|| ret |%d|\n", strerror(errno),ret);
    errno = 0;
    ret = ft_write(1, src, len);
    printf("\n2-|%s|| ret |%d|\n", strerror(errno),ret);

    return (0);
}