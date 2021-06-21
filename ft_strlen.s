segment .text
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