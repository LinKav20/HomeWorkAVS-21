global read_sphere: function
global read_tetrahedron: function
global read_parallelepiped: function
global read_data: function
global rnd_sphere: function
global rnd_tetrahedron: function
global rnd_parallelepiped: function
global rnd_data: function
global print_sphere: function
global print_tetrahedron: function
global print_parallelepiped: function
global write_data: function
global fp: function
global sort_data: function
global invalid_parameters_list_exception: function
global incorrect_flag_exception: function
global fill_container: function
global main: function

extern clock
extern strcmp
extern fopen
extern fputc
extern fprintf
extern rand
extern fclose
extern exit
extern printf
extern __stack_chk_fail
extern puts
extern __isoc99_fscanf


SECTION .text   align=1 execute

read_sphere:; Function for read shape.
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax
        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-10H]
        push    eax
        push    ?_045
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 16
        mov     eax, dword [ebp-10H]
        test    eax, eax
        jg      ?_001
        sub     esp, 12
        push    ?_046
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_047
        call    puts
        add     esp, 16
        mov     dword [ebp-10H], 1
?_001:  mov     edx, dword [ebp-10H]
        mov     eax, dword [ebp-20H]
        mov     dword [eax+0CH], edx
        nop
        mov     eax, dword [ebp-0CH]
        xor     eax, dword [gs:14H]
        jz      ?_002
        call    __stack_chk_fail
?_002:  leave
        ret

read_tetrahedron:; Function fro read tetrahedron.
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax
        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-10H]
        push    eax
        push    ?_045
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 16
        mov     eax, dword [ebp-10H]
        test    eax, eax
        jg      ?_003
        sub     esp, 12
        push    ?_048
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_049
        call    puts
        add     esp, 16
        mov     dword [ebp-10H], 1
?_003:  mov     edx, dword [ebp-10H]
        mov     eax, dword [ebp-20H]
        mov     dword [eax+0CH], edx
        nop
        mov     eax, dword [ebp-0CH]
        xor     eax, dword [gs:14H]
        jz      ?_004
        call    __stack_chk_fail
?_004:  leave
        ret

read_parallelepiped:; Function for read parallelepiped.
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax
        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 12
        lea     eax, [ebp-10H]
        push    eax
        lea     eax, [ebp-14H]
        push    eax
        lea     eax, [ebp-18H]
        push    eax
        push    ?_050
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 32
        mov     eax, dword [ebp-18H]
        test    eax, eax
        jle     ?_005
        mov     eax, dword [ebp-14H]
        test    eax, eax
        jle     ?_005
        mov     eax, dword [ebp-10H]
        test    eax, eax
        jg      ?_006
?_005:  sub     esp, 12
        push    ?_051
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_052
        call    puts
        add     esp, 16
        mov     dword [ebp-18H], 1
        mov     dword [ebp-14H], 1
        mov     dword [ebp-10H], 1
?_006:  mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp-20H]
        mov     dword [eax+0CH], edx
        mov     edx, dword [ebp-14H]
        mov     eax, dword [ebp-20H]
        mov     dword [eax+10H], edx
        mov     edx, dword [ebp-10H]
        mov     eax, dword [ebp-20H]
        mov     dword [eax+14H], edx
        nop
        mov     eax, dword [ebp-0CH]
        xor     eax, dword [gs:14H]
        jz      ?_007
        call    __stack_chk_fail
?_007:  leave
        ret

read_data:; Function fro read all shapes.
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax
        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-18H]
        push    eax
        push    ?_045
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 16
        mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp+10H]
        cmp     edx, eax
        cmovle  eax, edx
        mov     dword [ebp-10H], eax
        mov     dword [ebp-14H], 0
        jmp     ?_013

?_008:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        mov     ecx, eax
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        add     eax, 8
        push    ecx
        push    eax
        push    ?_053
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 16
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        mov     eax, dword [eax+8H]
        cmp     eax, 2
        jz      ?_009
        cmp     eax, 3
        jz      ?_010
        cmp     eax, 1
        jnz     ?_011
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp-1CH]
        call    read_sphere
        add     esp, 16
        jmp     ?_012

?_009:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp-1CH]
        call    read_parallelepiped
        add     esp, 16
        jmp     ?_012

?_010:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp-1CH]
        call    read_tetrahedron
        add     esp, 16
        jmp     ?_012

?_011:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        mov     eax, dword [eax+8H]
        sub     esp, 8
        push    eax
        push    ?_054
        call    printf
        add     esp, 16
        sub     esp, 12
        push    -2
        call    exit
?_012:  add     dword [ebp-14H], 1
?_013:  mov     eax, dword [ebp-18H]
        cmp     dword [ebp-14H], eax
        jl      ?_008
        sub     esp, 12
        push    dword [ebp-1CH]
        call    fclose
        add     esp, 16
        mov     eax, dword [ebp-10H]
        mov     ecx, dword [ebp-0CH]
        xor     ecx, dword [gs:14H]
        jz      ?_014
        call    __stack_chk_fail
?_014:  leave
        ret

rnd_sphere:; Function for create random sphere.
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        call    rand
        mov     ecx, eax
        mov     edx, 2201224481
        mov     eax, ecx
        imul    edx
        lea     eax, [edx+ecx]
        sar     eax, 9
        mov     edx, eax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        imul    eax, eax, 999
        sub     ecx, eax
        mov     eax, ecx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], edx
        nop
        leave
        ret

rnd_tetrahedron:; Function fro create random tetrahedron.
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        call    rand
        mov     ecx, eax
        mov     edx, 2201224481
        mov     eax, ecx
        imul    edx
        lea     eax, [edx+ecx]
        sar     eax, 9
        mov     edx, eax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        imul    eax, eax, 999
        sub     ecx, eax
        mov     eax, ecx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], edx
        nop
        leave
        ret

rnd_parallelepiped:; Function for create random parallelepiped.
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        call    rand
        mov     ecx, eax
        mov     edx, 2201224481
        mov     eax, ecx
        imul    edx
        lea     eax, [edx+ecx]
        sar     eax, 9
        mov     edx, eax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        imul    eax, eax, 999
        sub     ecx, eax
        mov     eax, ecx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+0CH], edx
        call    rand
        mov     ecx, eax
        mov     edx, 2201224481
        mov     eax, ecx
        imul    edx
        lea     eax, [edx+ecx]
        sar     eax, 9
        mov     edx, eax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        imul    eax, eax, 999
        sub     ecx, eax
        mov     eax, ecx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+10H], edx
        call    rand
        mov     ecx, eax
        mov     edx, 2201224481
        mov     eax, ecx
        imul    edx
        lea     eax, [edx+ecx]
        sar     eax, 9
        mov     edx, eax
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        imul    eax, eax, 999
        sub     ecx, eax
        mov     eax, ecx
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax+14H], edx
        nop
        leave
        ret

rnd_data:; Function for create all random shapes.
        push    ebp
        mov     ebp, esp
        push    ebx
        sub     esp, 36
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax
        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-18H]
        push    eax
        push    ?_045
        push    dword [ebp-1CH]
        call    __isoc99_fscanf
        add     esp, 16
        mov     eax, dword [ebp-18H]
        test    eax, eax
        js      ?_015
        mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp+10H]
        cmp     edx, eax
        cmovle  eax, edx
        jmp     ?_016

?_015:  mov     eax, dword [ebp+10H]
?_016:  mov     dword [ebp-10H], eax
        mov     dword [ebp-14H], 0
        jmp     ?_022

?_017:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        lea     ebx, [edx+eax]
        call    rand
        mov     ecx, eax
        mov     edx, 1431655766
        mov     eax, ecx
        imul    edx
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        sub     ecx, eax
        mov     edx, ecx
        lea     eax, [edx+1H]
        mov     dword [ebx+8H], eax
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        lea     ebx, [edx+eax]
        call    rand
        mov     dword [ebp-24H], eax
        fild    dword [ebp-24H]
        fld     qword [?_082]
        fmulp   st1, st(0)
        fld     qword [?_083]
        fdivp   st1, st(0)
        fstp    qword [ebx]
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        mov     eax, dword [eax+8H]
        cmp     eax, 2
        jz      ?_018
        cmp     eax, 3
        jz      ?_019
        cmp     eax, 1
        jnz     ?_020
        mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 12
        push    eax
        call    rnd_sphere
        add     esp, 16
        jmp     ?_021

?_018:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 12
        push    eax
        call    rnd_tetrahedron
        add     esp, 16
        jmp     ?_021

?_019:  mov     edx, dword [ebp-14H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp-20H]
        add     eax, edx
        sub     esp, 12
        push    eax
        call    rnd_parallelepiped
        add     esp, 16
        jmp     ?_021

?_020:  sub     esp, 12
        push    ?_055
        call    printf
        add     esp, 16
        nop
?_021:  add     dword [ebp-14H], 1
?_022:  mov     eax, dword [ebp-14H]
        cmp     eax, dword [ebp-10H]
        jl      ?_017
        mov     eax, dword [ebp-10H]
        mov     ebx, dword [ebp-0CH]
        xor     ebx, dword [gs:14H]
        jz      ?_023
        call    __stack_chk_fail
?_023:  mov     ebx, dword [ebp-4H]
        leave
        ret

print_sphere:; Function for print sphere.
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+0CH]
        mov     edx, dword [eax+0CH]
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        imul    eax, edx
        mov     dword [ebp-0CH], eax
        fild    dword [ebp-0CH]
        fld     qword [?_084]
        fmulp   st1, st(0)
        fld     qword [?_085]
        fmulp   st1, st(0)
        mov     eax, dword [ebp+0CH]
        fld     qword [eax]
        fxch    st1
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        sub     esp, 4
        lea     esp, [esp-8H]
        fstp    qword [esp]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    eax
        push    ?_056
        push    dword [ebp+8H]
        call    fprintf
        add     esp, 32
        nop
        leave
        ret

print_tetrahedron:; Function for print tetrahedron.
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+0CH]
        mov     edx, dword [eax+0CH]
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        imul    eax, edx
        mov     dword [ebp-0CH], eax
        fild    dword [ebp-0CH]
        fld     qword [?_086]
        fmulp   st1, st(0)
        mov     eax, dword [ebp+0CH]
        fld     qword [eax]
        fxch    st1
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        sub     esp, 4
        lea     esp, [esp-8H]
        fstp    qword [esp]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    eax
        push    ?_057
        push    dword [ebp+8H]
        call    fprintf
        add     esp, 32
        nop
        leave
        ret

print_parallelepiped:; Function for print perellepiped.
        push    ebp
        mov     ebp, esp
        push    ebx
        sub     esp, 4
        mov     eax, dword [ebp+0CH]
        mov     edx, dword [eax+0CH]
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        add     edx, eax
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        add     edx, eax
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+10H]
        imul    eax, edx
        lea     ebx, [eax+eax]
        mov     eax, dword [ebp+0CH]
        fld     qword [eax]
        mov     eax, dword [ebp+0CH]
        mov     ecx, dword [eax+14H]
        mov     eax, dword [ebp+0CH]
        mov     edx, dword [eax+10H]
        mov     eax, dword [ebp+0CH]
        mov     eax, dword [eax+0CH]
        push    ebx
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    ecx
        push    edx
        push    eax
        push    ?_058
        push    dword [ebp+8H]
        call    fprintf
        add     esp, 32
        nop
        mov     ebx, dword [ebp-4H]
        leave
        ret

write_data:; Function for write all shapes.
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        cmp     dword [ebp+8H], 0
        jnz     ?_024
        sub     esp, 12
        push    -14
        call    exit
?_024:  sub     esp, 4
        push    dword [ebp+10H]
        push    ?_059
        push    dword [ebp+8H]
        call    fprintf
        add     esp, 16
        mov     dword [ebp-0CH], 0
        jmp     ?_030

?_025:  sub     esp, 4
        push    dword [ebp-0CH]
        push    ?_060
        push    dword [ebp+8H]
        call    fprintf
        add     esp, 16
        mov     edx, dword [ebp-0CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax+8H]
        cmp     eax, 2
        jz      ?_026
        cmp     eax, 3
        jz      ?_027
        cmp     eax, 1
        jnz     ?_028
        mov     edx, dword [ebp-0CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp+8H]
        call    print_sphere
        add     esp, 16
        jmp     ?_029

?_026:  mov     edx, dword [ebp-0CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp+8H]
        call    print_tetrahedron
        add     esp, 16
        jmp     ?_029

?_027:  mov     edx, dword [ebp-0CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        sub     esp, 8
        push    eax
        push    dword [ebp+8H]
        call    print_parallelepiped
        add     esp, 16
        jmp     ?_029

?_028:  sub     esp, 12
        push    ?_055
        call    printf
        add     esp, 16
        nop
?_029:  sub     esp, 8
        push    dword [ebp+8H]
        push    10
        call    fputc
        add     esp, 16
        add     dword [ebp-0CH], 1
?_030:  mov     eax, dword [ebp-0CH]
        cmp     eax, dword [ebp+10H]
        jl      ?_025
        sub     esp, 12
        push    dword [ebp+8H]
        call    fclose
        add     esp, 16
        nop
        leave
        ret

fp:     ; Function for find position of the element to change.
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        jmp     ?_033

?_031:  mov     eax, dword [ebp+10H]
        sub     eax, dword [ebp+0CH]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax, 1
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     dword [ebp-4H], eax
        fld     qword [ebp+14H]
        mov     edx, dword [ebp-4H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        add     eax, edx
        fld     qword [eax]
        fxch    st1
        fucomip st(0), st1
        fstp    st0
        jbe     ?_032
        mov     eax, dword [ebp-4H]
        sub     eax, 1
        mov     dword [ebp+10H], eax
        jmp     ?_033

?_032:  mov     eax, dword [ebp-4H]
        add     eax, 1
        mov     dword [ebp+0CH], eax
?_033:  mov     eax, dword [ebp+0CH]
        cmp     eax, dword [ebp+10H]
        jle     ?_031
        mov     eax, dword [ebp+0CH]
        leave
        ret

sort_data:; Function for sort all shapes.
        push    ebp
        mov     ebp, esp
        sub     esp, 48
        mov     dword [ebp-24H], 0
        jmp     ?_037

?_034:  mov     edx, dword [ebp-24H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        add     eax, edx
        mov     edx, dword [eax]
        mov     dword [ebp-18H], edx
        mov     edx, dword [eax+4H]
        mov     dword [ebp-14H], edx
        mov     edx, dword [eax+8H]
        mov     dword [ebp-10H], edx
        mov     edx, dword [eax+0CH]
        mov     dword [ebp-0CH], edx
        mov     edx, dword [eax+10H]
        mov     dword [ebp-8H], edx
        mov     eax, dword [eax+14H]
        mov     dword [ebp-4H], eax
        mov     eax, dword [ebp-24H]
        sub     eax, 1
        sub     esp, 4
        push    dword [ebp-4H]
        push    dword [ebp-8H]
        push    dword [ebp-0CH]
        push    dword [ebp-10H]
        push    dword [ebp-14H]
        push    dword [ebp-18H]
        push    eax
        push    0
        push    dword [ebp+8H]
        call    fp
        add     esp, 40
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp-24H]
        sub     eax, 1
        mov     dword [ebp-20H], eax
        jmp     ?_036

?_035:  mov     eax, dword [ebp-20H]
        lea     edx, [eax+1H]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        add     eax, edx
        mov     ecx, dword [ebp-20H]
        mov     edx, ecx
        add     edx, edx
        add     edx, ecx
        shl     edx, 3
        mov     ecx, edx
        mov     edx, dword [ebp+8H]
        add     edx, ecx
        mov     ecx, dword [edx]
        mov     dword [eax], ecx
        mov     ecx, dword [edx+4H]
        mov     dword [eax+4H], ecx
        mov     ecx, dword [edx+8H]
        mov     dword [eax+8H], ecx
        mov     ecx, dword [edx+0CH]
        mov     dword [eax+0CH], ecx
        mov     ecx, dword [edx+10H]
        mov     dword [eax+10H], ecx
        mov     edx, dword [edx+14H]
        mov     dword [eax+14H], edx
        sub     dword [ebp-20H], 1
?_036:  mov     eax, dword [ebp-20H]
        cmp     eax, dword [ebp-1CH]
        jge     ?_035
        mov     edx, dword [ebp-1CH]
        mov     eax, edx
        add     eax, eax
        add     eax, edx
        shl     eax, 3
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        add     eax, edx
        mov     edx, dword [ebp-18H]
        mov     dword [eax], edx
        mov     edx, dword [ebp-14H]
        mov     dword [eax+4H], edx
        mov     edx, dword [ebp-10H]
        mov     dword [eax+8H], edx
        mov     edx, dword [ebp-0CH]
        mov     dword [eax+0CH], edx
        mov     edx, dword [ebp-8H]
        mov     dword [eax+10H], edx
        mov     edx, dword [ebp-4H]
        mov     dword [eax+14H], edx
        add     dword [ebp-24H], 1
?_037:  mov     eax, dword [ebp-24H]
        cmp     eax, dword [ebp+0CH]
        jl      ?_034
        nop
        leave
        ret

invalid_parameters_list_exception:; Function for show message about incorrect params.
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 12
        push    ?_061
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_062
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_063
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_064
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_065
        call    printf
        add     esp, 16
        nop
        leave
        ret

incorrect_flag_exception:; Function for show message about incorrect flags.
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 12
        push    ?_066
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_062
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_067
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_064
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_068
        call    printf
        add     esp, 16
        sub     esp, 12
        push    -2
        call    exit

fill_container:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     eax, dword [ebp+10H]
        add     eax, 8
        mov     eax, dword [eax]
        sub     esp, 8
        push    ?_069
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-0CH], eax
        cmp     dword [ebp-0CH], 0
        jnz     ?_038
        sub     esp, 12
        push    -10
        call    exit
?_038:  mov     eax, dword [ebp+10H]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 8
        push    ?_070
        push    eax
        call    strcmp
        add     esp, 16
        test    eax, eax
        jnz     ?_039
        sub     esp, 4
        push    10000
        push    dword [ebp+8H]
        push    dword [ebp-0CH]
        call    read_data
        add     esp, 16
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        mov     dword [eax], edx
        jmp     ?_041

?_039:  mov     eax, dword [ebp+10H]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 8
        push    ?_071
        push    eax
        call    strcmp
        add     esp, 16
        test    eax, eax
        jnz     ?_040
        sub     esp, 4
        push    10000
        push    dword [ebp+8H]
        push    dword [ebp-0CH]
        call    rnd_data
        add     esp, 16
        mov     edx, eax
        mov     eax, dword [ebp+0CH]
        mov     dword [eax], edx
        jmp     ?_041

?_040:  call    incorrect_flag_exception
?_041:  leave
        ret

main:   ; Main function.
        lea     ecx, [esp+4H]
        and     esp, 0FFFFFFF0H
        push    dword [ecx-4H]
        push    ebp
        mov     ebp, esp
        push    ecx
        sub     esp, 240052
        mov     eax, ecx
        mov     edx, dword [eax+4H]
        mov     dword [ebp-3A9ACH], edx
        mov     ecx, dword [gs:14H]
        mov     dword [ebp-0CH], ecx
        xor     ecx, ecx
        cmp     dword [eax], 5
        jz      ?_042
        call    invalid_parameters_list_exception
        mov     eax, 4294967295
        jmp     ?_043

?_042:  call    clock
        mov     dword [ebp-3A99CH], eax
        sub     esp, 12
        push    ?_072
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_073
        call    puts
        add     esp, 16
        sub     esp, 12
        push    ?_074
        call    puts
        add     esp, 16
        sub     esp, 4
        push    dword [ebp-3A9ACH]
        lea     eax, [ebp-3A9A0H]
        push    eax
        lea     eax, [ebp-3A98CH]
        push    eax
        call    fill_container
        add     esp, 16
        sub     esp, 12
        push    ?_075
        call    puts
        add     esp, 16
        mov     eax, dword [ebp-3A9ACH]
        add     eax, 12
        mov     eax, dword [eax]
        sub     esp, 8
        push    ?_076
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-3A998H], eax
        mov     eax, dword [ebp-3A9ACH]
        add     eax, 16
        mov     eax, dword [eax]
        sub     esp, 8
        push    ?_076
        push    eax
        call    fopen
        add     esp, 16
        mov     dword [ebp-3A994H], eax
        mov     eax, dword [ebp-3A9A0H]
        sub     esp, 4
        push    eax
        lea     eax, [ebp-3A98CH]
        push    eax
        push    dword [ebp-3A998H]
        call    write_data
        add     esp, 16
        sub     esp, 12
        push    ?_077
        call    puts
        add     esp, 16
        mov     eax, dword [ebp-3A9A0H]
        sub     esp, 8
        push    eax
        lea     eax, [ebp-3A98CH]
        push    eax
        call    sort_data
        add     esp, 16
        sub     esp, 12
        push    ?_078
        call    puts
        add     esp, 16
        mov     eax, dword [ebp-3A9A0H]
        sub     esp, 4
        push    eax
        lea     eax, [ebp-3A98CH]
        push    eax
        push    dword [ebp-3A994H]
        call    write_data
        add     esp, 16
        sub     esp, 12
        push    ?_079
        call    puts
        add     esp, 16
        call    clock
        mov     dword [ebp-3A990H], eax
        mov     eax, dword [ebp-3A990H]
        sub     eax, dword [ebp-3A99CH]
        mov     dword [ebp-3A9B0H], eax
        fild    dword [ebp-3A9B0H]
        fld     qword [?_087]
        fdivp   st1, st(0)
        sub     esp, 4
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    ?_080
        call    printf
        add     esp, 16
        sub     esp, 12
        push    ?_081
        call    puts
        add     esp, 16
        mov     eax, 0
?_043:  mov     edx, dword [ebp-0CH]
        xor     edx, dword [gs:14H]
        jz      ?_044
        call    __stack_chk_fail
?_044:  mov     ecx, dword [ebp-4H]
        leave
        lea     esp, [ecx-4H]
        ret


SECTION .data   align=1 noexecute


SECTION .bss    align=1 noexecute


SECTION .rodata align=8 noexecute

?_045:
        db 25H, 64H, 00H, 00H

?_046:
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 74H
        db 68H, 65H, 20H, 72H, 61H, 64H, 69H, 75H
        db 73H, 20H, 6DH, 75H, 73H, 74H, 20H, 62H
        db 65H, 20H, 67H, 72H, 65H, 61H, 74H, 65H
        db 72H, 20H, 74H, 68H, 65H, 6EH, 20H, 30H
        db 2EH, 00H

?_047:
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H
        db 72H, 61H, 64H, 69H, 75H, 73H, 20H, 69H
        db 73H, 20H, 31H, 2EH, 00H, 00H

?_048:
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 74H
        db 68H, 65H, 20H, 73H, 69H, 64H, 65H, 20H
        db 6DH, 75H, 73H, 74H, 20H, 62H, 65H, 20H
        db 67H, 72H, 65H, 61H, 74H, 65H, 72H, 20H
        db 74H, 68H, 65H, 6EH, 20H, 30H, 2EH, 00H

?_049:
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H
        db 73H, 69H, 64H, 65H, 20H, 69H, 73H, 20H
        db 31H, 2EH, 00H

?_050:
        db 25H, 64H, 20H, 25H, 64H, 20H, 25H, 64H
        db 00H

?_051:
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 61H
        db 6CH, 6CH, 20H, 73H, 69H, 64H, 65H, 73H
        db 20H, 6DH, 75H, 73H, 74H, 20H, 62H, 65H
        db 20H, 67H, 72H, 65H, 61H, 74H, 65H, 72H
        db 20H, 74H, 68H, 65H, 6EH, 20H, 30H, 2EH
        db 00H

?_052:
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H
        db 73H, 69H, 64H, 65H, 73H, 20H, 69H, 73H
        db 20H, 31H, 2EH, 00H

?_053:
        db 25H, 64H, 20H, 25H, 6CH, 66H, 00H

?_054:
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H
        db 74H, 20H, 74H, 79H, 70H, 65H, 20H, 6FH
        db 66H, 20H, 73H, 68H, 61H, 70H, 65H, 2EH
        db 20H, 25H, 64H, 00H

?_055:
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H
        db 74H, 20H, 74H, 79H, 70H, 65H, 20H, 6FH
        db 66H, 20H, 73H, 68H, 61H, 70H, 65H, 2EH
        db 00H, 00H, 00H, 00H

?_056:
        db 53H, 50H, 48H, 45H, 52H, 45H, 0AH, 09H
        db 54H, 68H, 65H, 20H, 73H, 70H, 68H, 65H
        db 72H, 65H, 20H, 77H, 69H, 74H, 68H, 20H
        db 74H, 68H, 65H, 20H, 72H, 61H, 64H, 69H
        db 75H, 73H, 20H, 69H, 73H, 20H, 25H, 64H
        db 2EH, 0AH, 09H, 54H, 68H, 65H, 20H, 64H
        db 65H, 6EH, 73H, 69H, 74H, 79H, 20H, 69H
        db 73H, 20H, 25H, 6CH, 66H, 2EH, 0AH, 09H
        db 54H, 68H, 65H, 20H, 73H, 75H, 72H, 66H
        db 61H, 63H, 65H, 20H, 61H, 72H, 65H, 61H
        db 20H, 69H, 73H, 20H, 25H, 6CH, 66H, 2EH
        db 0AH, 00H, 00H, 00H

?_057:
        db 54H, 45H, 54H, 52H, 41H, 48H, 45H, 44H
        db 52H, 4FH, 4EH, 0AH, 09H, 54H, 68H, 65H
        db 20H, 74H, 65H, 74H, 72H, 61H, 68H, 65H
        db 64H, 72H, 6FH, 6EH, 20H, 77H, 69H, 74H
        db 68H, 20H, 74H, 68H, 65H, 20H, 73H, 69H
        db 64H, 65H, 20H, 25H, 64H, 2EH, 0AH, 09H
        db 54H, 68H, 65H, 20H, 64H, 65H, 6EH, 73H
        db 69H, 74H, 79H, 20H, 69H, 73H, 20H, 25H
        db 6CH, 66H, 2EH, 0AH, 09H, 54H, 68H, 65H
        db 20H, 73H, 75H, 72H, 66H, 61H, 63H, 65H
        db 20H, 61H, 72H, 65H, 61H, 20H, 69H, 73H
        db 20H, 25H, 6CH, 66H, 2EH, 0AH, 00H, 00H

?_058:
        db 50H, 41H, 52H, 41H, 4CH, 4CH, 45H, 4CH
        db 45H, 50H, 49H, 50H, 45H, 44H, 0AH, 09H
        db 54H, 68H, 65H, 20H, 70H, 61H, 72H, 61H
        db 6CH, 6CH, 65H, 6CH, 65H, 70H, 69H, 70H
        db 65H, 64H, 20H, 77H, 69H, 74H, 68H, 20H
        db 74H, 68H, 65H, 20H, 73H, 69H, 64H, 65H
        db 73H, 20H, 78H, 3AH, 20H, 25H, 64H, 20H
        db 79H, 3AH, 20H, 25H, 64H, 20H, 7AH, 3AH
        db 20H, 25H, 64H, 2EH, 0AH, 09H, 54H, 68H
        db 65H, 20H, 64H, 65H, 6EH, 73H, 69H, 74H
        db 79H, 20H, 69H, 73H, 20H, 25H, 6CH, 66H
        db 2EH, 0AH, 09H, 54H, 68H, 65H, 20H, 73H
        db 75H, 72H, 66H, 61H, 63H, 65H, 20H, 61H
        db 72H, 65H, 61H, 20H, 69H, 73H, 20H, 25H
        db 64H, 2EH, 0AH, 00H

?_059:
        db 54H, 68H, 65H, 72H, 65H, 20H, 61H, 72H
        db 65H, 20H, 25H, 64H, 20H, 73H, 68H, 61H
        db 70H, 65H, 73H, 20H, 69H, 6EH, 20H, 74H
        db 68H, 65H, 20H, 63H, 6FH, 6EH, 74H, 61H
        db 69H, 6EH, 65H, 72H, 2EH, 0AH, 0AH, 00H

?_060:
        db 25H, 64H, 20H, 20H, 2DH, 2DH, 2DH, 2DH
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 20H, 20H
        db 00H

?_061:
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H
        db 69H, 6EH, 70H, 75H, 74H, 20H, 70H, 61H
        db 72H, 61H, 6DH, 65H, 74H, 65H, 72H, 73H
        db 21H, 00H

?_062:
        db 45H, 78H, 70H, 65H, 63H, 74H, 65H, 64H
        db 3AH, 00H, 00H, 00H, 00H

?_063:
        db 09H, 2DH, 69H, 20H, 3CH, 69H, 6EH, 70H
        db 75H, 74H, 5FH, 66H, 69H, 6CH, 65H, 3EH
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H
        db 6CH, 65H, 5FH, 64H, 61H, 74H, 61H, 3EH
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H
        db 6CH, 65H, 5FH, 73H, 6FH, 72H, 74H, 65H
        db 64H, 5FH, 64H, 61H, 74H, 61H, 3EH, 20H
        db 00H

?_064:
        db 09H, 4FH, 72H, 3AH, 20H, 00H, 00H

?_065:
        db 09H, 2DH, 72H, 20H, 3CH, 69H, 6EH, 70H
        db 75H, 74H, 5FH, 66H, 69H, 6CH, 65H, 3EH
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H
        db 6CH, 65H, 5FH, 64H, 61H, 74H, 61H, 3EH
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H
        db 6CH, 65H, 5FH, 73H, 6FH, 72H, 74H, 65H
        db 64H, 5FH, 64H, 61H, 74H, 61H, 3EH, 00H

?_066:
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H
        db 66H, 6CH, 61H, 67H, 73H, 21H, 00H

?_067:
        db 09H, 2DH, 69H, 20H, 66H, 6FH, 72H, 20H
        db 69H, 6EH, 70H, 75H, 74H, 20H, 64H, 61H
        db 74H, 61H, 20H, 00H

?_068:
        db 09H, 2DH, 72H, 20H, 66H, 6FH, 72H, 20H
        db 63H, 72H, 65H, 61H, 74H, 65H, 20H, 72H
        db 61H, 6EH, 64H, 6FH, 6DH, 20H, 64H, 61H
        db 74H, 61H, 00H

?_069:
        db 72H, 00H

?_070:
        db 2DH, 69H, 00H

?_071:
        db 2DH, 72H, 00H

?_072:
        db 54H, 68H, 65H, 20H, 70H, 72H, 6FH, 67H
        db 72H, 61H, 6DH, 20H, 77H, 61H, 73H, 20H
        db 73H, 74H, 61H, 72H, 74H, 2EH, 0AH, 00H

?_073:
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H
        db 73H, 20H, 63H, 72H, 65H, 61H, 74H, 65H
        db 64H, 2EH, 00H

?_074:
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H
        db 73H, 20H, 69H, 6EH, 69H, 74H, 65H, 64H
        db 2EH, 00H

?_075:
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H
        db 73H, 20H, 66H, 69H, 6CH, 6CH, 65H, 64H
        db 2EH, 0AH, 00H

?_076:
        db 77H, 00H

?_077:
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H
        db 20H, 77H, 61H, 73H, 20H, 70H, 72H, 69H
        db 6EH, 74H, 65H, 64H, 20H, 69H, 6EH, 74H
        db 6FH, 20H, 66H, 69H, 72H, 73H, 74H, 20H
        db 73H, 74H, 72H, 65H, 61H, 6DH, 2EH, 00H

?_078:
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H
        db 20H, 77H, 61H, 73H, 20H, 73H, 6FH, 72H
        db 74H, 65H, 64H, 2EH, 00H, 00H, 00H, 00H

?_079:
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H
        db 20H, 77H, 61H, 73H, 20H, 70H, 72H, 69H
        db 6EH, 74H, 65H, 64H, 20H, 69H, 6EH, 74H
        db 6FH, 20H, 73H, 65H, 63H, 6FH, 6EH, 64H
        db 20H, 73H, 74H, 72H, 65H, 61H, 6DH, 2EH
        db 0AH, 00H

?_080:
        db 54H, 69H, 6DH, 65H, 20H, 69H, 73H, 20H
        db 25H, 66H, 20H, 73H, 65H, 63H, 2EH, 00H

?_081:
        db 54H, 68H, 65H, 20H, 70H, 72H, 6FH, 67H
        db 72H, 61H, 6DH, 20H, 77H, 61H, 73H, 20H
        db 65H, 6EH, 64H, 2EH, 0AH, 00H, 00H, 00H
        db 00H, 00H

?_082:  dq 408F400000000000H

?_083:  dq 4059000000000000H

?_084:  dq 400921FAFC8B007AH

?_085:  dq 4010000000000000H

?_086:  dq 3FFBB67AE8584CAAH

?_087:  dq 412E848000000000H


