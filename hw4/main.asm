; Disassembly of file: main.o
; Fri Nov 26 16:54:22 2021
; Type: ELF32
; Syntax: NASM
; Instruction set: Pentium Pro, 80x87


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

extern clock                                            ; near
extern strcmp                                           ; near
extern fopen                                            ; near
extern fputc                                            ; near
extern fprintf                                          ; near
extern rand                                             ; near
extern fclose                                           ; near
extern exit                                             ; near
extern printf                                           ; near
extern __stack_chk_fail                                 ; near
extern puts                                             ; near
extern __isoc99_fscanf                                  ; near


SECTION .text   align=1 execute                         ; section number 1, code

read_sphere:; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 40                                 ; 0003 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0006 _ 8B. 45, 08
        mov     dword [ebp-1CH], eax                    ; 0009 _ 89. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 000C _ 8B. 45, 0C
        mov     dword [ebp-20H], eax                    ; 000F _ 89. 45, E0
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0012 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0018 _ 89. 45, F4
        xor     eax, eax                                ; 001B _ 31. C0
        sub     esp, 4                                  ; 001D _ 83. EC, 04
        lea     eax, [ebp-10H]                          ; 0020 _ 8D. 45, F0
        push    eax                                     ; 0023 _ 50
        push    ?_045                                   ; 0024 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 0029 _ FF. 75, E4
        call    __isoc99_fscanf                         ; 002C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0031 _ 83. C4, 10
        mov     eax, dword [ebp-10H]                    ; 0034 _ 8B. 45, F0
        test    eax, eax                                ; 0037 _ 85. C0
        jg      ?_001                                   ; 0039 _ 7F, 27
        sub     esp, 12                                 ; 003B _ 83. EC, 0C
        push    ?_046                                   ; 003E _ 68, 00000004(d)
        call    puts                                    ; 0043 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0048 _ 83. C4, 10
        sub     esp, 12                                 ; 004B _ 83. EC, 0C
        push    ?_047                                   ; 004E _ 68, 00000036(d)
        call    puts                                    ; 0053 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0058 _ 83. C4, 10
        mov     dword [ebp-10H], 1                      ; 005B _ C7. 45, F0, 00000001
?_001:  mov     edx, dword [ebp-10H]                    ; 0062 _ 8B. 55, F0
        mov     eax, dword [ebp-20H]                    ; 0065 _ 8B. 45, E0
        mov     dword [eax+0CH], edx                    ; 0068 _ 89. 50, 0C
        nop                                             ; 006B _ 90
        mov     eax, dword [ebp-0CH]                    ; 006C _ 8B. 45, F4
; Note: Absolute memory address without relocation
        xor     eax, dword [gs:14H]                     ; 006F _ 65: 33. 05, 00000014
        jz      ?_002                                   ; 0076 _ 74, 05
        call    __stack_chk_fail                        ; 0078 _ E8, FFFFFFFC(rel)
?_002:  leave                                           ; 007D _ C9
        ret                                             ; 007E _ C3
; read_sphere End of function

read_tetrahedron:; Function begin
        push    ebp                                     ; 007F _ 55
        mov     ebp, esp                                ; 0080 _ 89. E5
        sub     esp, 40                                 ; 0082 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0085 _ 8B. 45, 08
        mov     dword [ebp-1CH], eax                    ; 0088 _ 89. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 008B _ 8B. 45, 0C
        mov     dword [ebp-20H], eax                    ; 008E _ 89. 45, E0
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0091 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0097 _ 89. 45, F4
        xor     eax, eax                                ; 009A _ 31. C0
        sub     esp, 4                                  ; 009C _ 83. EC, 04
        lea     eax, [ebp-10H]                          ; 009F _ 8D. 45, F0
        push    eax                                     ; 00A2 _ 50
        push    ?_045                                   ; 00A3 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 00A8 _ FF. 75, E4
        call    __isoc99_fscanf                         ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B0 _ 83. C4, 10
        mov     eax, dword [ebp-10H]                    ; 00B3 _ 8B. 45, F0
        test    eax, eax                                ; 00B6 _ 85. C0
        jg      ?_003                                   ; 00B8 _ 7F, 27
        sub     esp, 12                                 ; 00BA _ 83. EC, 0C
        push    ?_048                                   ; 00BD _ 68, 0000004C(d)
        call    puts                                    ; 00C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C7 _ 83. C4, 10
        sub     esp, 12                                 ; 00CA _ 83. EC, 0C
        push    ?_049                                   ; 00CD _ 68, 0000007C(d)
        call    puts                                    ; 00D2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D7 _ 83. C4, 10
        mov     dword [ebp-10H], 1                      ; 00DA _ C7. 45, F0, 00000001
?_003:  mov     edx, dword [ebp-10H]                    ; 00E1 _ 8B. 55, F0
        mov     eax, dword [ebp-20H]                    ; 00E4 _ 8B. 45, E0
        mov     dword [eax+0CH], edx                    ; 00E7 _ 89. 50, 0C
        nop                                             ; 00EA _ 90
        mov     eax, dword [ebp-0CH]                    ; 00EB _ 8B. 45, F4
; Note: Absolute memory address without relocation
        xor     eax, dword [gs:14H]                     ; 00EE _ 65: 33. 05, 00000014
        jz      ?_004                                   ; 00F5 _ 74, 05
        call    __stack_chk_fail                        ; 00F7 _ E8, FFFFFFFC(rel)
?_004:  leave                                           ; 00FC _ C9
        ret                                             ; 00FD _ C3
; read_tetrahedron End of function

read_parallelepiped:; Function begin
        push    ebp                                     ; 00FE _ 55
        mov     ebp, esp                                ; 00FF _ 89. E5
        sub     esp, 40                                 ; 0101 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0104 _ 8B. 45, 08
        mov     dword [ebp-1CH], eax                    ; 0107 _ 89. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 010A _ 8B. 45, 0C
        mov     dword [ebp-20H], eax                    ; 010D _ 89. 45, E0
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0110 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0116 _ 89. 45, F4
        xor     eax, eax                                ; 0119 _ 31. C0
        sub     esp, 12                                 ; 011B _ 83. EC, 0C
        lea     eax, [ebp-10H]                          ; 011E _ 8D. 45, F0
        push    eax                                     ; 0121 _ 50
        lea     eax, [ebp-14H]                          ; 0122 _ 8D. 45, EC
        push    eax                                     ; 0125 _ 50
        lea     eax, [ebp-18H]                          ; 0126 _ 8D. 45, E8
        push    eax                                     ; 0129 _ 50
        push    ?_050                                   ; 012A _ 68, 0000008F(d)
        push    dword [ebp-1CH]                         ; 012F _ FF. 75, E4
        call    __isoc99_fscanf                         ; 0132 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0137 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 013A _ 8B. 45, E8
        test    eax, eax                                ; 013D _ 85. C0
        jle     ?_005                                   ; 013F _ 7E, 0E
        mov     eax, dword [ebp-14H]                    ; 0141 _ 8B. 45, EC
        test    eax, eax                                ; 0144 _ 85. C0
        jle     ?_005                                   ; 0146 _ 7E, 07
        mov     eax, dword [ebp-10H]                    ; 0148 _ 8B. 45, F0
        test    eax, eax                                ; 014B _ 85. C0
        jg      ?_006                                   ; 014D _ 7F, 35
?_005:  sub     esp, 12                                 ; 014F _ 83. EC, 0C
        push    ?_051                                   ; 0152 _ 68, 00000098(d)
        call    puts                                    ; 0157 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 015C _ 83. C4, 10
        sub     esp, 12                                 ; 015F _ 83. EC, 0C
        push    ?_052                                   ; 0162 _ 68, 000000C9(d)
        call    puts                                    ; 0167 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 016C _ 83. C4, 10
        mov     dword [ebp-18H], 1                      ; 016F _ C7. 45, E8, 00000001
        mov     dword [ebp-14H], 1                      ; 0176 _ C7. 45, EC, 00000001
        mov     dword [ebp-10H], 1                      ; 017D _ C7. 45, F0, 00000001
?_006:  mov     edx, dword [ebp-18H]                    ; 0184 _ 8B. 55, E8
        mov     eax, dword [ebp-20H]                    ; 0187 _ 8B. 45, E0
        mov     dword [eax+0CH], edx                    ; 018A _ 89. 50, 0C
        mov     edx, dword [ebp-14H]                    ; 018D _ 8B. 55, EC
        mov     eax, dword [ebp-20H]                    ; 0190 _ 8B. 45, E0
        mov     dword [eax+10H], edx                    ; 0193 _ 89. 50, 10
        mov     edx, dword [ebp-10H]                    ; 0196 _ 8B. 55, F0
        mov     eax, dword [ebp-20H]                    ; 0199 _ 8B. 45, E0
        mov     dword [eax+14H], edx                    ; 019C _ 89. 50, 14
        nop                                             ; 019F _ 90
        mov     eax, dword [ebp-0CH]                    ; 01A0 _ 8B. 45, F4
; Note: Absolute memory address without relocation
        xor     eax, dword [gs:14H]                     ; 01A3 _ 65: 33. 05, 00000014
        jz      ?_007                                   ; 01AA _ 74, 05
        call    __stack_chk_fail                        ; 01AC _ E8, FFFFFFFC(rel)
?_007:  leave                                           ; 01B1 _ C9
        ret                                             ; 01B2 _ C3
; read_parallelepiped End of function

read_data:; Function begin
        push    ebp                                     ; 01B3 _ 55
        mov     ebp, esp                                ; 01B4 _ 89. E5
        sub     esp, 40                                 ; 01B6 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 01B9 _ 8B. 45, 08
        mov     dword [ebp-1CH], eax                    ; 01BC _ 89. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 01BF _ 8B. 45, 0C
        mov     dword [ebp-20H], eax                    ; 01C2 _ 89. 45, E0
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 01C5 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 01CB _ 89. 45, F4
        xor     eax, eax                                ; 01CE _ 31. C0
        sub     esp, 4                                  ; 01D0 _ 83. EC, 04
        lea     eax, [ebp-18H]                          ; 01D3 _ 8D. 45, E8
        push    eax                                     ; 01D6 _ 50
        push    ?_045                                   ; 01D7 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 01DC _ FF. 75, E4
        call    __isoc99_fscanf                         ; 01DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01E4 _ 83. C4, 10
        mov     edx, dword [ebp-18H]                    ; 01E7 _ 8B. 55, E8
        mov     eax, dword [ebp+10H]                    ; 01EA _ 8B. 45, 10
        cmp     edx, eax                                ; 01ED _ 39. C2
        cmovle  eax, edx                                ; 01EF _ 0F 4E. C2
        mov     dword [ebp-10H], eax                    ; 01F2 _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 01F5 _ C7. 45, EC, 00000000
        jmp     ?_013                                   ; 01FC _ E9, 00000103

?_008:  mov     edx, dword [ebp-14H]                    ; 0201 _ 8B. 55, EC
        mov     eax, edx                                ; 0204 _ 89. D0
        add     eax, eax                                ; 0206 _ 01. C0
        add     eax, edx                                ; 0208 _ 01. D0
        shl     eax, 3                                  ; 020A _ C1. E0, 03
        mov     edx, eax                                ; 020D _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 020F _ 8B. 45, E0
        add     eax, edx                                ; 0212 _ 01. D0
        mov     ecx, eax                                ; 0214 _ 89. C1
        mov     edx, dword [ebp-14H]                    ; 0216 _ 8B. 55, EC
        mov     eax, edx                                ; 0219 _ 89. D0
        add     eax, eax                                ; 021B _ 01. C0
        add     eax, edx                                ; 021D _ 01. D0
        shl     eax, 3                                  ; 021F _ C1. E0, 03
        mov     edx, eax                                ; 0222 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0224 _ 8B. 45, E0
        add     eax, edx                                ; 0227 _ 01. D0
        add     eax, 8                                  ; 0229 _ 83. C0, 08
        push    ecx                                     ; 022C _ 51
        push    eax                                     ; 022D _ 50
        push    ?_053                                   ; 022E _ 68, 000000DD(d)
        push    dword [ebp-1CH]                         ; 0233 _ FF. 75, E4
        call    __isoc99_fscanf                         ; 0236 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 023B _ 83. C4, 10
        mov     edx, dword [ebp-14H]                    ; 023E _ 8B. 55, EC
        mov     eax, edx                                ; 0241 _ 89. D0
        add     eax, eax                                ; 0243 _ 01. C0
        add     eax, edx                                ; 0245 _ 01. D0
        shl     eax, 3                                  ; 0247 _ C1. E0, 03
        mov     edx, eax                                ; 024A _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 024C _ 8B. 45, E0
        add     eax, edx                                ; 024F _ 01. D0
        mov     eax, dword [eax+8H]                     ; 0251 _ 8B. 40, 08
        cmp     eax, 2                                  ; 0254 _ 83. F8, 02
        jz      ?_009                                   ; 0257 _ 74, 2E
        cmp     eax, 3                                  ; 0259 _ 83. F8, 03
        jz      ?_010                                   ; 025C _ 74, 4D
        cmp     eax, 1                                  ; 025E _ 83. F8, 01
        jnz     ?_011                                   ; 0261 _ 75, 6C
        mov     edx, dword [ebp-14H]                    ; 0263 _ 8B. 55, EC
        mov     eax, edx                                ; 0266 _ 89. D0
        add     eax, eax                                ; 0268 _ 01. C0
        add     eax, edx                                ; 026A _ 01. D0
        shl     eax, 3                                  ; 026C _ C1. E0, 03
        mov     edx, eax                                ; 026F _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0271 _ 8B. 45, E0
        add     eax, edx                                ; 0274 _ 01. D0
        sub     esp, 8                                  ; 0276 _ 83. EC, 08
        push    eax                                     ; 0279 _ 50
        push    dword [ebp-1CH]                         ; 027A _ FF. 75, E4
        call    read_sphere                             ; 027D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0282 _ 83. C4, 10
        jmp     ?_012                                   ; 0285 _ EB, 79

?_009:  mov     edx, dword [ebp-14H]                    ; 0287 _ 8B. 55, EC
        mov     eax, edx                                ; 028A _ 89. D0
        add     eax, eax                                ; 028C _ 01. C0
        add     eax, edx                                ; 028E _ 01. D0
        shl     eax, 3                                  ; 0290 _ C1. E0, 03
        mov     edx, eax                                ; 0293 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0295 _ 8B. 45, E0
        add     eax, edx                                ; 0298 _ 01. D0
        sub     esp, 8                                  ; 029A _ 83. EC, 08
        push    eax                                     ; 029D _ 50
        push    dword [ebp-1CH]                         ; 029E _ FF. 75, E4
        call    read_parallelepiped                     ; 02A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A6 _ 83. C4, 10
        jmp     ?_012                                   ; 02A9 _ EB, 55

?_010:  mov     edx, dword [ebp-14H]                    ; 02AB _ 8B. 55, EC
        mov     eax, edx                                ; 02AE _ 89. D0
        add     eax, eax                                ; 02B0 _ 01. C0
        add     eax, edx                                ; 02B2 _ 01. D0
        shl     eax, 3                                  ; 02B4 _ C1. E0, 03
        mov     edx, eax                                ; 02B7 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 02B9 _ 8B. 45, E0
        add     eax, edx                                ; 02BC _ 01. D0
        sub     esp, 8                                  ; 02BE _ 83. EC, 08
        push    eax                                     ; 02C1 _ 50
        push    dword [ebp-1CH]                         ; 02C2 _ FF. 75, E4
        call    read_tetrahedron                        ; 02C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02CA _ 83. C4, 10
        jmp     ?_012                                   ; 02CD _ EB, 31

?_011:  mov     edx, dword [ebp-14H]                    ; 02CF _ 8B. 55, EC
        mov     eax, edx                                ; 02D2 _ 89. D0
        add     eax, eax                                ; 02D4 _ 01. C0
        add     eax, edx                                ; 02D6 _ 01. D0
        shl     eax, 3                                  ; 02D8 _ C1. E0, 03
        mov     edx, eax                                ; 02DB _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 02DD _ 8B. 45, E0
        add     eax, edx                                ; 02E0 _ 01. D0
        mov     eax, dword [eax+8H]                     ; 02E2 _ 8B. 40, 08
        sub     esp, 8                                  ; 02E5 _ 83. EC, 08
        push    eax                                     ; 02E8 _ 50
        push    ?_054                                   ; 02E9 _ 68, 000000E4(d)
        call    printf                                  ; 02EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F3 _ 83. C4, 10
        sub     esp, 12                                 ; 02F6 _ 83. EC, 0C
        push    -2                                      ; 02F9 _ 6A, FE
        call    exit                                    ; 02FB _ E8, FFFFFFFC(rel)
?_012:  add     dword [ebp-14H], 1                      ; 0300 _ 83. 45, EC, 01
?_013:  mov     eax, dword [ebp-18H]                    ; 0304 _ 8B. 45, E8
        cmp     dword [ebp-14H], eax                    ; 0307 _ 39. 45, EC
        jl      ?_008                                   ; 030A _ 0F 8C, FFFFFEF1
        sub     esp, 12                                 ; 0310 _ 83. EC, 0C
        push    dword [ebp-1CH]                         ; 0313 _ FF. 75, E4
        call    fclose                                  ; 0316 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031B _ 83. C4, 10
        mov     eax, dword [ebp-10H]                    ; 031E _ 8B. 45, F0
        mov     ecx, dword [ebp-0CH]                    ; 0321 _ 8B. 4D, F4
; Note: Absolute memory address without relocation
        xor     ecx, dword [gs:14H]                     ; 0324 _ 65: 33. 0D, 00000014
        jz      ?_014                                   ; 032B _ 74, 05
        call    __stack_chk_fail                        ; 032D _ E8, FFFFFFFC(rel)
?_014:  leave                                           ; 0332 _ C9
        ret                                             ; 0333 _ C3
; read_data End of function

rnd_sphere:; Function begin
        push    ebp                                     ; 0334 _ 55
        mov     ebp, esp                                ; 0335 _ 89. E5
        sub     esp, 8                                  ; 0337 _ 83. EC, 08
        call    rand                                    ; 033A _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 033F _ 89. C1
        mov     edx, 2201224481                         ; 0341 _ BA, 83340521
        mov     eax, ecx                                ; 0346 _ 89. C8
        imul    edx                                     ; 0348 _ F7. EA
        lea     eax, [edx+ecx]                          ; 034A _ 8D. 04 0A
        sar     eax, 9                                  ; 034D _ C1. F8, 09
        mov     edx, eax                                ; 0350 _ 89. C2
        mov     eax, ecx                                ; 0352 _ 89. C8
        sar     eax, 31                                 ; 0354 _ C1. F8, 1F
        sub     edx, eax                                ; 0357 _ 29. C2
        mov     eax, edx                                ; 0359 _ 89. D0
        imul    eax, eax, 999                           ; 035B _ 69. C0, 000003E7
        sub     ecx, eax                                ; 0361 _ 29. C1
        mov     eax, ecx                                ; 0363 _ 89. C8
        lea     edx, [eax+1H]                           ; 0365 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0368 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 036B _ 89. 50, 0C
        nop                                             ; 036E _ 90
        leave                                           ; 036F _ C9
        ret                                             ; 0370 _ C3
; rnd_sphere End of function

rnd_tetrahedron:; Function begin
        push    ebp                                     ; 0371 _ 55
        mov     ebp, esp                                ; 0372 _ 89. E5
        sub     esp, 8                                  ; 0374 _ 83. EC, 08
        call    rand                                    ; 0377 _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 037C _ 89. C1
        mov     edx, 2201224481                         ; 037E _ BA, 83340521
        mov     eax, ecx                                ; 0383 _ 89. C8
        imul    edx                                     ; 0385 _ F7. EA
        lea     eax, [edx+ecx]                          ; 0387 _ 8D. 04 0A
        sar     eax, 9                                  ; 038A _ C1. F8, 09
        mov     edx, eax                                ; 038D _ 89. C2
        mov     eax, ecx                                ; 038F _ 89. C8
        sar     eax, 31                                 ; 0391 _ C1. F8, 1F
        sub     edx, eax                                ; 0394 _ 29. C2
        mov     eax, edx                                ; 0396 _ 89. D0
        imul    eax, eax, 999                           ; 0398 _ 69. C0, 000003E7
        sub     ecx, eax                                ; 039E _ 29. C1
        mov     eax, ecx                                ; 03A0 _ 89. C8
        lea     edx, [eax+1H]                           ; 03A2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 03A5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 03A8 _ 89. 50, 0C
        nop                                             ; 03AB _ 90
        leave                                           ; 03AC _ C9
        ret                                             ; 03AD _ C3
; rnd_tetrahedron End of function

rnd_parallelepiped:; Function begin
        push    ebp                                     ; 03AE _ 55
        mov     ebp, esp                                ; 03AF _ 89. E5
        sub     esp, 8                                  ; 03B1 _ 83. EC, 08
        call    rand                                    ; 03B4 _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 03B9 _ 89. C1
        mov     edx, 2201224481                         ; 03BB _ BA, 83340521
        mov     eax, ecx                                ; 03C0 _ 89. C8
        imul    edx                                     ; 03C2 _ F7. EA
        lea     eax, [edx+ecx]                          ; 03C4 _ 8D. 04 0A
        sar     eax, 9                                  ; 03C7 _ C1. F8, 09
        mov     edx, eax                                ; 03CA _ 89. C2
        mov     eax, ecx                                ; 03CC _ 89. C8
        sar     eax, 31                                 ; 03CE _ C1. F8, 1F
        sub     edx, eax                                ; 03D1 _ 29. C2
        mov     eax, edx                                ; 03D3 _ 89. D0
        imul    eax, eax, 999                           ; 03D5 _ 69. C0, 000003E7
        sub     ecx, eax                                ; 03DB _ 29. C1
        mov     eax, ecx                                ; 03DD _ 89. C8
        lea     edx, [eax+1H]                           ; 03DF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 03E2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 03E5 _ 89. 50, 0C
        call    rand                                    ; 03E8 _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 03ED _ 89. C1
        mov     edx, 2201224481                         ; 03EF _ BA, 83340521
        mov     eax, ecx                                ; 03F4 _ 89. C8
        imul    edx                                     ; 03F6 _ F7. EA
        lea     eax, [edx+ecx]                          ; 03F8 _ 8D. 04 0A
        sar     eax, 9                                  ; 03FB _ C1. F8, 09
        mov     edx, eax                                ; 03FE _ 89. C2
        mov     eax, ecx                                ; 0400 _ 89. C8
        sar     eax, 31                                 ; 0402 _ C1. F8, 1F
        sub     edx, eax                                ; 0405 _ 29. C2
        mov     eax, edx                                ; 0407 _ 89. D0
        imul    eax, eax, 999                           ; 0409 _ 69. C0, 000003E7
        sub     ecx, eax                                ; 040F _ 29. C1
        mov     eax, ecx                                ; 0411 _ 89. C8
        lea     edx, [eax+1H]                           ; 0413 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0416 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0419 _ 89. 50, 10
        call    rand                                    ; 041C _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 0421 _ 89. C1
        mov     edx, 2201224481                         ; 0423 _ BA, 83340521
        mov     eax, ecx                                ; 0428 _ 89. C8
        imul    edx                                     ; 042A _ F7. EA
        lea     eax, [edx+ecx]                          ; 042C _ 8D. 04 0A
        sar     eax, 9                                  ; 042F _ C1. F8, 09
        mov     edx, eax                                ; 0432 _ 89. C2
        mov     eax, ecx                                ; 0434 _ 89. C8
        sar     eax, 31                                 ; 0436 _ C1. F8, 1F
        sub     edx, eax                                ; 0439 _ 29. C2
        mov     eax, edx                                ; 043B _ 89. D0
        imul    eax, eax, 999                           ; 043D _ 69. C0, 000003E7
        sub     ecx, eax                                ; 0443 _ 29. C1
        mov     eax, ecx                                ; 0445 _ 89. C8
        lea     edx, [eax+1H]                           ; 0447 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 044A _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 044D _ 89. 50, 14
        nop                                             ; 0450 _ 90
        leave                                           ; 0451 _ C9
        ret                                             ; 0452 _ C3
; rnd_parallelepiped End of function

rnd_data:; Function begin
        push    ebp                                     ; 0453 _ 55
        mov     ebp, esp                                ; 0454 _ 89. E5
        push    ebx                                     ; 0456 _ 53
        sub     esp, 36                                 ; 0457 _ 83. EC, 24
        mov     eax, dword [ebp+8H]                     ; 045A _ 8B. 45, 08
        mov     dword [ebp-1CH], eax                    ; 045D _ 89. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 0460 _ 8B. 45, 0C
        mov     dword [ebp-20H], eax                    ; 0463 _ 89. 45, E0
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0466 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 046C _ 89. 45, F4
        xor     eax, eax                                ; 046F _ 31. C0
        sub     esp, 4                                  ; 0471 _ 83. EC, 04
        lea     eax, [ebp-18H]                          ; 0474 _ 8D. 45, E8
        push    eax                                     ; 0477 _ 50
        push    ?_045                                   ; 0478 _ 68, 00000000(d)
        push    dword [ebp-1CH]                         ; 047D _ FF. 75, E4
        call    __isoc99_fscanf                         ; 0480 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0485 _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0488 _ 8B. 45, E8
        test    eax, eax                                ; 048B _ 85. C0
        js      ?_015                                   ; 048D _ 78, 0D
        mov     edx, dword [ebp-18H]                    ; 048F _ 8B. 55, E8
        mov     eax, dword [ebp+10H]                    ; 0492 _ 8B. 45, 10
        cmp     edx, eax                                ; 0495 _ 39. C2
        cmovle  eax, edx                                ; 0497 _ 0F 4E. C2
        jmp     ?_016                                   ; 049A _ EB, 03

?_015:  mov     eax, dword [ebp+10H]                    ; 049C _ 8B. 45, 10
?_016:  mov     dword [ebp-10H], eax                    ; 049F _ 89. 45, F0
        mov     dword [ebp-14H], 0                      ; 04A2 _ C7. 45, EC, 00000000
        jmp     ?_022                                   ; 04A9 _ E9, 00000109

?_017:  mov     edx, dword [ebp-14H]                    ; 04AE _ 8B. 55, EC
        mov     eax, edx                                ; 04B1 _ 89. D0
        add     eax, eax                                ; 04B3 _ 01. C0
        add     eax, edx                                ; 04B5 _ 01. D0
        shl     eax, 3                                  ; 04B7 _ C1. E0, 03
        mov     edx, eax                                ; 04BA _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 04BC _ 8B. 45, E0
        lea     ebx, [edx+eax]                          ; 04BF _ 8D. 1C 02
        call    rand                                    ; 04C2 _ E8, FFFFFFFC(rel)
        mov     ecx, eax                                ; 04C7 _ 89. C1
        mov     edx, 1431655766                         ; 04C9 _ BA, 55555556
        mov     eax, ecx                                ; 04CE _ 89. C8
        imul    edx                                     ; 04D0 _ F7. EA
        mov     eax, ecx                                ; 04D2 _ 89. C8
        sar     eax, 31                                 ; 04D4 _ C1. F8, 1F
        sub     edx, eax                                ; 04D7 _ 29. C2
        mov     eax, edx                                ; 04D9 _ 89. D0
        add     eax, eax                                ; 04DB _ 01. C0
        add     eax, edx                                ; 04DD _ 01. D0
        sub     ecx, eax                                ; 04DF _ 29. C1
        mov     edx, ecx                                ; 04E1 _ 89. CA
        lea     eax, [edx+1H]                           ; 04E3 _ 8D. 42, 01
        mov     dword [ebx+8H], eax                     ; 04E6 _ 89. 43, 08
        mov     edx, dword [ebp-14H]                    ; 04E9 _ 8B. 55, EC
        mov     eax, edx                                ; 04EC _ 89. D0
        add     eax, eax                                ; 04EE _ 01. C0
        add     eax, edx                                ; 04F0 _ 01. D0
        shl     eax, 3                                  ; 04F2 _ C1. E0, 03
        mov     edx, eax                                ; 04F5 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 04F7 _ 8B. 45, E0
        lea     ebx, [edx+eax]                          ; 04FA _ 8D. 1C 02
        call    rand                                    ; 04FD _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], eax                    ; 0502 _ 89. 45, DC
        fild    dword [ebp-24H]                         ; 0505 _ DB. 45, DC
        fld     qword [?_082]                           ; 0508 _ DD. 05, 00000468(d)
        fmulp   st1, st(0)                              ; 050E _ DE. C9
        fld     qword [?_083]                           ; 0510 _ DD. 05, 00000470(d)
        fdivp   st1, st(0)                              ; 0516 _ DE. F9
        fstp    qword [ebx]                             ; 0518 _ DD. 1B
        mov     edx, dword [ebp-14H]                    ; 051A _ 8B. 55, EC
        mov     eax, edx                                ; 051D _ 89. D0
        add     eax, eax                                ; 051F _ 01. C0
        add     eax, edx                                ; 0521 _ 01. D0
        shl     eax, 3                                  ; 0523 _ C1. E0, 03
        mov     edx, eax                                ; 0526 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0528 _ 8B. 45, E0
        add     eax, edx                                ; 052B _ 01. D0
        mov     eax, dword [eax+8H]                     ; 052D _ 8B. 40, 08
        cmp     eax, 2                                  ; 0530 _ 83. F8, 02
        jz      ?_018                                   ; 0533 _ 74, 2B
        cmp     eax, 3                                  ; 0535 _ 83. F8, 03
        jz      ?_019                                   ; 0538 _ 74, 47
        cmp     eax, 1                                  ; 053A _ 83. F8, 01
        jnz     ?_020                                   ; 053D _ 75, 63
        mov     edx, dword [ebp-14H]                    ; 053F _ 8B. 55, EC
        mov     eax, edx                                ; 0542 _ 89. D0
        add     eax, eax                                ; 0544 _ 01. C0
        add     eax, edx                                ; 0546 _ 01. D0
        shl     eax, 3                                  ; 0548 _ C1. E0, 03
        mov     edx, eax                                ; 054B _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 054D _ 8B. 45, E0
        add     eax, edx                                ; 0550 _ 01. D0
        sub     esp, 12                                 ; 0552 _ 83. EC, 0C
        push    eax                                     ; 0555 _ 50
        call    rnd_sphere                              ; 0556 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 055B _ 83. C4, 10
        jmp     ?_021                                   ; 055E _ EB, 53

?_018:  mov     edx, dword [ebp-14H]                    ; 0560 _ 8B. 55, EC
        mov     eax, edx                                ; 0563 _ 89. D0
        add     eax, eax                                ; 0565 _ 01. C0
        add     eax, edx                                ; 0567 _ 01. D0
        shl     eax, 3                                  ; 0569 _ C1. E0, 03
        mov     edx, eax                                ; 056C _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 056E _ 8B. 45, E0
        add     eax, edx                                ; 0571 _ 01. D0
        sub     esp, 12                                 ; 0573 _ 83. EC, 0C
        push    eax                                     ; 0576 _ 50
        call    rnd_tetrahedron                         ; 0577 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 057C _ 83. C4, 10
        jmp     ?_021                                   ; 057F _ EB, 32

?_019:  mov     edx, dword [ebp-14H]                    ; 0581 _ 8B. 55, EC
        mov     eax, edx                                ; 0584 _ 89. D0
        add     eax, eax                                ; 0586 _ 01. C0
        add     eax, edx                                ; 0588 _ 01. D0
        shl     eax, 3                                  ; 058A _ C1. E0, 03
        mov     edx, eax                                ; 058D _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 058F _ 8B. 45, E0
        add     eax, edx                                ; 0592 _ 01. D0
        sub     esp, 12                                 ; 0594 _ 83. EC, 0C
        push    eax                                     ; 0597 _ 50
        call    rnd_parallelepiped                      ; 0598 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 059D _ 83. C4, 10
        jmp     ?_021                                   ; 05A0 _ EB, 11

?_020:  sub     esp, 12                                 ; 05A2 _ 83. EC, 0C
        push    ?_055                                   ; 05A5 _ 68, 00000100(d)
        call    printf                                  ; 05AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05AF _ 83. C4, 10
        nop                                             ; 05B2 _ 90
?_021:  add     dword [ebp-14H], 1                      ; 05B3 _ 83. 45, EC, 01
?_022:  mov     eax, dword [ebp-14H]                    ; 05B7 _ 8B. 45, EC
        cmp     eax, dword [ebp-10H]                    ; 05BA _ 3B. 45, F0
        jl      ?_017                                   ; 05BD _ 0F 8C, FFFFFEEB
        mov     eax, dword [ebp-10H]                    ; 05C3 _ 8B. 45, F0
        mov     ebx, dword [ebp-0CH]                    ; 05C6 _ 8B. 5D, F4
; Note: Absolute memory address without relocation
        xor     ebx, dword [gs:14H]                     ; 05C9 _ 65: 33. 1D, 00000014
        jz      ?_023                                   ; 05D0 _ 74, 05
        call    __stack_chk_fail                        ; 05D2 _ E8, FFFFFFFC(rel)
?_023:  mov     ebx, dword [ebp-4H]                     ; 05D7 _ 8B. 5D, FC
        leave                                           ; 05DA _ C9
        ret                                             ; 05DB _ C3
; rnd_data End of function

print_sphere:; Function begin
        push    ebp                                     ; 05DC _ 55
        mov     ebp, esp                                ; 05DD _ 89. E5
        sub     esp, 24                                 ; 05DF _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 05E2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 05E5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 05E8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 05EB _ 8B. 40, 0C
        imul    eax, edx                                ; 05EE _ 0F AF. C2
        mov     dword [ebp-0CH], eax                    ; 05F1 _ 89. 45, F4
        fild    dword [ebp-0CH]                         ; 05F4 _ DB. 45, F4
        fld     qword [?_084]                           ; 05F7 _ DD. 05, 00000478(d)
        fmulp   st1, st(0)                              ; 05FD _ DE. C9
        fld     qword [?_085]                           ; 05FF _ DD. 05, 00000480(d)
        fmulp   st1, st(0)                              ; 0605 _ DE. C9
        mov     eax, dword [ebp+0CH]                    ; 0607 _ 8B. 45, 0C
        fld     qword [eax]                             ; 060A _ DD. 00
        fxch    st1                                     ; 060C _ D9. C9
        mov     eax, dword [ebp+0CH]                    ; 060E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0611 _ 8B. 40, 0C
        sub     esp, 4                                  ; 0614 _ 83. EC, 04
        lea     esp, [esp-8H]                           ; 0617 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 061B _ DD. 1C 24
        lea     esp, [esp-8H]                           ; 061E _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 0622 _ DD. 1C 24
        push    eax                                     ; 0625 _ 50
        push    ?_056                                   ; 0626 _ 68, 0000011C(d)
        push    dword [ebp+8H]                          ; 062B _ FF. 75, 08
        call    fprintf                                 ; 062E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0633 _ 83. C4, 20
        nop                                             ; 0636 _ 90
        leave                                           ; 0637 _ C9
        ret                                             ; 0638 _ C3
; print_sphere End of function

print_tetrahedron:; Function begin
        push    ebp                                     ; 0639 _ 55
        mov     ebp, esp                                ; 063A _ 89. E5
        sub     esp, 24                                 ; 063C _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 063F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 0642 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 0645 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0648 _ 8B. 40, 0C
        imul    eax, edx                                ; 064B _ 0F AF. C2
        mov     dword [ebp-0CH], eax                    ; 064E _ 89. 45, F4
        fild    dword [ebp-0CH]                         ; 0651 _ DB. 45, F4
        fld     qword [?_086]                           ; 0654 _ DD. 05, 00000488(d)
        fmulp   st1, st(0)                              ; 065A _ DE. C9
        mov     eax, dword [ebp+0CH]                    ; 065C _ 8B. 45, 0C
        fld     qword [eax]                             ; 065F _ DD. 00
        fxch    st1                                     ; 0661 _ D9. C9
        mov     eax, dword [ebp+0CH]                    ; 0663 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 0666 _ 8B. 40, 0C
        sub     esp, 4                                  ; 0669 _ 83. EC, 04
        lea     esp, [esp-8H]                           ; 066C _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 0670 _ DD. 1C 24
        lea     esp, [esp-8H]                           ; 0673 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 0677 _ DD. 1C 24
        push    eax                                     ; 067A _ 50
        push    ?_057                                   ; 067B _ 68, 00000178(d)
        push    dword [ebp+8H]                          ; 0680 _ FF. 75, 08
        call    fprintf                                 ; 0683 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0688 _ 83. C4, 20
        nop                                             ; 068B _ 90
        leave                                           ; 068C _ C9
        ret                                             ; 068D _ C3
; print_tetrahedron End of function

print_parallelepiped:; Function begin
        push    ebp                                     ; 068E _ 55
        mov     ebp, esp                                ; 068F _ 89. E5
        push    ebx                                     ; 0691 _ 53
        sub     esp, 4                                  ; 0692 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0695 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 0698 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 069B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 069E _ 8B. 40, 0C
        add     edx, eax                                ; 06A1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 06A3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 06A6 _ 8B. 40, 0C
        add     edx, eax                                ; 06A9 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 06AB _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 06AE _ 8B. 40, 10
        imul    eax, edx                                ; 06B1 _ 0F AF. C2
        lea     ebx, [eax+eax]                          ; 06B4 _ 8D. 1C 00
        mov     eax, dword [ebp+0CH]                    ; 06B7 _ 8B. 45, 0C
        fld     qword [eax]                             ; 06BA _ DD. 00
        mov     eax, dword [ebp+0CH]                    ; 06BC _ 8B. 45, 0C
        mov     ecx, dword [eax+14H]                    ; 06BF _ 8B. 48, 14
        mov     eax, dword [ebp+0CH]                    ; 06C2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 06C5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 06C8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 06CB _ 8B. 40, 0C
        push    ebx                                     ; 06CE _ 53
        lea     esp, [esp-8H]                           ; 06CF _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 06D3 _ DD. 1C 24
        push    ecx                                     ; 06D6 _ 51
        push    edx                                     ; 06D7 _ 52
        push    eax                                     ; 06D8 _ 50
        push    ?_058                                   ; 06D9 _ 68, 000001D8(d)
        push    dword [ebp+8H]                          ; 06DE _ FF. 75, 08
        call    fprintf                                 ; 06E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06E6 _ 83. C4, 20
        nop                                             ; 06E9 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06EA _ 8B. 5D, FC
        leave                                           ; 06ED _ C9
        ret                                             ; 06EE _ C3
; print_parallelepiped End of function

write_data:; Function begin
        push    ebp                                     ; 06EF _ 55
        mov     ebp, esp                                ; 06F0 _ 89. E5
        sub     esp, 24                                 ; 06F2 _ 83. EC, 18
        cmp     dword [ebp+8H], 0                       ; 06F5 _ 83. 7D, 08, 00
        jnz     ?_024                                   ; 06F9 _ 75, 0A
        sub     esp, 12                                 ; 06FB _ 83. EC, 0C
        push    -14                                     ; 06FE _ 6A, F2
        call    exit                                    ; 0700 _ E8, FFFFFFFC(rel)
?_024:  sub     esp, 4                                  ; 0705 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 0708 _ FF. 75, 10
        push    ?_059                                   ; 070B _ 68, 0000024C(d)
        push    dword [ebp+8H]                          ; 0710 _ FF. 75, 08
        call    fprintf                                 ; 0713 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0718 _ 83. C4, 10
        mov     dword [ebp-0CH], 0                      ; 071B _ C7. 45, F4, 00000000
        jmp     ?_030                                   ; 0722 _ E9, 000000CC

?_025:  sub     esp, 4                                  ; 0727 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 072A _ FF. 75, F4
        push    ?_060                                   ; 072D _ 68, 00000274(d)
        push    dword [ebp+8H]                          ; 0732 _ FF. 75, 08
        call    fprintf                                 ; 0735 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 073A _ 83. C4, 10
        mov     edx, dword [ebp-0CH]                    ; 073D _ 8B. 55, F4
        mov     eax, edx                                ; 0740 _ 89. D0
        add     eax, eax                                ; 0742 _ 01. C0
        add     eax, edx                                ; 0744 _ 01. D0
        shl     eax, 3                                  ; 0746 _ C1. E0, 03
        mov     edx, eax                                ; 0749 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 074B _ 8B. 45, 0C
        add     eax, edx                                ; 074E _ 01. D0
        mov     eax, dword [eax+8H]                     ; 0750 _ 8B. 40, 08
        cmp     eax, 2                                  ; 0753 _ 83. F8, 02
        jz      ?_026                                   ; 0756 _ 74, 2E
        cmp     eax, 3                                  ; 0758 _ 83. F8, 03
        jz      ?_027                                   ; 075B _ 74, 4D
        cmp     eax, 1                                  ; 075D _ 83. F8, 01
        jnz     ?_028                                   ; 0760 _ 75, 6C
        mov     edx, dword [ebp-0CH]                    ; 0762 _ 8B. 55, F4
        mov     eax, edx                                ; 0765 _ 89. D0
        add     eax, eax                                ; 0767 _ 01. C0
        add     eax, edx                                ; 0769 _ 01. D0
        shl     eax, 3                                  ; 076B _ C1. E0, 03
        mov     edx, eax                                ; 076E _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 0770 _ 8B. 45, 0C
        add     eax, edx                                ; 0773 _ 01. D0
        sub     esp, 8                                  ; 0775 _ 83. EC, 08
        push    eax                                     ; 0778 _ 50
        push    dword [ebp+8H]                          ; 0779 _ FF. 75, 08
        call    print_sphere                            ; 077C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0781 _ 83. C4, 10
        jmp     ?_029                                   ; 0784 _ EB, 59

?_026:  mov     edx, dword [ebp-0CH]                    ; 0786 _ 8B. 55, F4
        mov     eax, edx                                ; 0789 _ 89. D0
        add     eax, eax                                ; 078B _ 01. C0
        add     eax, edx                                ; 078D _ 01. D0
        shl     eax, 3                                  ; 078F _ C1. E0, 03
        mov     edx, eax                                ; 0792 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 0794 _ 8B. 45, 0C
        add     eax, edx                                ; 0797 _ 01. D0
        sub     esp, 8                                  ; 0799 _ 83. EC, 08
        push    eax                                     ; 079C _ 50
        push    dword [ebp+8H]                          ; 079D _ FF. 75, 08
        call    print_tetrahedron                       ; 07A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A5 _ 83. C4, 10
        jmp     ?_029                                   ; 07A8 _ EB, 35

?_027:  mov     edx, dword [ebp-0CH]                    ; 07AA _ 8B. 55, F4
        mov     eax, edx                                ; 07AD _ 89. D0
        add     eax, eax                                ; 07AF _ 01. C0
        add     eax, edx                                ; 07B1 _ 01. D0
        shl     eax, 3                                  ; 07B3 _ C1. E0, 03
        mov     edx, eax                                ; 07B6 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 07B8 _ 8B. 45, 0C
        add     eax, edx                                ; 07BB _ 01. D0
        sub     esp, 8                                  ; 07BD _ 83. EC, 08
        push    eax                                     ; 07C0 _ 50
        push    dword [ebp+8H]                          ; 07C1 _ FF. 75, 08
        call    print_parallelepiped                    ; 07C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C9 _ 83. C4, 10
        jmp     ?_029                                   ; 07CC _ EB, 11

?_028:  sub     esp, 12                                 ; 07CE _ 83. EC, 0C
        push    ?_055                                   ; 07D1 _ 68, 00000100(d)
        call    printf                                  ; 07D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07DB _ 83. C4, 10
        nop                                             ; 07DE _ 90
?_029:  sub     esp, 8                                  ; 07DF _ 83. EC, 08
        push    dword [ebp+8H]                          ; 07E2 _ FF. 75, 08
        push    10                                      ; 07E5 _ 6A, 0A
        call    fputc                                   ; 07E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07EC _ 83. C4, 10
        add     dword [ebp-0CH], 1                      ; 07EF _ 83. 45, F4, 01
?_030:  mov     eax, dword [ebp-0CH]                    ; 07F3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 07F6 _ 3B. 45, 10
        jl      ?_025                                   ; 07F9 _ 0F 8C, FFFFFF28
        sub     esp, 12                                 ; 07FF _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 0802 _ FF. 75, 08
        call    fclose                                  ; 0805 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 080A _ 83. C4, 10
        nop                                             ; 080D _ 90
        leave                                           ; 080E _ C9
        ret                                             ; 080F _ C3
; write_data End of function

fp:     ; Function begin
        push    ebp                                     ; 0810 _ 55
        mov     ebp, esp                                ; 0811 _ 89. E5
        sub     esp, 16                                 ; 0813 _ 83. EC, 10
        jmp     ?_033                                   ; 0816 _ EB, 4D

?_031:  mov     eax, dword [ebp+10H]                    ; 0818 _ 8B. 45, 10
        sub     eax, dword [ebp+0CH]                    ; 081B _ 2B. 45, 0C
        mov     edx, eax                                ; 081E _ 89. C2
        shr     edx, 31                                 ; 0820 _ C1. EA, 1F
        add     eax, edx                                ; 0823 _ 01. D0
        sar     eax, 1                                  ; 0825 _ D1. F8
        mov     edx, eax                                ; 0827 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 0829 _ 8B. 45, 0C
        add     eax, edx                                ; 082C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 082E _ 89. 45, FC
        fld     qword [ebp+14H]                         ; 0831 _ DD. 45, 14
        mov     edx, dword [ebp-4H]                     ; 0834 _ 8B. 55, FC
        mov     eax, edx                                ; 0837 _ 89. D0
        add     eax, eax                                ; 0839 _ 01. C0
        add     eax, edx                                ; 083B _ 01. D0
        shl     eax, 3                                  ; 083D _ C1. E0, 03
        mov     edx, eax                                ; 0840 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0842 _ 8B. 45, 08
        add     eax, edx                                ; 0845 _ 01. D0
        fld     qword [eax]                             ; 0847 _ DD. 00
        fxch    st1                                     ; 0849 _ D9. C9
        fucomip st(0), st1                              ; 084B _ DF. E9
        fstp    st0                                     ; 084D _ DD. D8
        jbe     ?_032                                   ; 084F _ 76, 0B
        mov     eax, dword [ebp-4H]                     ; 0851 _ 8B. 45, FC
        sub     eax, 1                                  ; 0854 _ 83. E8, 01
        mov     dword [ebp+10H], eax                    ; 0857 _ 89. 45, 10
        jmp     ?_033                                   ; 085A _ EB, 09

?_032:  mov     eax, dword [ebp-4H]                     ; 085C _ 8B. 45, FC
        add     eax, 1                                  ; 085F _ 83. C0, 01
        mov     dword [ebp+0CH], eax                    ; 0862 _ 89. 45, 0C
?_033:  mov     eax, dword [ebp+0CH]                    ; 0865 _ 8B. 45, 0C
        cmp     eax, dword [ebp+10H]                    ; 0868 _ 3B. 45, 10
        jle     ?_031                                   ; 086B _ 7E, AB
        mov     eax, dword [ebp+0CH]                    ; 086D _ 8B. 45, 0C
        leave                                           ; 0870 _ C9
        ret                                             ; 0871 _ C3
; fp End of function

sort_data:; Function begin
        push    ebp                                     ; 0872 _ 55
        mov     ebp, esp                                ; 0873 _ 89. E5
        sub     esp, 48                                 ; 0875 _ 83. EC, 30
        mov     dword [ebp-24H], 0                      ; 0878 _ C7. 45, DC, 00000000
        jmp     ?_037                                   ; 087F _ E9, 000000FE

?_034:  mov     edx, dword [ebp-24H]                    ; 0884 _ 8B. 55, DC
        mov     eax, edx                                ; 0887 _ 89. D0
        add     eax, eax                                ; 0889 _ 01. C0
        add     eax, edx                                ; 088B _ 01. D0
        shl     eax, 3                                  ; 088D _ C1. E0, 03
        mov     edx, eax                                ; 0890 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0892 _ 8B. 45, 08
        add     eax, edx                                ; 0895 _ 01. D0
        mov     edx, dword [eax]                        ; 0897 _ 8B. 10
        mov     dword [ebp-18H], edx                    ; 0899 _ 89. 55, E8
        mov     edx, dword [eax+4H]                     ; 089C _ 8B. 50, 04
        mov     dword [ebp-14H], edx                    ; 089F _ 89. 55, EC
        mov     edx, dword [eax+8H]                     ; 08A2 _ 8B. 50, 08
        mov     dword [ebp-10H], edx                    ; 08A5 _ 89. 55, F0
        mov     edx, dword [eax+0CH]                    ; 08A8 _ 8B. 50, 0C
        mov     dword [ebp-0CH], edx                    ; 08AB _ 89. 55, F4
        mov     edx, dword [eax+10H]                    ; 08AE _ 8B. 50, 10
        mov     dword [ebp-8H], edx                     ; 08B1 _ 89. 55, F8
        mov     eax, dword [eax+14H]                    ; 08B4 _ 8B. 40, 14
        mov     dword [ebp-4H], eax                     ; 08B7 _ 89. 45, FC
        mov     eax, dword [ebp-24H]                    ; 08BA _ 8B. 45, DC
        sub     eax, 1                                  ; 08BD _ 83. E8, 01
        sub     esp, 4                                  ; 08C0 _ 83. EC, 04
        push    dword [ebp-4H]                          ; 08C3 _ FF. 75, FC
        push    dword [ebp-8H]                          ; 08C6 _ FF. 75, F8
        push    dword [ebp-0CH]                         ; 08C9 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 08CC _ FF. 75, F0
        push    dword [ebp-14H]                         ; 08CF _ FF. 75, EC
        push    dword [ebp-18H]                         ; 08D2 _ FF. 75, E8
        push    eax                                     ; 08D5 _ 50
        push    0                                       ; 08D6 _ 6A, 00
        push    dword [ebp+8H]                          ; 08D8 _ FF. 75, 08
        call    fp                                      ; 08DB _ E8, FFFFFFFC(rel)
        add     esp, 40                                 ; 08E0 _ 83. C4, 28
        mov     dword [ebp-1CH], eax                    ; 08E3 _ 89. 45, E4
        mov     eax, dword [ebp-24H]                    ; 08E6 _ 8B. 45, DC
        sub     eax, 1                                  ; 08E9 _ 83. E8, 01
        mov     dword [ebp-20H], eax                    ; 08EC _ 89. 45, E0
        jmp     ?_036                                   ; 08EF _ EB, 4F

?_035:  mov     eax, dword [ebp-20H]                    ; 08F1 _ 8B. 45, E0
        lea     edx, [eax+1H]                           ; 08F4 _ 8D. 50, 01
        mov     eax, edx                                ; 08F7 _ 89. D0
        add     eax, eax                                ; 08F9 _ 01. C0
        add     eax, edx                                ; 08FB _ 01. D0
        shl     eax, 3                                  ; 08FD _ C1. E0, 03
        mov     edx, eax                                ; 0900 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0902 _ 8B. 45, 08
        add     eax, edx                                ; 0905 _ 01. D0
        mov     ecx, dword [ebp-20H]                    ; 0907 _ 8B. 4D, E0
        mov     edx, ecx                                ; 090A _ 89. CA
        add     edx, edx                                ; 090C _ 01. D2
        add     edx, ecx                                ; 090E _ 01. CA
        shl     edx, 3                                  ; 0910 _ C1. E2, 03
        mov     ecx, edx                                ; 0913 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0915 _ 8B. 55, 08
        add     edx, ecx                                ; 0918 _ 01. CA
        mov     ecx, dword [edx]                        ; 091A _ 8B. 0A
        mov     dword [eax], ecx                        ; 091C _ 89. 08
        mov     ecx, dword [edx+4H]                     ; 091E _ 8B. 4A, 04
        mov     dword [eax+4H], ecx                     ; 0921 _ 89. 48, 04
        mov     ecx, dword [edx+8H]                     ; 0924 _ 8B. 4A, 08
        mov     dword [eax+8H], ecx                     ; 0927 _ 89. 48, 08
        mov     ecx, dword [edx+0CH]                    ; 092A _ 8B. 4A, 0C
        mov     dword [eax+0CH], ecx                    ; 092D _ 89. 48, 0C
        mov     ecx, dword [edx+10H]                    ; 0930 _ 8B. 4A, 10
        mov     dword [eax+10H], ecx                    ; 0933 _ 89. 48, 10
        mov     edx, dword [edx+14H]                    ; 0936 _ 8B. 52, 14
        mov     dword [eax+14H], edx                    ; 0939 _ 89. 50, 14
        sub     dword [ebp-20H], 1                      ; 093C _ 83. 6D, E0, 01
?_036:  mov     eax, dword [ebp-20H]                    ; 0940 _ 8B. 45, E0
        cmp     eax, dword [ebp-1CH]                    ; 0943 _ 3B. 45, E4
        jge     ?_035                                   ; 0946 _ 7D, A9
        mov     edx, dword [ebp-1CH]                    ; 0948 _ 8B. 55, E4
        mov     eax, edx                                ; 094B _ 89. D0
        add     eax, eax                                ; 094D _ 01. C0
        add     eax, edx                                ; 094F _ 01. D0
        shl     eax, 3                                  ; 0951 _ C1. E0, 03
        mov     edx, eax                                ; 0954 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0956 _ 8B. 45, 08
        add     eax, edx                                ; 0959 _ 01. D0
        mov     edx, dword [ebp-18H]                    ; 095B _ 8B. 55, E8
        mov     dword [eax], edx                        ; 095E _ 89. 10
        mov     edx, dword [ebp-14H]                    ; 0960 _ 8B. 55, EC
        mov     dword [eax+4H], edx                     ; 0963 _ 89. 50, 04
        mov     edx, dword [ebp-10H]                    ; 0966 _ 8B. 55, F0
        mov     dword [eax+8H], edx                     ; 0969 _ 89. 50, 08
        mov     edx, dword [ebp-0CH]                    ; 096C _ 8B. 55, F4
        mov     dword [eax+0CH], edx                    ; 096F _ 89. 50, 0C
        mov     edx, dword [ebp-8H]                     ; 0972 _ 8B. 55, F8
        mov     dword [eax+10H], edx                    ; 0975 _ 89. 50, 10
        mov     edx, dword [ebp-4H]                     ; 0978 _ 8B. 55, FC
        mov     dword [eax+14H], edx                    ; 097B _ 89. 50, 14
        add     dword [ebp-24H], 1                      ; 097E _ 83. 45, DC, 01
?_037:  mov     eax, dword [ebp-24H]                    ; 0982 _ 8B. 45, DC
        cmp     eax, dword [ebp+0CH]                    ; 0985 _ 3B. 45, 0C
        jl      ?_034                                   ; 0988 _ 0F 8C, FFFFFEF6
        nop                                             ; 098E _ 90
        leave                                           ; 098F _ C9
        ret                                             ; 0990 _ C3
; sort_data End of function

invalid_parameters_list_exception:; Function begin
        push    ebp                                     ; 0991 _ 55
        mov     ebp, esp                                ; 0992 _ 89. E5
        sub     esp, 8                                  ; 0994 _ 83. EC, 08
        sub     esp, 12                                 ; 0997 _ 83. EC, 0C
        push    ?_061                                   ; 099A _ 68, 00000285(d)
        call    puts                                    ; 099F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09A4 _ 83. C4, 10
        sub     esp, 12                                 ; 09A7 _ 83. EC, 0C
        push    ?_062                                   ; 09AA _ 68, 0000029F(d)
        call    puts                                    ; 09AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09B4 _ 83. C4, 10
        sub     esp, 12                                 ; 09B7 _ 83. EC, 0C
        push    ?_063                                   ; 09BA _ 68, 000002AC(d)
        call    puts                                    ; 09BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09C4 _ 83. C4, 10
        sub     esp, 12                                 ; 09C7 _ 83. EC, 0C
        push    ?_064                                   ; 09CA _ 68, 000002E5(d)
        call    puts                                    ; 09CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09D4 _ 83. C4, 10
        sub     esp, 12                                 ; 09D7 _ 83. EC, 0C
        push    ?_065                                   ; 09DA _ 68, 000002EC(d)
        call    printf                                  ; 09DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09E4 _ 83. C4, 10
        nop                                             ; 09E7 _ 90
        leave                                           ; 09E8 _ C9
        ret                                             ; 09E9 _ C3
; invalid_parameters_list_exception End of function

incorrect_flag_exception:; Function begin
        push    ebp                                     ; 09EA _ 55
        mov     ebp, esp                                ; 09EB _ 89. E5
        sub     esp, 8                                  ; 09ED _ 83. EC, 08
        sub     esp, 12                                 ; 09F0 _ 83. EC, 0C
        push    ?_066                                   ; 09F3 _ 68, 00000324(d)
        call    puts                                    ; 09F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09FD _ 83. C4, 10
        sub     esp, 12                                 ; 0A00 _ 83. EC, 0C
        push    ?_062                                   ; 0A03 _ 68, 0000029F(d)
        call    puts                                    ; 0A08 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A0D _ 83. C4, 10
        sub     esp, 12                                 ; 0A10 _ 83. EC, 0C
        push    ?_067                                   ; 0A13 _ 68, 00000333(d)
        call    puts                                    ; 0A18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A1D _ 83. C4, 10
        sub     esp, 12                                 ; 0A20 _ 83. EC, 0C
        push    ?_064                                   ; 0A23 _ 68, 000002E5(d)
        call    puts                                    ; 0A28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A2D _ 83. C4, 10
        sub     esp, 12                                 ; 0A30 _ 83. EC, 0C
        push    ?_068                                   ; 0A33 _ 68, 00000347(d)
        call    printf                                  ; 0A38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3D _ 83. C4, 10
        sub     esp, 12                                 ; 0A40 _ 83. EC, 0C
        push    -2                                      ; 0A43 _ 6A, FE
        call    exit                                    ; 0A45 _ E8, FFFFFFFC(rel)

fill_container:
        push    ebp                                     ; 0A4A _ 55
        mov     ebp, esp                                ; 0A4B _ 89. E5
        sub     esp, 24                                 ; 0A4D _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 0A50 _ 8B. 45, 10
        add     eax, 8                                  ; 0A53 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 0A56 _ 8B. 00
        sub     esp, 8                                  ; 0A58 _ 83. EC, 08
        push    ?_069                                   ; 0A5B _ 68, 00000362(d)
        push    eax                                     ; 0A60 _ 50
        call    fopen                                   ; 0A61 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A66 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0A69 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 0A6C _ 83. 7D, F4, 00
        jnz     ?_038                                   ; 0A70 _ 75, 0A
        sub     esp, 12                                 ; 0A72 _ 83. EC, 0C
        push    -10                                     ; 0A75 _ 6A, F6
        call    exit                                    ; 0A77 _ E8, FFFFFFFC(rel)
?_038:  mov     eax, dword [ebp+10H]                    ; 0A7C _ 8B. 45, 10
        add     eax, 4                                  ; 0A7F _ 83. C0, 04
        mov     eax, dword [eax]                        ; 0A82 _ 8B. 00
        sub     esp, 8                                  ; 0A84 _ 83. EC, 08
        push    ?_070                                   ; 0A87 _ 68, 00000364(d)
        push    eax                                     ; 0A8C _ 50
        call    strcmp                                  ; 0A8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A92 _ 83. C4, 10
        test    eax, eax                                ; 0A95 _ 85. C0
        jnz     ?_039                                   ; 0A97 _ 75, 1F
        sub     esp, 4                                  ; 0A99 _ 83. EC, 04
        push    10000                                   ; 0A9C _ 68, 00002710
        push    dword [ebp+8H]                          ; 0AA1 _ FF. 75, 08
        push    dword [ebp-0CH]                         ; 0AA4 _ FF. 75, F4
        call    read_data                               ; 0AA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AAC _ 83. C4, 10
        mov     edx, eax                                ; 0AAF _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 0AB1 _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0AB4 _ 89. 10
        jmp     ?_041                                   ; 0AB6 _ EB, 41

?_039:  mov     eax, dword [ebp+10H]                    ; 0AB8 _ 8B. 45, 10
        add     eax, 4                                  ; 0ABB _ 83. C0, 04
        mov     eax, dword [eax]                        ; 0ABE _ 8B. 00
        sub     esp, 8                                  ; 0AC0 _ 83. EC, 08
        push    ?_071                                   ; 0AC3 _ 68, 00000367(d)
        push    eax                                     ; 0AC8 _ 50
        call    strcmp                                  ; 0AC9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ACE _ 83. C4, 10
        test    eax, eax                                ; 0AD1 _ 85. C0
        jnz     ?_040                                   ; 0AD3 _ 75, 1F
        sub     esp, 4                                  ; 0AD5 _ 83. EC, 04
        push    10000                                   ; 0AD8 _ 68, 00002710
        push    dword [ebp+8H]                          ; 0ADD _ FF. 75, 08
        push    dword [ebp-0CH]                         ; 0AE0 _ FF. 75, F4
        call    rnd_data                                ; 0AE3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AE8 _ 83. C4, 10
        mov     edx, eax                                ; 0AEB _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 0AED _ 8B. 45, 0C
        mov     dword [eax], edx                        ; 0AF0 _ 89. 10
        jmp     ?_041                                   ; 0AF2 _ EB, 05

?_040:  call    incorrect_flag_exception                ; 0AF4 _ E8, FFFFFFFC(rel)
?_041:  leave                                           ; 0AF9 _ C9
        ret                                             ; 0AFA _ C3
; incorrect_flag_exception End of function

main:   ; Function begin
        lea     ecx, [esp+4H]                           ; 0AFB _ 8D. 4C 24, 04
        and     esp, 0FFFFFFF0H                         ; 0AFF _ 83. E4, F0
        push    dword [ecx-4H]                          ; 0B02 _ FF. 71, FC
        push    ebp                                     ; 0B05 _ 55
        mov     ebp, esp                                ; 0B06 _ 89. E5
        push    ecx                                     ; 0B08 _ 51
        sub     esp, 240052                             ; 0B09 _ 81. EC, 0003A9B4
        mov     eax, ecx                                ; 0B0F _ 89. C8
        mov     edx, dword [eax+4H]                     ; 0B11 _ 8B. 50, 04
        mov     dword [ebp-3A9ACH], edx                 ; 0B14 _ 89. 95, FFFC5654
; Note: Absolute memory address without relocation
        mov     ecx, dword [gs:14H]                     ; 0B1A _ 65: 8B. 0D, 00000014
        mov     dword [ebp-0CH], ecx                    ; 0B21 _ 89. 4D, F4
        xor     ecx, ecx                                ; 0B24 _ 31. C9
        cmp     dword [eax], 5                          ; 0B26 _ 83. 38, 05
        jz      ?_042                                   ; 0B29 _ 74, 0F
        call    invalid_parameters_list_exception       ; 0B2B _ E8, FFFFFFFC(rel)
        mov     eax, 4294967295                         ; 0B30 _ B8, FFFFFFFF
        jmp     ?_043                                   ; 0B35 _ E9, 0000018C

?_042:  call    clock                                   ; 0B3A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3A99CH], eax                 ; 0B3F _ 89. 85, FFFC5664
        sub     esp, 12                                 ; 0B45 _ 83. EC, 0C
        push    ?_072                                   ; 0B48 _ 68, 0000036A(d)
        call    puts                                    ; 0B4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B52 _ 83. C4, 10
        sub     esp, 12                                 ; 0B55 _ 83. EC, 0C
        push    ?_073                                   ; 0B58 _ 68, 00000382(d)
        call    puts                                    ; 0B5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B62 _ 83. C4, 10
        sub     esp, 12                                 ; 0B65 _ 83. EC, 0C
        push    ?_074                                   ; 0B68 _ 68, 0000039D(d)
        call    puts                                    ; 0B6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B72 _ 83. C4, 10
        sub     esp, 4                                  ; 0B75 _ 83. EC, 04
        push    dword [ebp-3A9ACH]                      ; 0B78 _ FF. B5, FFFC5654
        lea     eax, [ebp-3A9A0H]                       ; 0B7E _ 8D. 85, FFFC5660
        push    eax                                     ; 0B84 _ 50
        lea     eax, [ebp-3A98CH]                       ; 0B85 _ 8D. 85, FFFC5674
        push    eax                                     ; 0B8B _ 50
        call    fill_container                          ; 0B8C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B91 _ 83. C4, 10
        sub     esp, 12                                 ; 0B94 _ 83. EC, 0C
        push    ?_075                                   ; 0B97 _ 68, 000003B7(d)
        call    puts                                    ; 0B9C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA1 _ 83. C4, 10
        mov     eax, dword [ebp-3A9ACH]                 ; 0BA4 _ 8B. 85, FFFC5654
        add     eax, 12                                 ; 0BAA _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 0BAD _ 8B. 00
        sub     esp, 8                                  ; 0BAF _ 83. EC, 08
        push    ?_076                                   ; 0BB2 _ 68, 000003D2(d)
        push    eax                                     ; 0BB7 _ 50
        call    fopen                                   ; 0BB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BBD _ 83. C4, 10
        mov     dword [ebp-3A998H], eax                 ; 0BC0 _ 89. 85, FFFC5668
        mov     eax, dword [ebp-3A9ACH]                 ; 0BC6 _ 8B. 85, FFFC5654
        add     eax, 16                                 ; 0BCC _ 83. C0, 10
        mov     eax, dword [eax]                        ; 0BCF _ 8B. 00
        sub     esp, 8                                  ; 0BD1 _ 83. EC, 08
        push    ?_076                                   ; 0BD4 _ 68, 000003D2(d)
        push    eax                                     ; 0BD9 _ 50
        call    fopen                                   ; 0BDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BDF _ 83. C4, 10
        mov     dword [ebp-3A994H], eax                 ; 0BE2 _ 89. 85, FFFC566C
        mov     eax, dword [ebp-3A9A0H]                 ; 0BE8 _ 8B. 85, FFFC5660
        sub     esp, 4                                  ; 0BEE _ 83. EC, 04
        push    eax                                     ; 0BF1 _ 50
        lea     eax, [ebp-3A98CH]                       ; 0BF2 _ 8D. 85, FFFC5674
        push    eax                                     ; 0BF8 _ 50
        push    dword [ebp-3A998H]                      ; 0BF9 _ FF. B5, FFFC5668
        call    write_data                              ; 0BFF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C04 _ 83. C4, 10
        sub     esp, 12                                 ; 0C07 _ 83. EC, 0C
        push    ?_077                                   ; 0C0A _ 68, 000003D4(d)
        call    puts                                    ; 0C0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C14 _ 83. C4, 10
        mov     eax, dword [ebp-3A9A0H]                 ; 0C17 _ 8B. 85, FFFC5660
        sub     esp, 8                                  ; 0C1D _ 83. EC, 08
        push    eax                                     ; 0C20 _ 50
        lea     eax, [ebp-3A98CH]                       ; 0C21 _ 8D. 85, FFFC5674
        push    eax                                     ; 0C27 _ 50
        call    sort_data                               ; 0C28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C2D _ 83. C4, 10
        sub     esp, 12                                 ; 0C30 _ 83. EC, 0C
        push    ?_078                                   ; 0C33 _ 68, 000003FC(d)
        call    puts                                    ; 0C38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C3D _ 83. C4, 10
        mov     eax, dword [ebp-3A9A0H]                 ; 0C40 _ 8B. 85, FFFC5660
        sub     esp, 4                                  ; 0C46 _ 83. EC, 04
        push    eax                                     ; 0C49 _ 50
        lea     eax, [ebp-3A98CH]                       ; 0C4A _ 8D. 85, FFFC5674
        push    eax                                     ; 0C50 _ 50
        push    dword [ebp-3A994H]                      ; 0C51 _ FF. B5, FFFC566C
        call    write_data                              ; 0C57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C5C _ 83. C4, 10
        sub     esp, 12                                 ; 0C5F _ 83. EC, 0C
        push    ?_079                                   ; 0C62 _ 68, 00000414(d)
        call    puts                                    ; 0C67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C6C _ 83. C4, 10
        call    clock                                   ; 0C6F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3A990H], eax                 ; 0C74 _ 89. 85, FFFC5670
        mov     eax, dword [ebp-3A990H]                 ; 0C7A _ 8B. 85, FFFC5670
        sub     eax, dword [ebp-3A99CH]                 ; 0C80 _ 2B. 85, FFFC5664
        mov     dword [ebp-3A9B0H], eax                 ; 0C86 _ 89. 85, FFFC5650
        fild    dword [ebp-3A9B0H]                      ; 0C8C _ DB. 85, FFFC5650
        fld     qword [?_087]                           ; 0C92 _ DD. 05, 00000490(d)
        fdivp   st1, st(0)                              ; 0C98 _ DE. F9
        sub     esp, 4                                  ; 0C9A _ 83. EC, 04
        lea     esp, [esp-8H]                           ; 0C9D _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 0CA1 _ DD. 1C 24
        push    ?_080                                   ; 0CA4 _ 68, 0000043E(d)
        call    printf                                  ; 0CA9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAE _ 83. C4, 10
        sub     esp, 12                                 ; 0CB1 _ 83. EC, 0C
        push    ?_081                                   ; 0CB4 _ 68, 0000044E(d)
        call    puts                                    ; 0CB9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CBE _ 83. C4, 10
        mov     eax, 0                                  ; 0CC1 _ B8, 00000000
?_043:  mov     edx, dword [ebp-0CH]                    ; 0CC6 _ 8B. 55, F4
; Note: Absolute memory address without relocation
        xor     edx, dword [gs:14H]                     ; 0CC9 _ 65: 33. 15, 00000014
        jz      ?_044                                   ; 0CD0 _ 74, 05
        call    __stack_chk_fail                        ; 0CD2 _ E8, FFFFFFFC(rel)
?_044:  mov     ecx, dword [ebp-4H]                     ; 0CD7 _ 8B. 4D, FC
        leave                                           ; 0CDA _ C9
        lea     esp, [ecx-4H]                           ; 0CDB _ 8D. 61, FC
        ret                                             ; 0CDE _ C3
; main End of function


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss


SECTION .rodata align=8 noexecute                       ; section number 4, const

?_045:                                                  ; byte
        db 25H, 64H, 00H, 00H                           ; 0000 _ %d..

?_046:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0004 _ Invalid 
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 74H       ; 000C _ value: t
        db 68H, 65H, 20H, 72H, 61H, 64H, 69H, 75H       ; 0014 _ he radiu
        db 73H, 20H, 6DH, 75H, 73H, 74H, 20H, 62H       ; 001C _ s must b
        db 65H, 20H, 67H, 72H, 65H, 61H, 74H, 65H       ; 0024 _ e greate
        db 72H, 20H, 74H, 68H, 65H, 6EH, 20H, 30H       ; 002C _ r then 0
        db 2EH, 00H                                     ; 0034 _ ..

?_047:                                                  ; byte
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H       ; 0036 _ Default 
        db 72H, 61H, 64H, 69H, 75H, 73H, 20H, 69H       ; 003E _ radius i
        db 73H, 20H, 31H, 2EH, 00H, 00H                 ; 0046 _ s 1...

?_048:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 004C _ Invalid 
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 74H       ; 0054 _ value: t
        db 68H, 65H, 20H, 73H, 69H, 64H, 65H, 20H       ; 005C _ he side 
        db 6DH, 75H, 73H, 74H, 20H, 62H, 65H, 20H       ; 0064 _ must be 
        db 67H, 72H, 65H, 61H, 74H, 65H, 72H, 20H       ; 006C _ greater 
        db 74H, 68H, 65H, 6EH, 20H, 30H, 2EH, 00H       ; 0074 _ then 0..

?_049:                                                  ; byte
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H       ; 007C _ Default 
        db 73H, 69H, 64H, 65H, 20H, 69H, 73H, 20H       ; 0084 _ side is 
        db 31H, 2EH, 00H                                ; 008C _ 1..

?_050:                                                  ; byte
        db 25H, 64H, 20H, 25H, 64H, 20H, 25H, 64H       ; 008F _ %d %d %d
        db 00H                                          ; 0097 _ .

?_051:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0098 _ Invalid 
        db 76H, 61H, 6CH, 75H, 65H, 3AH, 20H, 61H       ; 00A0 _ value: a
        db 6CH, 6CH, 20H, 73H, 69H, 64H, 65H, 73H       ; 00A8 _ ll sides
        db 20H, 6DH, 75H, 73H, 74H, 20H, 62H, 65H       ; 00B0 _  must be
        db 20H, 67H, 72H, 65H, 61H, 74H, 65H, 72H       ; 00B8 _  greater
        db 20H, 74H, 68H, 65H, 6EH, 20H, 30H, 2EH       ; 00C0 _  then 0.
        db 00H                                          ; 00C8 _ .

?_052:                                                  ; byte
        db 44H, 65H, 66H, 61H, 75H, 6CH, 74H, 20H       ; 00C9 _ Default 
        db 73H, 69H, 64H, 65H, 73H, 20H, 69H, 73H       ; 00D1 _ sides is
        db 20H, 31H, 2EH, 00H                           ; 00D9 _  1..

?_053:                                                  ; byte
        db 25H, 64H, 20H, 25H, 6CH, 66H, 00H            ; 00DD _ %d %lf.

?_054:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 00E4 _ Incorrec
        db 74H, 20H, 74H, 79H, 70H, 65H, 20H, 6FH       ; 00EC _ t type o
        db 66H, 20H, 73H, 68H, 61H, 70H, 65H, 2EH       ; 00F4 _ f shape.
        db 20H, 25H, 64H, 00H                           ; 00FC _  %d.

?_055:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0100 _ Incorrec
        db 74H, 20H, 74H, 79H, 70H, 65H, 20H, 6FH       ; 0108 _ t type o
        db 66H, 20H, 73H, 68H, 61H, 70H, 65H, 2EH       ; 0110 _ f shape.
        db 00H, 00H, 00H, 00H                           ; 0118 _ ....

?_056:                                                  ; byte
        db 53H, 50H, 48H, 45H, 52H, 45H, 0AH, 09H       ; 011C _ SPHERE..
        db 54H, 68H, 65H, 20H, 73H, 70H, 68H, 65H       ; 0124 _ The sphe
        db 72H, 65H, 20H, 77H, 69H, 74H, 68H, 20H       ; 012C _ re with 
        db 74H, 68H, 65H, 20H, 72H, 61H, 64H, 69H       ; 0134 _ the radi
        db 75H, 73H, 20H, 69H, 73H, 20H, 25H, 64H       ; 013C _ us is %d
        db 2EH, 0AH, 09H, 54H, 68H, 65H, 20H, 64H       ; 0144 _ ...The d
        db 65H, 6EH, 73H, 69H, 74H, 79H, 20H, 69H       ; 014C _ ensity i
        db 73H, 20H, 25H, 6CH, 66H, 2EH, 0AH, 09H       ; 0154 _ s %lf...
        db 54H, 68H, 65H, 20H, 73H, 75H, 72H, 66H       ; 015C _ The surf
        db 61H, 63H, 65H, 20H, 61H, 72H, 65H, 61H       ; 0164 _ ace area
        db 20H, 69H, 73H, 20H, 25H, 6CH, 66H, 2EH       ; 016C _  is %lf.
        db 0AH, 00H, 00H, 00H                           ; 0174 _ ....

?_057:                                                  ; byte
        db 54H, 45H, 54H, 52H, 41H, 48H, 45H, 44H       ; 0178 _ TETRAHED
        db 52H, 4FH, 4EH, 0AH, 09H, 54H, 68H, 65H       ; 0180 _ RON..The
        db 20H, 74H, 65H, 74H, 72H, 61H, 68H, 65H       ; 0188 _  tetrahe
        db 64H, 72H, 6FH, 6EH, 20H, 77H, 69H, 74H       ; 0190 _ dron wit
        db 68H, 20H, 74H, 68H, 65H, 20H, 73H, 69H       ; 0198 _ h the si
        db 64H, 65H, 20H, 25H, 64H, 2EH, 0AH, 09H       ; 01A0 _ de %d...
        db 54H, 68H, 65H, 20H, 64H, 65H, 6EH, 73H       ; 01A8 _ The dens
        db 69H, 74H, 79H, 20H, 69H, 73H, 20H, 25H       ; 01B0 _ ity is %
        db 6CH, 66H, 2EH, 0AH, 09H, 54H, 68H, 65H       ; 01B8 _ lf...The
        db 20H, 73H, 75H, 72H, 66H, 61H, 63H, 65H       ; 01C0 _  surface
        db 20H, 61H, 72H, 65H, 61H, 20H, 69H, 73H       ; 01C8 _  area is
        db 20H, 25H, 6CH, 66H, 2EH, 0AH, 00H, 00H       ; 01D0 _  %lf....

?_058:                                                  ; byte
        db 50H, 41H, 52H, 41H, 4CH, 4CH, 45H, 4CH       ; 01D8 _ PARALLEL
        db 45H, 50H, 49H, 50H, 45H, 44H, 0AH, 09H       ; 01E0 _ EPIPED..
        db 54H, 68H, 65H, 20H, 70H, 61H, 72H, 61H       ; 01E8 _ The para
        db 6CH, 6CH, 65H, 6CH, 65H, 70H, 69H, 70H       ; 01F0 _ llelepip
        db 65H, 64H, 20H, 77H, 69H, 74H, 68H, 20H       ; 01F8 _ ed with 
        db 74H, 68H, 65H, 20H, 73H, 69H, 64H, 65H       ; 0200 _ the side
        db 73H, 20H, 78H, 3AH, 20H, 25H, 64H, 20H       ; 0208 _ s x: %d 
        db 79H, 3AH, 20H, 25H, 64H, 20H, 7AH, 3AH       ; 0210 _ y: %d z:
        db 20H, 25H, 64H, 2EH, 0AH, 09H, 54H, 68H       ; 0218 _  %d...Th
        db 65H, 20H, 64H, 65H, 6EH, 73H, 69H, 74H       ; 0220 _ e densit
        db 79H, 20H, 69H, 73H, 20H, 25H, 6CH, 66H       ; 0228 _ y is %lf
        db 2EH, 0AH, 09H, 54H, 68H, 65H, 20H, 73H       ; 0230 _ ...The s
        db 75H, 72H, 66H, 61H, 63H, 65H, 20H, 61H       ; 0238 _ urface a
        db 72H, 65H, 61H, 20H, 69H, 73H, 20H, 25H       ; 0240 _ rea is %
        db 64H, 2EH, 0AH, 00H                           ; 0248 _ d...

?_059:                                                  ; byte
        db 54H, 68H, 65H, 72H, 65H, 20H, 61H, 72H       ; 024C _ There ar
        db 65H, 20H, 25H, 64H, 20H, 73H, 68H, 61H       ; 0254 _ e %d sha
        db 70H, 65H, 73H, 20H, 69H, 6EH, 20H, 74H       ; 025C _ pes in t
        db 68H, 65H, 20H, 63H, 6FH, 6EH, 74H, 61H       ; 0264 _ he conta
        db 69H, 6EH, 65H, 72H, 2EH, 0AH, 0AH, 00H       ; 026C _ iner....

?_060:                                                  ; byte
        db 25H, 64H, 20H, 20H, 2DH, 2DH, 2DH, 2DH       ; 0274 _ %d  ----
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 20H, 20H       ; 027C _ ------  
        db 00H                                          ; 0284 _ .

?_061:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0285 _ Invalid 
        db 69H, 6EH, 70H, 75H, 74H, 20H, 70H, 61H       ; 028D _ input pa
        db 72H, 61H, 6DH, 65H, 74H, 65H, 72H, 73H       ; 0295 _ rameters
        db 21H, 00H                                     ; 029D _ !.

?_062:                                                  ; byte
        db 45H, 78H, 70H, 65H, 63H, 74H, 65H, 64H       ; 029F _ Expected
        db 3AH, 00H, 00H, 00H, 00H                      ; 02A7 _ :....

?_063:                                                  ; byte
        db 09H, 2DH, 69H, 20H, 3CH, 69H, 6EH, 70H       ; 02AC _ .-i <inp
        db 75H, 74H, 5FH, 66H, 69H, 6CH, 65H, 3EH       ; 02B4 _ ut_file>
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H       ; 02BC _  <out_fi
        db 6CH, 65H, 5FH, 64H, 61H, 74H, 61H, 3EH       ; 02C4 _ le_data>
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H       ; 02CC _  <out_fi
        db 6CH, 65H, 5FH, 73H, 6FH, 72H, 74H, 65H       ; 02D4 _ le_sorte
        db 64H, 5FH, 64H, 61H, 74H, 61H, 3EH, 20H       ; 02DC _ d_data> 
        db 00H                                          ; 02E4 _ .

?_064:                                                  ; byte
        db 09H, 4FH, 72H, 3AH, 20H, 00H, 00H            ; 02E5 _ .Or: ..

?_065:                                                  ; byte
        db 09H, 2DH, 72H, 20H, 3CH, 69H, 6EH, 70H       ; 02EC _ .-r <inp
        db 75H, 74H, 5FH, 66H, 69H, 6CH, 65H, 3EH       ; 02F4 _ ut_file>
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H       ; 02FC _  <out_fi
        db 6CH, 65H, 5FH, 64H, 61H, 74H, 61H, 3EH       ; 0304 _ le_data>
        db 20H, 3CH, 6FH, 75H, 74H, 5FH, 66H, 69H       ; 030C _  <out_fi
        db 6CH, 65H, 5FH, 73H, 6FH, 72H, 74H, 65H       ; 0314 _ le_sorte
        db 64H, 5FH, 64H, 61H, 74H, 61H, 3EH, 00H       ; 031C _ d_data>.

?_066:                                                  ; byte
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H       ; 0324 _ Invalid 
        db 66H, 6CH, 61H, 67H, 73H, 21H, 00H            ; 032C _ flags!.

?_067:                                                  ; byte
        db 09H, 2DH, 69H, 20H, 66H, 6FH, 72H, 20H       ; 0333 _ .-i for 
        db 69H, 6EH, 70H, 75H, 74H, 20H, 64H, 61H       ; 033B _ input da
        db 74H, 61H, 20H, 00H                           ; 0343 _ ta .

?_068:                                                  ; byte
        db 09H, 2DH, 72H, 20H, 66H, 6FH, 72H, 20H       ; 0347 _ .-r for 
        db 63H, 72H, 65H, 61H, 74H, 65H, 20H, 72H       ; 034F _ create r
        db 61H, 6EH, 64H, 6FH, 6DH, 20H, 64H, 61H       ; 0357 _ andom da
        db 74H, 61H, 00H                                ; 035F _ ta.

?_069:                                                  ; byte
        db 72H, 00H                                     ; 0362 _ r.

?_070:                                                  ; byte
        db 2DH, 69H, 00H                                ; 0364 _ -i.

?_071:                                                  ; byte
        db 2DH, 72H, 00H                                ; 0367 _ -r.

?_072:                                                  ; byte
        db 54H, 68H, 65H, 20H, 70H, 72H, 6FH, 67H       ; 036A _ The prog
        db 72H, 61H, 6DH, 20H, 77H, 61H, 73H, 20H       ; 0372 _ ram was 
        db 73H, 74H, 61H, 72H, 74H, 2EH, 0AH, 00H       ; 037A _ start...

?_073:                                                  ; byte
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H       ; 0382 _ The cont
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H       ; 038A _ ainer wa
        db 73H, 20H, 63H, 72H, 65H, 61H, 74H, 65H       ; 0392 _ s create
        db 64H, 2EH, 00H                                ; 039A _ d..

?_074:                                                  ; byte
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H       ; 039D _ The cont
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H       ; 03A5 _ ainer wa
        db 73H, 20H, 69H, 6EH, 69H, 74H, 65H, 64H       ; 03AD _ s inited
        db 2EH, 00H                                     ; 03B5 _ ..

?_075:                                                  ; byte
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H       ; 03B7 _ The cont
        db 61H, 69H, 6EH, 65H, 72H, 20H, 77H, 61H       ; 03BF _ ainer wa
        db 73H, 20H, 66H, 69H, 6CH, 6CH, 65H, 64H       ; 03C7 _ s filled
        db 2EH, 0AH, 00H                                ; 03CF _ ...

?_076:                                                  ; byte
        db 77H, 00H                                     ; 03D2 _ w.

?_077:                                                  ; byte
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H       ; 03D4 _ The data
        db 20H, 77H, 61H, 73H, 20H, 70H, 72H, 69H       ; 03DC _  was pri
        db 6EH, 74H, 65H, 64H, 20H, 69H, 6EH, 74H       ; 03E4 _ nted int
        db 6FH, 20H, 66H, 69H, 72H, 73H, 74H, 20H       ; 03EC _ o first 
        db 73H, 74H, 72H, 65H, 61H, 6DH, 2EH, 00H       ; 03F4 _ stream..

?_078:                                                  ; byte
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H       ; 03FC _ The data
        db 20H, 77H, 61H, 73H, 20H, 73H, 6FH, 72H       ; 0404 _  was sor
        db 74H, 65H, 64H, 2EH, 00H, 00H, 00H, 00H       ; 040C _ ted.....

?_079:                                                  ; byte
        db 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H       ; 0414 _ The data
        db 20H, 77H, 61H, 73H, 20H, 70H, 72H, 69H       ; 041C _  was pri
        db 6EH, 74H, 65H, 64H, 20H, 69H, 6EH, 74H       ; 0424 _ nted int
        db 6FH, 20H, 73H, 65H, 63H, 6FH, 6EH, 64H       ; 042C _ o second
        db 20H, 73H, 74H, 72H, 65H, 61H, 6DH, 2EH       ; 0434 _  stream.
        db 0AH, 00H                                     ; 043C _ ..

?_080:                                                  ; byte
        db 54H, 69H, 6DH, 65H, 20H, 69H, 73H, 20H       ; 043E _ Time is 
        db 25H, 66H, 20H, 73H, 65H, 63H, 2EH, 00H       ; 0446 _ %f sec..

?_081:                                                  ; byte
        db 54H, 68H, 65H, 20H, 70H, 72H, 6FH, 67H       ; 044E _ The prog
        db 72H, 61H, 6DH, 20H, 77H, 61H, 73H, 20H       ; 0456 _ ram was 
        db 65H, 6EH, 64H, 2EH, 0AH, 00H, 00H, 00H       ; 045E _ end.....
        db 00H, 00H                                     ; 0466 _ ..

?_082:  dq 408F400000000000H                            ; 0468 _ 1000.0 

?_083:  dq 4059000000000000H                            ; 0470 _ 100.0 

?_084:  dq 400921FAFC8B007AH                            ; 0478 _ 3.141592 

?_085:  dq 4010000000000000H                            ; 0480 _ 4.0 

?_086:  dq 3FFBB67AE8584CAAH                            ; 0488 _ 1.732050807568877 

?_087:  dq 412E848000000000H                            ; 0490 _ 1000000.0 


