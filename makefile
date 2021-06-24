# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/24 15:19:55 by ztaouil           #+#    #+#              #
#    Updated: 2021/06/24 06:54:23 by ztaouil          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = exec

NASM = nasm

NASMFLAGS = -f macho64

SRCS =	ft_strlen.s\
		ft_write.s\

OBJS = $(SRCS:.s=.o)

all: $(NAME)
	ar -rc libasm.a $(OBJS)

$(NAME): $(OBJS)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

fclean: clean
		rm -rf $(NAME)
		rm -rf libasm.a

re:		fclean all
