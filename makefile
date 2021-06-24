# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/24 15:19:55 by ztaouil           #+#    #+#              #
#    Updated: 2021/06/24 08:15:00 by ztaouil          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NASM = nasm

NASMFLAGS = -f macho64

SRCS =	ft_strlen.s\
		ft_write.s\
		ft_strcpy.s\
		ft_strdup.s\
		
OBJS = $(SRCS:.s=.o)

all: $(OBJS)
	ar -rc libasm.a $(OBJS)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

fclean: clean
		rm -rf a.out
		rm -rf libasm.a

re:		fclean all
