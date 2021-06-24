/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/24 08:11:06 by ztaouil           #+#    #+#             */
/*   Updated: 2021/06/24 08:58:37 by ztaouil          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _LIBASM_H
# define _LIBASM_H

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <errno.h>

size_t			ft_strlen(const char *s);
ssize_t			ft_write(int fd, const void *buf, size_t nb);
char			*ft_strcpy(const char *dst, char *src);
char			*ft_strdup(const char *s);
int				ft_strcmp(const char *s1, const char *s2);
ssize_t			ft_read(int fd, void *buf, size_t byte);

#endif