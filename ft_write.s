segment .text
        global  _ft_write
        extern  __error

_ft_write:
        mov		rax, 0x2000004
		syscall
		jc		__error

_error:
		mov		r15, rax
		call	__error
		mov		[rax], r15
		jmp		_done

_done:
		mov		rax, -1
		ret