; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strlen.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <marvin@42.fr>                     +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 07:33:19 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 07:33:19 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global _ft_strlen

_ft_strlen:
        xor     rax, rax
        jmp     _loop

_increment:
        inc     rax
        inc     rdi
        
_loop:
        cmp     [rdi], byte 0
        jz       _done
        
        jmp     _increment
        jmp     _loop

_done:
		ret
