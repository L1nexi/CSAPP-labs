
./bomb:     file format elf64-x86-64
./bomb
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x0000000000401230

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr 0x0000000000400040 align 2**3
         filesz 0x00000000000002d8 memsz 0x00000000000002d8 flags r--
  INTERP off    0x0000000000000318 vaddr 0x0000000000400318 paddr 0x0000000000400318 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr 0x0000000000400000 align 2**12
         filesz 0x0000000000000a90 memsz 0x0000000000000a90 flags r--
    LOAD off    0x0000000000001000 vaddr 0x0000000000401000 paddr 0x0000000000401000 align 2**12
         filesz 0x0000000000001385 memsz 0x0000000000001385 flags r-x
    LOAD off    0x0000000000003000 vaddr 0x0000000000403000 paddr 0x0000000000403000 align 2**12
         filesz 0x0000000000000ed8 memsz 0x0000000000000ed8 flags r--
    LOAD off    0x0000000000004cf8 vaddr 0x0000000000405cf8 paddr 0x0000000000405cf8 align 2**12
         filesz 0x0000000000000728 memsz 0x0000000000000738 flags rw-
 DYNAMIC off    0x0000000000004e08 vaddr 0x0000000000405e08 paddr 0x0000000000405e08 align 2**3
         filesz 0x00000000000001e0 memsz 0x00000000000001e0 flags rw-
    NOTE off    0x0000000000000338 vaddr 0x0000000000400338 paddr 0x0000000000400338 align 2**3
         filesz 0x0000000000000020 memsz 0x0000000000000020 flags r--
    NOTE off    0x0000000000000358 vaddr 0x0000000000400358 paddr 0x0000000000400358 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
0x6474e553 off    0x0000000000000338 vaddr 0x0000000000400338 paddr 0x0000000000400338 align 2**3
         filesz 0x0000000000000020 memsz 0x0000000000000020 flags r--
EH_FRAME off    0x0000000000003794 vaddr 0x0000000000403794 paddr 0x0000000000403794 align 2**2
         filesz 0x0000000000000174 memsz 0x0000000000000174 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000004cf8 vaddr 0x0000000000405cf8 paddr 0x0000000000405cf8 align 2**0
         filesz 0x0000000000000308 memsz 0x0000000000000308 flags r--

Dynamic Section:
  NEEDED               libstdc++.so.6
  NEEDED               libc.so.6
  INIT                 0x0000000000401000
  FINI                 0x0000000000402378
  INIT_ARRAY           0x0000000000405cf8
  INIT_ARRAYSZ         0x0000000000000010
  FINI_ARRAY           0x0000000000405d08
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x00000000004003a0
  STRTAB               0x0000000000400608
  SYMTAB               0x00000000004003c8
  STRSZ                0x0000000000000170
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000406000
  PLTRELSZ             0x0000000000000180
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000400910
  RELA                 0x0000000000400808
  RELASZ               0x0000000000000108
  RELAENT              0x0000000000000018
  VERNEED              0x00000000004007a8
  VERNEEDNUM           0x0000000000000002
  VERSYM               0x0000000000400778

Version References:
  required from libstdc++.so.6:
    0x08922974 0x00 05 GLIBCXX_3.4
    0x056bafd3 0x00 03 CXXABI_1.3
  required from libc.so.6:
    0x0d696917 0x00 04 GLIBC_2.7
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000400318  0000000000400318  00000318  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.gnu.property 00000020  0000000000400338  0000000000400338  00000338  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000400358  0000000000400358  00000358  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .note.ABI-tag 00000020  000000000040037c  000000000040037c  0000037c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .gnu.hash     00000024  00000000004003a0  00000000004003a0  000003a0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynsym       00000240  00000000004003c8  00000000004003c8  000003c8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .dynstr       00000170  0000000000400608  0000000000400608  00000608  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version  00000030  0000000000400778  0000000000400778  00000778  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .gnu.version_r 00000060  00000000004007a8  00000000004007a8  000007a8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.dyn     00000108  0000000000400808  0000000000400808  00000808  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .rela.plt     00000180  0000000000400910  0000000000400910  00000910  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 11 .init         0000001b  0000000000401000  0000000000401000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt          00000110  0000000000401020  0000000000401020  00001020  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .plt.sec      00000100  0000000000401130  0000000000401130  00001130  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .text         00001145  0000000000401230  0000000000401230  00001230  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .fini         0000000d  0000000000402378  0000000000402378  00002378  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 16 .rodata       00000793  0000000000403000  0000000000403000  00003000  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame_hdr 00000174  0000000000403794  0000000000403794  00003794  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .eh_frame     000005d0  0000000000403908  0000000000403908  00003908  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 19 .init_array   00000010  0000000000405cf8  0000000000405cf8  00004cf8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .fini_array   00000008  0000000000405d08  0000000000405d08  00004d08  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .data.rel.ro  000000f8  0000000000405d10  0000000000405d10  00004d10  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .dynamic      000001e0  0000000000405e08  0000000000405e08  00004e08  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .got          00000018  0000000000405fe8  0000000000405fe8  00004fe8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 24 .got.plt      00000098  0000000000406000  0000000000406000  00005000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 25 .data         00000380  00000000004060a0  00000000004060a0  000050a0  2**5
                  CONTENTS, ALLOC, LOAD, DATA
 26 .bss          00000010  0000000000406420  0000000000406420  00005420  2**3
                  ALLOC
 27 .comment      0000002b  0000000000000000  0000000000000000  00005420  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000400318 l    d  .interp	0000000000000000              .interp
0000000000400338 l    d  .note.gnu.property	0000000000000000              .note.gnu.property
0000000000400358 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
000000000040037c l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
00000000004003a0 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000004003c8 l    d  .dynsym	0000000000000000              .dynsym
0000000000400608 l    d  .dynstr	0000000000000000              .dynstr
0000000000400778 l    d  .gnu.version	0000000000000000              .gnu.version
00000000004007a8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000400808 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000400910 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000401000 l    d  .init	0000000000000000              .init
0000000000401020 l    d  .plt	0000000000000000              .plt
0000000000401130 l    d  .plt.sec	0000000000000000              .plt.sec
0000000000401230 l    d  .text	0000000000000000              .text
0000000000402378 l    d  .fini	0000000000000000              .fini
0000000000403000 l    d  .rodata	0000000000000000              .rodata
0000000000403794 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000403908 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000405cf8 l    d  .init_array	0000000000000000              .init_array
0000000000405d08 l    d  .fini_array	0000000000000000              .fini_array
0000000000405d10 l    d  .data.rel.ro	0000000000000000              .data.rel.ro
0000000000405e08 l    d  .dynamic	0000000000000000              .dynamic
0000000000405fe8 l    d  .got	0000000000000000              .got
0000000000406000 l    d  .got.plt	0000000000000000              .got.plt
00000000004060a0 l    d  .data	0000000000000000              .data
0000000000406420 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000401270 l     F .text	0000000000000000              deregister_tm_clones
00000000004012a0 l     F .text	0000000000000000              register_tm_clones
00000000004012e0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000406428 l     O .bss	0000000000000001              completed.8061
0000000000405d08 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000401310 l     F .text	0000000000000000              frame_dummy
0000000000405cf8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.cpp
0000000000000000 l    df *ABS*	0000000000000000              phases.cpp
00000000004031a0 l     O .rodata	0000000000000001              std::piecewise_construct
00000000004031a1 l     O .rodata	0000000000000001              std::allocator_arg
00000000004031a2 l     O .rodata	0000000000000001              std::ignore
0000000000406429 l     O .bss	0000000000000001              std::__ioinit
00000000004031a4 l     O .rodata	0000000000000004              __gnu_cxx::__default_lock_policy
00000000004031a8 l     O .rodata	0000000000000001              std::defer_lock
00000000004031a9 l     O .rodata	0000000000000001              std::try_to_lock
00000000004031aa l     O .rodata	0000000000000001              std::adopt_lock
00000000004031ac l     O .rodata	0000000000000004              std::regex_constants::icase
00000000004031b0 l     O .rodata	0000000000000004              std::regex_constants::nosubs
00000000004031b4 l     O .rodata	0000000000000004              std::regex_constants::optimize
00000000004031b8 l     O .rodata	0000000000000004              std::regex_constants::collate
00000000004031bc l     O .rodata	0000000000000004              std::regex_constants::ECMAScript
00000000004031c0 l     O .rodata	0000000000000004              std::regex_constants::basic
00000000004031c4 l     O .rodata	0000000000000004              std::regex_constants::extended
00000000004031c8 l     O .rodata	0000000000000004              std::regex_constants::awk
00000000004031cc l     O .rodata	0000000000000004              std::regex_constants::grep
00000000004031d0 l     O .rodata	0000000000000004              std::regex_constants::egrep
00000000004031d4 l     O .rodata	0000000000000004              std::regex_constants::__polynomial
00000000004031d8 l     O .rodata	0000000000000004              std::regex_constants::match_default
00000000004031dc l     O .rodata	0000000000000004              std::regex_constants::match_not_bol
00000000004031e0 l     O .rodata	0000000000000004              std::regex_constants::match_not_eol
00000000004031e4 l     O .rodata	0000000000000004              std::regex_constants::match_not_bow
00000000004031e8 l     O .rodata	0000000000000004              std::regex_constants::match_not_eow
00000000004031ec l     O .rodata	0000000000000004              std::regex_constants::match_any
00000000004031f0 l     O .rodata	0000000000000004              std::regex_constants::match_not_null
00000000004031f4 l     O .rodata	0000000000000004              std::regex_constants::match_continuous
00000000004031f8 l     O .rodata	0000000000000004              std::regex_constants::match_prev_avail
00000000004031fc l     O .rodata	0000000000000004              std::regex_constants::format_default
0000000000403200 l     O .rodata	0000000000000004              std::regex_constants::format_sed
0000000000403204 l     O .rodata	0000000000000004              std::regex_constants::format_no_copy
0000000000403208 l     O .rodata	0000000000000004              std::regex_constants::format_first_only
000000000040320c l     O .rodata	0000000000000004              std::regex_constants::error_collate
0000000000403210 l     O .rodata	0000000000000004              std::regex_constants::error_ctype
0000000000403214 l     O .rodata	0000000000000004              std::regex_constants::error_escape
0000000000403218 l     O .rodata	0000000000000004              std::regex_constants::error_backref
000000000040321c l     O .rodata	0000000000000004              std::regex_constants::error_brack
0000000000403220 l     O .rodata	0000000000000004              std::regex_constants::error_paren
0000000000403224 l     O .rodata	0000000000000004              std::regex_constants::error_brace
0000000000403228 l     O .rodata	0000000000000004              std::regex_constants::error_badbrace
000000000040322c l     O .rodata	0000000000000004              std::regex_constants::error_range
0000000000403230 l     O .rodata	0000000000000004              std::regex_constants::error_space
0000000000403234 l     O .rodata	0000000000000004              std::regex_constants::error_badrepeat
0000000000403238 l     O .rodata	0000000000000004              std::regex_constants::error_complexity
000000000040323c l     O .rodata	0000000000000004              std::regex_constants::error_stack
0000000000403240 l     O .rodata	0000000000000008              std::__detail::_S_invalid_state_id
0000000000406360 l     O .data	0000000000000024              phase_2_nums
00000000004017ac l     F .text	0000000000000048              hope(int)
0000000000406390 l     O .data	0000000000000018              phase_6_nums
0000000000401e21 l     F .text	000000000000004d              __static_initialization_and_destruction_0(int, int)
0000000000401e6e l     F .text	0000000000000019              _GLOBAL__sub_I_phase_1_str
0000000000000000 l    df *ABS*	0000000000000000              utils.cpp
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000403ed4 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000403794 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000405e08 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000405d08 l       .init_array	0000000000000000              __init_array_end
0000000000405cf8 l       .init_array	0000000000000000              __init_array_start
0000000000406000 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000403340  w    O .rodata	000000000000000d              typeinfo name for worldline1
0000000000405d60  w    O .data.rel.ro	0000000000000028              vtable for worldline1
0000000000000000       F *UND*	0000000000000000              printf@@GLIBC_2.2.5
00000000004020da g     F .text	0000000000000066              slow_put
0000000000406420 g     O .bss	0000000000000008              stdout@@GLIBC_2.2.5
0000000000401db5 g     F .text	000000000000006c              secret_phase
000000000040202a  w    F .text	000000000000001e              worldline3::dmail(int)
0000000000405df8  w    O .data.rel.ro	0000000000000010              typeinfo for worldline
0000000000406420 g       .data	0000000000000000              _edata
0000000000401ec8  w    F .text	0000000000000039              worldline1::worldline1()
0000000000401fc8  w    F .text	0000000000000039              worldline3::worldline3()
0000000000000000       F *UND*	0000000000000000              nanosleep@@GLIBC_2.2.5
00000000004063c0 g     O .data	0000000000000060              initialNodes
0000000000403330  w    O .rodata	000000000000000d              typeinfo name for worldline2
00000000004060a0  w      .data	0000000000000000              data_start
00000000004019eb g     F .text	000000000000002f              get_val
0000000000403000 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000405dc8  w    O .data.rel.ro	0000000000000018              typeinfo for worldline2
0000000000401faa  w    F .text	000000000000001e              worldline2::dmail(int)
0000000000401a1a g     F .text	0000000000000011              build_queue
0000000000401545 g     F .text	0000000000000048              phase_1
000000000040138f g     F .text	0000000000000153              main
00000000004014e2 g     F .text	0000000000000063              string_not_equal
00000000004021a6 g     F .text	0000000000000079              read_six_numbers
0000000000403320  w    O .rodata	000000000000000d              typeinfo name for worldline3
00000000004060a8 g     O .data	0000000000000000              .hidden __dso_handle
0000000000405de0  w    O .data.rel.ro	0000000000000018              typeinfo for worldline1
0000000000403350  w    O .rodata	000000000000000b              typeinfo name for worldline
0000000000401fc8  w    F .text	0000000000000039              worldline3::worldline3()
0000000000401316 g     F .text	0000000000000079              read_line
0000000000401d66 g     F .text	000000000000004f              print_answer_line_inorder(int*)
000000000040158d g     F .text	000000000000008e              phase_2
000000000040221f g     F .text	00000000000000d7              true_ending
0000000000401ec8  w    F .text	0000000000000039              worldline1::worldline1()
0000000000401f16  w    F .text	0000000000000013              worldline1::isEveryoneEqual()
0000000000000000       O *UND*	0000000000000000              vtable for __cxxabiv1::__class_type_info@@CXXABI_1.3
0000000000402002  w    F .text	0000000000000013              worldline3::isWorldPeace()
0000000000402378 g     F .fini	0000000000000000              .hidden _fini
0000000000401260 g     F .text	0000000000000005              .hidden _dl_relocate_static_pie
0000000000000000       F *UND*	0000000000000000              __cxa_atexit@@GLIBC_2.2.5
000000000040161b g     F .text	0000000000000191              phase_3
0000000000402048 g     F .text	0000000000000092              explode_bomb
0000000000000000       F *UND*	0000000000000000              __isoc99_sscanf@@GLIBC_2.7
0000000000401230 g     F .text	000000000000002f              _start
0000000000000000       F *UND*	0000000000000000              fclose@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              operator new(unsigned long)@@GLIBCXX_3.4
0000000000401a96 g     F .text	00000000000001e0              build_target
0000000000405db0  w    O .data.rel.ro	0000000000000018              typeinfo for worldline3
00000000004017f4 g     F .text	000000000000009f              phase_4
0000000000401000 g     F .init	0000000000000000              .hidden _init
0000000000406420 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000401f96  w    F .text	0000000000000013              worldline2::isEveryoneEqual()
0000000000000000       F *UND*	0000000000000000              fflush@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              fopen@@GLIBC_2.2.5
0000000000401e88  w    F .text	000000000000001d              worldline::worldline()
0000000000000000       F *UND*	0000000000000000              exit@@GLIBC_2.2.5
00000000004060c0 g     O .data	000000000000028a              phase_1_str
0000000000402016  w    F .text	0000000000000013              worldline3::isEveryoneEqual()
0000000000000000       O *UND*	0000000000000000              vtable for __cxxabiv1::__si_class_type_info@@CXXABI_1.3
0000000000401893 g     F .text	0000000000000128              phase_5
00000000004060a0 g       .data	0000000000000000              __data_start
0000000000406430 g       .bss	0000000000000000              _end
0000000000401f02  w    F .text	0000000000000013              worldline1::isWorldPeace()
0000000000000000       F *UND*	0000000000000000              getchar@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              putchar@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              strcmp@@GLIBC_2.2.5
0000000000401f48  w    F .text	0000000000000039              worldline2::worldline2()
0000000000405d88  w    O .data.rel.ro	0000000000000028              vtable for worldline
0000000000401a2b g     F .text	000000000000006b              check_answer
0000000000406420 g       .bss	0000000000000000              __bss_start
0000000000405d10  w    O .data.rel.ro	0000000000000028              vtable for worldline3
0000000000000000       F *UND*	0000000000000000              std::ios_base::Init::Init()@@GLIBCXX_3.4
0000000000000000       F *UND*	0000000000000000              puts@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              feof@@GLIBC_2.2.5
0000000000402300 g     F .text	0000000000000065              __libc_csu_init
0000000000000000       F *UND*	0000000000000000              fgetc@@GLIBC_2.2.5
0000000000401ea6  w    F .text	0000000000000022              worldline::is_phase5_passable()
0000000000401c76 g     F .text	000000000000009d              phase_6
00000000004019bb g     F .text	0000000000000030              put_val
0000000000402140 g     F .text	0000000000000066              slow_slow_put
0000000000401e88  w    F .text	000000000000001d              worldline::worldline()
0000000000401d13 g     F .text	0000000000000053              print_candidate_line_inorder(node*)
0000000000405d38  w    O .data.rel.ro	0000000000000028              vtable for worldline2
0000000000401f48  w    F .text	0000000000000039              worldline2::worldline2()
0000000000402370 g     F .text	0000000000000005              __libc_csu_fini
0000000000401f2a  w    F .text	000000000000001e              worldline1::dmail(int)
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000000000       F *UND*	0000000000000000              __cxa_pure_virtual@@CXXABI_1.3
000000000040634c g     O .data	0000000000000004              phase_1_offset
0000000000401f82  w    F .text	0000000000000013              worldline2::isWorldPeace()
0000000000000000       F *UND*	0000000000000000              std::ios_base::Init::~Init()@@GLIBCXX_3.4



Disassembly of section .init:

0000000000401000 <_init>:
_init():
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e1 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fe1]        # 405ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 4f 00 00    	push   QWORD PTR [rip+0x4fe2]        # 406008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 4f 00 00 	bnd jmp QWORD PTR [rip+0x4fe3]        # 406010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nop    DWORD PTR [rax]
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401130 <printf@plt>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	f2 ff 25 dd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4edd]        # 406018 <printf@GLIBC_2.2.5>
  40113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401140 <nanosleep@plt>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	f2 ff 25 d5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ed5]        # 406020 <nanosleep@GLIBC_2.2.5>
  40114b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401150 <__cxa_atexit@plt>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	f2 ff 25 cd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ecd]        # 406028 <__cxa_atexit@GLIBC_2.2.5>
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401160 <__isoc99_sscanf@plt>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	f2 ff 25 c5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ec5]        # 406030 <__isoc99_sscanf@GLIBC_2.7>
  40116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401170 <fclose@plt>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	f2 ff 25 bd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ebd]        # 406038 <fclose@GLIBC_2.2.5>
  40117b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401180 <operator new(unsigned long)@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 b5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4eb5]        # 406040 <operator new(unsigned long)@GLIBCXX_3.4>
  40118b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401190 <fflush@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 ad 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ead]        # 406048 <fflush@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011a0 <fopen@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 a5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ea5]        # 406050 <fopen@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011b0 <exit@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 9d 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e9d]        # 406058 <exit@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <getchar@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 95 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e95]        # 406060 <getchar@GLIBC_2.2.5>
  4011cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011d0 <putchar@plt>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	f2 ff 25 8d 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e8d]        # 406068 <putchar@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011e0 <strcmp@plt>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	f2 ff 25 85 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e85]        # 406070 <strcmp@GLIBC_2.2.5>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011f0 <std::ios_base::Init::Init()@plt>:
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	f2 ff 25 7d 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e7d]        # 406078 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  4011fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401200 <puts@plt>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	f2 ff 25 75 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e75]        # 406080 <puts@GLIBC_2.2.5>
  40120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401210 <feof@plt>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	f2 ff 25 6d 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e6d]        # 406088 <feof@GLIBC_2.2.5>
  40121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401220 <fgetc@plt>:
  401220:	f3 0f 1e fa          	endbr64 
  401224:	f2 ff 25 65 4e 00 00 	bnd jmp QWORD PTR [rip+0x4e65]        # 406090 <fgetc@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000401230 <_start>:
_start():
  401230:	f3 0f 1e fa          	endbr64 
  401234:	31 ed                	xor    ebp,ebp
  401236:	49 89 d1             	mov    r9,rdx
  401239:	5e                   	pop    rsi
  40123a:	48 89 e2             	mov    rdx,rsp
  40123d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401241:	50                   	push   rax
  401242:	54                   	push   rsp
  401243:	49 c7 c0 70 23 40 00 	mov    r8,0x402370
  40124a:	48 c7 c1 00 23 40 00 	mov    rcx,0x402300
  401251:	48 c7 c7 8f 13 40 00 	mov    rdi,0x40138f
  401258:	ff 15 8a 4d 00 00    	call   QWORD PTR [rip+0x4d8a]        # 405fe8 <__libc_start_main@GLIBC_2.2.5>
  40125e:	f4                   	hlt    
  40125f:	90                   	nop

0000000000401260 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  401260:	f3 0f 1e fa          	endbr64 
  401264:	c3                   	ret    
  401265:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40126c:	00 00 00 
  40126f:	90                   	nop

0000000000401270 <deregister_tm_clones>:
deregister_tm_clones():
  401270:	b8 20 64 40 00       	mov    eax,0x406420
  401275:	48 3d 20 64 40 00    	cmp    rax,0x406420
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    eax,0x0
  401282:	48 85 c0             	test   rax,rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 20 64 40 00       	mov    edi,0x406420
  40128c:	ff e0                	jmp    rax
  40128e:	66 90                	xchg   ax,ax
  401290:	c3                   	ret    
  401291:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004012a0 <register_tm_clones>:
register_tm_clones():
  4012a0:	be 20 64 40 00       	mov    esi,0x406420
  4012a5:	48 81 ee 20 64 40 00 	sub    rsi,0x406420
  4012ac:	48 89 f0             	mov    rax,rsi
  4012af:	48 c1 ee 3f          	shr    rsi,0x3f
  4012b3:	48 c1 f8 03          	sar    rax,0x3
  4012b7:	48 01 c6             	add    rsi,rax
  4012ba:	48 d1 fe             	sar    rsi,1
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    eax,0x0
  4012c4:	48 85 c0             	test   rax,rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 20 64 40 00       	mov    edi,0x406420
  4012ce:	ff e0                	jmp    rax
  4012d0:	c3                   	ret    
  4012d1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004012e0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	80 3d 3d 51 00 00 00 	cmp    BYTE PTR [rip+0x513d],0x0        # 406428 <completed.8061>
  4012eb:	75 13                	jne    401300 <__do_global_dtors_aux+0x20>
  4012ed:	55                   	push   rbp
  4012ee:	48 89 e5             	mov    rbp,rsp
  4012f1:	e8 7a ff ff ff       	call   401270 <deregister_tm_clones>
  4012f6:	c6 05 2b 51 00 00 01 	mov    BYTE PTR [rip+0x512b],0x1        # 406428 <completed.8061>
  4012fd:	5d                   	pop    rbp
  4012fe:	c3                   	ret    
  4012ff:	90                   	nop
  401300:	c3                   	ret    
  401301:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401310 <frame_dummy>:
frame_dummy():
  401310:	f3 0f 1e fa          	endbr64 
  401314:	eb 8a                	jmp    4012a0 <register_tm_clones>

0000000000401316 <read_line>:
read_line():
  401316:	f3 0f 1e fa          	endbr64 
  40131a:	55                   	push   rbp
  40131b:	48 89 e5             	mov    rbp,rsp
  40131e:	48 83 ec 20          	sub    rsp,0x20
  401322:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401326:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  40132d:	83 7d fc 28          	cmp    DWORD PTR [rbp-0x4],0x28
  401331:	7f 39                	jg     40136c <read_line+0x56>
  401333:	e8 88 fe ff ff       	call   4011c0 <getchar@plt>
  401338:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  40133b:	80 7d fb 0a          	cmp    BYTE PTR [rbp-0x5],0xa
  40133f:	75 12                	jne    401353 <read_line+0x3d>
  401341:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401344:	48 63 d0             	movsxd rdx,eax
  401347:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40134b:	48 01 d0             	add    rax,rdx
  40134e:	c6 00 00             	mov    BYTE PTR [rax],0x0
  401351:	eb 3a                	jmp    40138d <read_line+0x77>
  401353:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401356:	48 63 d0             	movsxd rdx,eax
  401359:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40135d:	48 01 c2             	add    rdx,rax
  401360:	0f b6 45 fb          	movzx  eax,BYTE PTR [rbp-0x5]
  401364:	88 02                	mov    BYTE PTR [rdx],al
  401366:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  40136a:	eb c1                	jmp    40132d <read_line+0x17>
  40136c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40136f:	48 63 d0             	movsxd rdx,eax
  401372:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401376:	48 01 d0             	add    rax,rdx
  401379:	c6 00 00             	mov    BYTE PTR [rax],0x0
  40137c:	e8 3f fe ff ff       	call   4011c0 <getchar@plt>
  401381:	83 f8 0a             	cmp    eax,0xa
  401384:	0f 95 c0             	setne  al
  401387:	84 c0                	test   al,al
  401389:	74 02                	je     40138d <read_line+0x77>
  40138b:	eb ef                	jmp    40137c <read_line+0x66>
  40138d:	c9                   	leave  
  40138e:	c3                   	ret    

000000000040138f <main>:
main():
  40138f:	f3 0f 1e fa          	endbr64 
  401393:	55                   	push   rbp
  401394:	48 89 e5             	mov    rbp,rsp
  401397:	48 83 ec 30          	sub    rsp,0x30
  40139b:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  4013a2:	00 
  4013a3:	48 8d 3d 5e 1c 00 00 	lea    rdi,[rip+0x1c5e]        # 403008 <_IO_stdin_used+0x8>
  4013aa:	e8 51 fe ff ff       	call   401200 <puts@plt>
  4013af:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4013b3:	48 89 c7             	mov    rdi,rax
  4013b6:	e8 5b ff ff ff       	call   401316 <read_line>
  4013bb:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4013bf:	48 89 c7             	mov    rdi,rax
  4013c2:	e8 7e 01 00 00       	call   401545 <phase_1>
  4013c7:	48 8d 3d 82 1c 00 00 	lea    rdi,[rip+0x1c82]        # 403050 <_IO_stdin_used+0x50>
  4013ce:	e8 2d fe ff ff       	call   401200 <puts@plt>
  4013d3:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4013d7:	48 89 c7             	mov    rdi,rax
  4013da:	e8 37 ff ff ff       	call   401316 <read_line>
  4013df:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4013e3:	48 89 c7             	mov    rdi,rax
  4013e6:	e8 a2 01 00 00       	call   40158d <phase_2>
  4013eb:	48 8d 3d 87 1c 00 00 	lea    rdi,[rip+0x1c87]        # 403079 <_IO_stdin_used+0x79>
  4013f2:	e8 09 fe ff ff       	call   401200 <puts@plt>
  4013f7:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4013fb:	48 89 c7             	mov    rdi,rax
  4013fe:	e8 13 ff ff ff       	call   401316 <read_line>
  401403:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401407:	48 89 c7             	mov    rdi,rax
  40140a:	e8 0c 02 00 00       	call   40161b <phase_3>
  40140f:	48 8d 3d 80 1c 00 00 	lea    rdi,[rip+0x1c80]        # 403096 <_IO_stdin_used+0x96>
  401416:	e8 e5 fd ff ff       	call   401200 <puts@plt>
  40141b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40141f:	48 89 c7             	mov    rdi,rax
  401422:	e8 ef fe ff ff       	call   401316 <read_line>
  401427:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40142b:	48 89 c7             	mov    rdi,rax
  40142e:	e8 c1 03 00 00       	call   4017f4 <phase_4>
  401433:	48 8d 3d 6e 1c 00 00 	lea    rdi,[rip+0x1c6e]        # 4030a8 <_IO_stdin_used+0xa8>
  40143a:	e8 c1 fd ff ff       	call   401200 <puts@plt>
  40143f:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401443:	48 89 c7             	mov    rdi,rax
  401446:	e8 cb fe ff ff       	call   401316 <read_line>
  40144b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40144f:	48 89 c7             	mov    rdi,rax
  401452:	e8 3c 04 00 00       	call   401893 <phase_5>
  401457:	48 8d 3d 6d 1c 00 00 	lea    rdi,[rip+0x1c6d]        # 4030cb <_IO_stdin_used+0xcb>
  40145e:	e8 9d fd ff ff       	call   401200 <puts@plt>
  401463:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401467:	48 89 c7             	mov    rdi,rax
  40146a:	e8 a7 fe ff ff       	call   401316 <read_line>
  40146f:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401473:	48 89 c7             	mov    rdi,rax
  401476:	e8 fb 07 00 00       	call   401c76 <phase_6>
  40147b:	48 8d 3d 66 1c 00 00 	lea    rdi,[rip+0x1c66]        # 4030e8 <_IO_stdin_used+0xe8>
  401482:	e8 79 fd ff ff       	call   401200 <puts@plt>
  401487:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  40148c:	74 4d                	je     4014db <main+0x14c>
  40148e:	48 8d 3d 8b 1c 00 00 	lea    rdi,[rip+0x1c8b]        # 403120 <_IO_stdin_used+0x120>
  401495:	e8 40 0c 00 00       	call   4020da <slow_put>
  40149a:	48 8d 3d a6 1c 00 00 	lea    rdi,[rip+0x1ca6]        # 403147 <_IO_stdin_used+0x147>
  4014a1:	e8 34 0c 00 00       	call   4020da <slow_put>
  4014a6:	48 8d 3d a7 1c 00 00 	lea    rdi,[rip+0x1ca7]        # 403154 <_IO_stdin_used+0x154>
  4014ad:	e8 8e 0c 00 00       	call   402140 <slow_slow_put>
  4014b2:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4014b6:	48 89 c7             	mov    rdi,rax
  4014b9:	e8 58 fe ff ff       	call   401316 <read_line>
  4014be:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4014c2:	48 89 c7             	mov    rdi,rax
  4014c5:	e8 eb 08 00 00       	call   401db5 <secret_phase>
  4014ca:	48 8d 3d 9f 1c 00 00 	lea    rdi,[rip+0x1c9f]        # 403170 <_IO_stdin_used+0x170>
  4014d1:	e8 2a fd ff ff       	call   401200 <puts@plt>
  4014d6:	e8 44 0d 00 00       	call   40221f <true_ending>
  4014db:	b8 00 00 00 00       	mov    eax,0x0
  4014e0:	c9                   	leave  
  4014e1:	c3                   	ret    

00000000004014e2 <string_not_equal>:
string_not_equal():
  4014e2:	f3 0f 1e fa          	endbr64 
  4014e6:	55                   	push   rbp
  4014e7:	48 89 e5             	mov    rbp,rsp
  4014ea:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4014ee:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4014f2:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4014f9:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4014fc:	48 63 d0             	movsxd rdx,eax
  4014ff:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401503:	48 01 d0             	add    rax,rdx
  401506:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401509:	84 c0                	test   al,al
  40150b:	74 31                	je     40153e <string_not_equal+0x5c>
  40150d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401510:	48 63 d0             	movsxd rdx,eax
  401513:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401517:	48 01 d0             	add    rax,rdx
  40151a:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  40151d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401520:	48 63 c8             	movsxd rcx,eax
  401523:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401527:	48 01 c8             	add    rax,rcx
  40152a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40152d:	38 c2                	cmp    dl,al
  40152f:	74 07                	je     401538 <string_not_equal+0x56>
  401531:	b8 00 00 00 00       	mov    eax,0x0
  401536:	eb 0b                	jmp    401543 <string_not_equal+0x61>
  401538:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  40153c:	eb bb                	jmp    4014f9 <string_not_equal+0x17>
  40153e:	b8 01 00 00 00       	mov    eax,0x1
  401543:	5d                   	pop    rbp
  401544:	c3                   	ret    

0000000000401545 <phase_1>:
phase_1():
  401545:	f3 0f 1e fa          	endbr64 
  401549:	55                   	push   rbp
  40154a:	48 89 e5             	mov    rbp,rsp
  40154d:	48 83 ec 20          	sub    rsp,0x20
  401551:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401555:	8b 05 f1 4d 00 00    	mov    eax,DWORD PTR [rip+0x4df1]        # 40634c <phase_1_offset>
  40155b:	48 98                	cdqe   
  40155d:	48 8d 15 5c 4b 00 00 	lea    rdx,[rip+0x4b5c]        # 4060c0 <phase_1_str>
  401564:	48 01 d0             	add    rax,rdx
  401567:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40156b:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  40156f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401573:	48 89 d6             	mov    rsi,rdx
  401576:	48 89 c7             	mov    rdi,rax
  401579:	e8 64 ff ff ff       	call   4014e2 <string_not_equal>
  40157e:	83 f0 01             	xor    eax,0x1
  401581:	84 c0                	test   al,al
  401583:	74 05                	je     40158a <phase_1+0x45>
  401585:	e8 be 0a 00 00       	call   402048 <explode_bomb>
  40158a:	90                   	nop
  40158b:	c9                   	leave  
  40158c:	c3                   	ret    

000000000040158d <phase_2>:
phase_2():
  40158d:	f3 0f 1e fa          	endbr64 
  401591:	55                   	push   rbp
  401592:	48 89 e5             	mov    rbp,rsp
  401595:	48 83 ec 30          	sub    rsp,0x30
  401599:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  40159d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4015a1:	48 8d 35 b8 4d 00 00 	lea    rsi,[rip+0x4db8]        # 406360 <phase_2_nums>
  4015a8:	48 89 c7             	mov    rdi,rax
  4015ab:	e8 f6 0b 00 00       	call   4021a6 <read_six_numbers>
  4015b0:	48 8d 05 a9 4d 00 00 	lea    rax,[rip+0x4da9]        # 406360 <phase_2_nums>
  4015b7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4015bb:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  4015c2:	83 7d fc 05          	cmp    DWORD PTR [rbp-0x4],0x5
  4015c6:	7f 50                	jg     401618 <phase_2+0x8b>
  4015c8:	8b 15 ae 4d 00 00    	mov    edx,DWORD PTR [rip+0x4dae]        # 40637c <phase_2_nums+0x1c>
  4015ce:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4015d1:	48 98                	cdqe   
  4015d3:	48 c1 e0 02          	shl    rax,0x2
  4015d7:	48 8d 48 fc          	lea    rcx,[rax-0x4]
  4015db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4015df:	48 01 c8             	add    rax,rcx
  4015e2:	8b 00                	mov    eax,DWORD PTR [rax]
  4015e4:	0f af d0             	imul   edx,eax
  4015e7:	8b 05 93 4d 00 00    	mov    eax,DWORD PTR [rip+0x4d93]        # 406380 <phase_2_nums+0x20>
  4015ed:	01 d0                	add    eax,edx
  4015ef:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  4015f2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4015f5:	48 98                	cdqe   
  4015f7:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4015fe:	00 
  4015ff:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401603:	48 01 d0             	add    rax,rdx
  401606:	8b 00                	mov    eax,DWORD PTR [rax]
  401608:	39 45 ec             	cmp    DWORD PTR [rbp-0x14],eax
  40160b:	74 05                	je     401612 <phase_2+0x85>
  40160d:	e8 36 0a 00 00       	call   402048 <explode_bomb>
  401612:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401616:	eb aa                	jmp    4015c2 <phase_2+0x35>
  401618:	90                   	nop
  401619:	c9                   	leave  
  40161a:	c3                   	ret    

000000000040161b <phase_3>:
phase_3():
  40161b:	f3 0f 1e fa          	endbr64 
  40161f:	55                   	push   rbp
  401620:	48 89 e5             	mov    rbp,rsp
  401623:	48 83 ec 30          	sub    rsp,0x30
  401627:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  40162b:	48 8d 75 ef          	lea    rsi,[rbp-0x11]           # char c
  40162f:	48 8d 4d f0          	lea    rcx,[rbp-0x10]            # int b
  401633:	48 8d 55 f4          	lea    rdx,[rbp-0xc]              # int a
  401637:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40163b:	49 89 f0             	mov    r8,rsi
  40163e:	48 8d 35 03 1c 00 00 	lea    rsi,[rip+0x1c03]        # 403248 <std::__detail::_S_invalid_state_id+0x8>
  401645:	48 89 c7             	mov    rdi,rax
  401648:	b8 00 00 00 00       	mov    eax,0x0
  40164d:	e8 0e fb ff ff       	call   401160 <__isoc99_sscanf@plt> # 读入 "%d %d %c"，存储在三个局部变量
  401652:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax      # 检测是否读入了三个变量
  401655:	83 7d f8 03          	cmp    DWORD PTR [rbp-0x8],0x3
  401659:	74 05                	je     401660 <phase_3+0x45>
  40165b:	e8 e8 09 00 00       	call   402048 <explode_bomb>
  401660:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]      # int x = a
  401663:	3d 62 02 00 00       	cmp    eax,0x262                    # x == 610
  401668:	0f 84 fb 00 00 00    	je     401769 <phase_3+0x14e>       # goto  p2 + 334
  40166e:	3d 62 02 00 00       	cmp    eax,0x262                    # x > 610
  401673:	0f 8f 05 01 00 00    	jg     40177e <phase_3+0x163>       # bomb!!
  401679:	3d e9 00 00 00       	cmp    eax,0xe9                     # x == 233  
  40167e:	0f 84 d0 00 00 00    	je     401754 <phase_3+0x139>       # goto phase_3 +  313
  401684:	3d e9 00 00 00       	cmp    eax,0xe9                     # x > 233
  401689:	0f 8f ef 00 00 00    	jg     40177e <phase_3+0x163>       # bomb
  40168f:	83 f8 22             	cmp    eax,0x22                     # x > 34
  401692:	7f 34                	jg     4016c8 <phase_3+0xad>        # goto phase_3 + 173
  401694:	85 c0                	test   eax,eax                      # x <= 0
  401696:	0f 8e e2 00 00 00    	jle    40177e <phase_3+0x163>       # bomb
  40169c:	83 f8 22             	cmp    eax,0x22                     # (unsigned int)x > 34
  40169f:	0f 87 d9 00 00 00    	ja     40177e <phase_3+0x163>
  4016a5:	89 c0                	mov    eax,eax
  4016a7:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]              # edx = a * 4
  4016ae:	00 
  4016af:	48 8d 05 9e 1b 00 00 	lea    rax,[rip+0x1b9e]        # 403254 <std::__detail::_S_invalid_state_id+0x14>
  4016b6:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]    # jump table: according to a
  4016b9:	48 98                	cdqe   
  4016bb:	48 8d 15 92 1b 00 00 	lea    rdx,[rip+0x1b92]        # 403254 <std::__detail::_S_invalid_state_id+0x14>
  4016c2:	48 01 d0             	add    rax,rdx
  4016c5:	3e ff e0             	notrack jmp rax
  4016c8:	83 f8 59             	cmp    eax,0x59
  4016cb:	74 72                	je     40173f <phase_3+0x124>   # goto phase_3 +  292
  4016cd:	e9 ac 00 00 00       	jmp    40177e <phase_3+0x163>   # bomb
  4016d2:	c6 45 ff 6f          	mov    BYTE PTR [rbp-0x1],0x6f  # d = 'o'
  4016d6:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  4016d9:	83 f8 01             	cmp    eax,0x1                  # b == 1
  4016dc:	0f 84 a3 00 00 00    	je     401785 <phase_3+0x16a>   # goto p2 + 384 (final check)
  4016e2:	e8 61 09 00 00       	call   402048 <explode_bomb>
  4016e7:	e9 99 00 00 00       	jmp    401785 <phase_3+0x16a>   # final check
  4016ec:	c6 45 ff 76          	mov    BYTE PTR [rbp-0x1],0x76  # d = 'v'
  4016f0:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  4016f3:	83 f8 03             	cmp    eax,0x3                  # eax == 3
  4016f6:	0f 84 8c 00 00 00    	je     401788 <phase_3+0x16d>
  4016fc:	e8 47 09 00 00       	call   402048 <explode_bomb>
  401701:	e9 82 00 00 00       	jmp    401788 <phase_3+0x16d>
  401706:	c6 45 ff 65          	mov    BYTE PTR [rbp-0x1],0x65  # d = 'e'
  40170a:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  40170d:	83 f8 08             	cmp    eax,0x8                  # eax == 8
  401710:	74 79                	je     40178b <phase_3+0x170>
  401712:	e8 31 09 00 00       	call   402048 <explode_bomb>
  401717:	eb 72                	jmp    40178b <phase_3+0x170>
  401719:	c6 45 ff 72          	mov    BYTE PTR [rbp-0x1],0x72  # d = 'r'
  40171d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  401720:	83 f8 15             	cmp    eax,0x15                 # eax == 21
  401723:	74 69                	je     40178e <phase_3+0x173>
  401725:	e8 1e 09 00 00       	call   402048 <explode_bomb>
  40172a:	eb 62                	jmp    40178e <phase_3+0x173>
  40172c:	c6 45 ff 66          	mov    BYTE PTR [rbp-0x1],0x66  # d = 'f'
  401730:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  401733:	83 f8 37             	cmp    eax,0x37                # eax == 55
  401736:	74 59                	je     401791 <phase_3+0x176>
  401738:	e8 0b 09 00 00       	call   402048 <explode_bomb>
  40173d:	eb 52                	jmp    401791 <phase_3+0x176>
  40173f:	c6 45 ff 6c          	mov    BYTE PTR [rbp-0x1],0x6c  # d = 'l'
  401743:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  401746:	3d 90 00 00 00       	cmp    eax,0x90                 # eax = 144
  40174b:	74 47                	je     401794 <phase_3+0x179>
  40174d:	e8 f6 08 00 00       	call   402048 <explode_bomb>
  401752:	eb 40                	jmp    401794 <phase_3+0x179>
  401754:	c6 45 ff 6f          	mov    BYTE PTR [rbp-0x1],0x6f  # d = 'o'
  401758:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10] # eax = b
  40175b:	3d 79 01 00 00       	cmp    eax,0x179              # eax = 377
  401760:	74 35                	je     401797 <phase_3+0x17c>
  401762:	e8 e1 08 00 00       	call   402048 <explode_bomb>
  401767:	eb 2e                	jmp    401797 <phase_3+0x17c>
  401769:	c6 45 ff 77          	mov    BYTE PTR [rbp-0x1],0x77    # d = "w"
  40176d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]   # eax = b
  401770:	3d db 03 00 00       	cmp    eax,0x3db                  # b == 987
  401775:	74 23                	je     40179a <phase_3+0x17f>     # goto phase_3+383
  401777:	e8 cc 08 00 00       	call   402048 <explode_bomb>
  40177c:	eb 1c                	jmp    40179a <phase_3+0x17f>
  40177e:	e8 c5 08 00 00       	call   402048 <explode_bomb>
  401783:	eb 16                	jmp    40179b <phase_3+0x180>
  401785:	90                   	nop
  401786:	eb 13                	jmp    40179b <phase_3+0x180>
  401788:	90                   	nop
  401789:	eb 10                	jmp    40179b <phase_3+0x180>
  40178b:	90                   	nop
  40178c:	eb 0d                	jmp    40179b <phase_3+0x180>
  40178e:	90                   	nop
  40178f:	eb 0a                	jmp    40179b <phase_3+0x180>
  401791:	90                   	nop
  401792:	eb 07                	jmp    40179b <phase_3+0x180>
  401794:	90                   	nop
  401795:	eb 04                	jmp    40179b <phase_3+0x180>
  401797:	90                   	nop
  401798:	eb 01                	jmp    40179b <phase_3+0x180>
  40179a:	90                   	nop
  40179b:	0f b6 45 ef          	movzx  eax,BYTE PTR [rbp-0x11]    # eax = c
  40179f:	38 45 ff             	cmp    BYTE PTR [rbp-0x1],al      # d == (char) c
  4017a2:	74 05                	je     4017a9 <phase_3+0x18e>
  4017a4:	e8 9f 08 00 00       	call   402048 <explode_bomb>
  4017a9:	90                   	nop
  4017aa:	c9                   	leave  
  4017ab:	c3                   	ret    

00000000004017ac <hope(int)>:
hope(int):
  4017ac:	f3 0f 1e fa          	endbr64 
  4017b0:	55                   	push   rbp
  4017b1:	48 89 e5             	mov    rbp,rsp
  4017b4:	48 83 ec 20          	sub    rsp,0x20
  4017b8:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi   # int n = edi
  4017bb:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0   # n == 0 ?
  4017bf:	75 07                	jne    4017c8 <hope(int)+0x1c>    # goto 0x4017c8
  4017c1:	b8 01 00 00 00       	mov    eax,0x1                    
  4017c6:	eb 2a                	jmp    4017f2 <hope(int)+0x46>    # ret 1
  4017c8:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]   # int x = edi
  4017cb:	d1 f8                	sar    eax,1                      # x >>= 1
  4017cd:	89 c7                	mov    edi,eax                    # hope(x) = hope(n >> 1)
  4017cf:	e8 d8 ff ff ff       	call   4017ac <hope(int)>
  4017d4:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax    # int y = hope(n >> 1)
  4017d7:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]   # int z = n
  4017da:	83 e0 01             	and    eax,0x1                    # int z = n & 0x1
  4017dd:	85 c0                	test   eax,eax
  4017df:	74 0b                	je     4017ec <hope(int)+0x40>    # z == 0
  4017e1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]    # eax = y
  4017e4:	0f af c0             	imul   eax,eax                    # eax = y * y
  4017e7:	c1 e0 02             	shl    eax,0x2                    # eax <<= 2, return eax
  4017ea:	eb 06                	jmp    4017f2 <hope(int)+0x46>
  4017ec:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]    # eax = y
  4017ef:	0f af c0             	imul   eax,eax                    # eax = y * y,  return eax
  4017f2:	c9                   	leave  
  4017f3:	c3                   	ret    

00000000004017f4 <phase_4>:
phase_4():
  4017f4:	f3 0f 1e fa          	endbr64 
  4017f8:	55                   	push   rbp
  4017f9:	48 89 e5             	mov    rbp,rsp
  4017fc:	48 83 ec 20          	sub    rsp,0x20
  401800:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi # char *str = input
  401804:	48 8d 55 f0          	lea    rdx,[rbp-0x10]           # 局部变量  long long int lli;
  401808:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40180c:	48 8d 35 cd 1a 00 00 	lea    rsi,[rip+0x1acd]        # 4032e0 <std::__detail::_S_invalid_state_id+0xa0> 
  401813:	48 89 c7             	mov    rdi,rax
  401816:	b8 00 00 00 00       	mov    eax,0x0
  40181b:	e8 40 f9 ff ff       	call   401160 <__isoc99_sscanf@plt> # "%lld"
  401820:	83 f8 01             	cmp    eax,0x1
  401823:	0f 95 c0             	setne  al
  401826:	84 c0                	test   al,al
  401828:	74 05                	je     40182f <phase_4+0x3b>        # goto 0x40182f
  40182a:	e8 19 08 00 00       	call   402048 <explode_bomb>
  40182f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]     # x = lli
  401833:	48 c1 f8 20          	sar    rax,0x20                     # x = x >> 32 算术
  401837:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax      # y = lli >> 32
  40183a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]     # x = lli
  40183e:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax      # z = (int)lli
  401841:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0  
  401845:	0f 9e c2             	setle  dl                           # dl = (y <= 0) = (x >> 32) <= 0
  401848:	83 7d fc 0e          	cmp    DWORD PTR [rbp-0x4],0xe      # y > 14
  40184c:	0f 9f c0             	setg   al                           # al = (y > 14) = (x >> 32) > 14
  40184f:	09 d0                	or     eax,edx                      # al = al | dx -> 0 < y <= 14
  401851:	0f b6 d0             	movzx  edx,al                       # edx = al
  401854:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0      
  401858:	0f 9e c0             	setle  al                           # al = (z <= 0)
  40185b:	0f b6 c0             	movzx  eax,al                         
  40185e:	09 c2                	or     edx,eax                      # edx = edx | eax -> z > 0
  401860:	83 7d f8 0e          	cmp    DWORD PTR [rbp-0x8],0xe      
  401864:	0f 9f c0             	setg   al                           # al = (z > 14)
  401867:	0f b6 c0             	movzx  eax,al
  40186a:	09 d0                	or     eax,edx                      # al = al | edx  -> z <= 14
  40186c:	85 c0                	test   eax,eax                      # al == 0
  40186e:	74 05                	je     401875 <phase_4+0x81>        # goto 0x401875
  401870:	e8 d3 07 00 00       	call   402048 <explode_bomb>
  401875:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]      
  401878:	89 c7                	mov    edi,eax                      # edi = y
  40187a:	e8 2d ff ff ff       	call   4017ac <hope(int)>           # hope(int) 需要返回  0x1000000
  40187f:	3d 00 00 00 01       	cmp    eax,0x1000000                # 24 -> 12 -> 6 -> 2 -> 1 
  401884:	0f 95 c0             	setne  al
  401887:	84 c0                	test   al,al
  401889:	74 05                	je     401890 <phase_4+0x9c>
  40188b:	e8 b8 07 00 00       	call   402048 <explode_bomb>
  401890:	90                   	nop
  401891:	c9                   	leave  
  401892:	c3                   	ret    

0000000000401893 <phase_5>:
phase_5():
  401893:	f3 0f 1e fa          	endbr64 
  401897:	55                   	push   rbp
  401898:	48 89 e5             	mov    rbp,rsp
  40189b:	53                   	push   rbx
  40189c:	48 83 ec 48          	sub    rsp,0x48
  4018a0:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi # char *ptr =str;
  4018a4:	48 8d 4d cc          	lea    rcx,[rbp-0x34]           # int a;
  4018a8:	48 8d 55 d0          	lea    rdx,[rbp-0x30]           # char* target
  4018ac:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4018b0:	48 8d 35 2e 1a 00 00 	lea    rsi,[rip+0x1a2e]        # 4032e5 <std::__detail::_S_invalid_state_id+0xa5>
  4018b7:	48 89 c7             	mov    rdi,rax                  # "%s %d"
  4018ba:	b8 00 00 00 00       	mov    eax,0x0
  4018bf:	e8 9c f8 ff ff       	call   401160 <__isoc99_sscanf@plt>
  4018c4:	83 f8 02             	cmp    eax,0x2
  4018c7:	0f 95 c0             	setne  al
  4018ca:	84 c0                	test   al,al
  4018cc:	74 05                	je     4018d3 <phase_5+0x40>
  4018ce:	e8 75 07 00 00       	call   402048 <explode_bomb>    # 读入失败
  4018d3:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4018d7:	48 8d 35 0d 1a 00 00 	lea    rsi,[rip+0x1a0d]        # 4032eb <std::__detail::_S_invalid_state_id+0xab> "杀杀杀！"
  4018de:	48 89 c7             	mov    rdi,rax
  4018e1:	e8 fa f8 ff ff       	call   4011e0 <strcmp@plt>
  4018e6:	85 c0                	test   eax,eax                # str
  4018e8:	75 1b                	jne    401905 <phase_5+0x72>   # goto jmp1;
  4018ea:	bf 10 00 00 00       	mov    edi,0x10
  4018ef:	e8 8c f8 ff ff       	call   401180 <operator new(unsigned long)@plt> # unsigned long * ulptr = new unsigned long(16);
  4018f4:	48 89 c3             	mov    rbx,rax
  4018f7:	48 89 df             	mov    rdi,rbx                                  # worldline1::worldline1(ulptr);
  4018fa:	e8 c9 05 00 00       	call   401ec8 <worldline1::worldline1()>
  4018ff:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
  401903:	eb 69                	jmp    40196e <phase_5+0xdb>
  401905:	48 8d 45 d0          	lea    rax,[rbp-0x30]         #  jmp1 :
  401909:	48 8d 35 e8 19 00 00 	lea    rsi,[rip+0x19e8]        # 4032f8 <std::__detail::_S_invalid_state_id+0xb8> "退退退。"
  401910:	48 89 c7             	mov    rdi,rax          
  401913:	e8 c8 f8 ff ff       	call   4011e0 <strcmp@plt>  
  401918:	85 c0                	test   eax,eax                # target == "退退退。" 
  40191a:	75 1b                	jne    401937 <phase_5+0xa4>  # != ? goto jmp2
  40191c:	bf 10 00 00 00       	mov    edi,0x10
  401921:	e8 5a f8 ff ff       	call   401180 <operator new(unsigned long)@plt>
  401926:	48 89 c3             	mov    rbx,rax
  401929:	48 89 df             	mov    rdi,rbx
  40192c:	e8 17 06 00 00       	call   401f48 <worldline2::worldline2()>
  401931:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
  401935:	eb 37                	jmp    40196e <phase_5+0xdb>
  401937:	48 8d 45 d0          	lea    rax,[rbp-0x30]           # jmp2 :
  40193b:	48 8d 35 c3 19 00 00 	lea    rsi,[rip+0x19c3]        # 403305 <std::__detail::_S_invalid_state_id+0xc5> "冲冲冲~"
  401942:	48 89 c7             	mov    rdi,rax              
  401945:	e8 96 f8 ff ff       	call   4011e0 <strcmp@plt>      
  40194a:	85 c0                	test   eax,eax        
  40194c:	75 1b                	jne    401969 <phase_5+0xd6>    # != ? goto jmp3:
  40194e:	bf 10 00 00 00       	mov    edi,0x10
  401953:	e8 28 f8 ff ff       	call   401180 <operator new(unsigned long)@plt>
  401958:	48 89 c3             	mov    rbx,rax
  40195b:	48 89 df             	mov    rdi,rbx
  40195e:	e8 65 06 00 00       	call   401fc8 <worldline3::worldline3()>
  401963:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx # rbx = void* c
  401967:	eb 05                	jmp    40196e <phase_5+0xdb>
  401969:	e8 da 06 00 00       	call   402048 <explode_bomb>    # jmp3:
  40196e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]   # rax = *c
  401972:	48 8b 00             	mov    rax,QWORD PTR [rax]        
  401975:	48 83 c0 10          	add    rax,0x10                   # rax += 0x10
  401979:	48 8b 08             	mov    rcx,QWORD PTR [rax]        # rcx = *rax = *(*c + 0x10)
  40197c:	8b 55 cc             	mov    edx,DWORD PTR [rbp-0x34]   # edx = a
  40197f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]   # char* newstr = target;
  401983:	89 d6                	mov    esi,edx                    # esi = a
  401985:	48 89 c7             	mov    rdi,rax
  401988:	ff d1                	call   rcx                          # worldline*::dmail
  40198a:	85 c0                	test   eax,eax                      # 
  40198c:	74 10                	je     40199e <phase_5+0x10b>       # eax != 0 explode_bomb
  40198e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]     # true
  401992:	48 89 c7             	mov    rdi,rax
  401995:	e8 0c 05 00 00       	call   401ea6 <worldline::is_phase5_passable()> # true when worldline3
  40199a:	85 c0                	test   eax,eax                      # eax and 0
  40199c:	75 07                	jne    4019a5 <phase_5+0x112>       # != ? goto jmp5:
  40199e:	b8 01 00 00 00       	mov    eax,0x1                      # jmp4: bomb
  4019a3:	eb 05                	jmp    4019aa <phase_5+0x117>       # == ? goto jmp6:
  4019a5:	b8 00 00 00 00       	mov    eax,0x0                      # jmp5:  jmp5: CLEAR!!
  4019aa:	84 c0                	test   al,al                        # jmp6:
  4019ac:	74 05                	je     4019b3 <phase_5+0x120>       # == ? goto jmp7:
  4019ae:	e8 95 06 00 00       	call   402048 <explode_bomb>
  4019b3:	90                   	nop                                 # jmp7: CLEAR!!
  4019b4:	48 83 c4 48          	add    rsp,0x48
  4019b8:	5b                   	pop    rbx
  4019b9:	5d                   	pop    rbp
  4019ba:	c3                   	ret    

00000000004019bb <put_val>:
put_val():
  4019bb:	f3 0f 1e fa          	endbr64 
  4019bf:	55                   	push   rbp
  4019c0:	48 89 e5             	mov    rbp,rsp
  4019c3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4019c7:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  4019ca:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4019ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4019d1:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
  4019d4:	89 10                	mov    DWORD PTR [rax],edx
  4019d6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4019da:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4019dd:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  4019e1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4019e5:	48 89 10             	mov    QWORD PTR [rax],rdx
  4019e8:	90                   	nop
  4019e9:	5d                   	pop    rbp
  4019ea:	c3                   	ret    

00000000004019eb <get_val>:
get_val():
  4019eb:	f3 0f 1e fa          	endbr64 
  4019ef:	55                   	push   rbp
  4019f0:	48 89 e5             	mov    rbp,rsp
  4019f3:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4019f7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4019fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4019fe:	8b 00                	mov    eax,DWORD PTR [rax]
  401a00:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  401a03:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401a07:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401a0a:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  401a0e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401a12:	48 89 10             	mov    QWORD PTR [rax],rdx
  401a15:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401a18:	5d                   	pop    rbp
  401a19:	c3                   	ret    

0000000000401a1a <build_queue>:
build_queue():
  401a1a:	f3 0f 1e fa          	endbr64 
  401a1e:	55                   	push   rbp
  401a1f:	48 89 e5             	mov    rbp,rsp
  401a22:	48 8d 05 d7 49 00 00 	lea    rax,[rip+0x49d7]        # 406400 <initialNodes+0x40>
  401a29:	5d                   	pop    rbp
  401a2a:	c3                   	ret    

0000000000401a2b <check_answer>:
check_answer():
  401a2b:	f3 0f 1e fa          	endbr64 
  401a2f:	55                   	push   rbp
  401a30:	48 89 e5             	mov    rbp,rsp
  401a33:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401a37:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
  401a3e:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  401a45:	83 7d fc 05          	cmp    DWORD PTR [rbp-0x4],0x5
  401a49:	7f 44                	jg     401a8f <check_answer+0x64>
  401a4b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401a4e:	48 98                	cdqe   
  401a50:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  401a57:	00 
  401a58:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401a5c:	48 01 d0             	add    rax,rdx
  401a5f:	8b 10                	mov    edx,DWORD PTR [rax]
  401a61:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401a64:	48 98                	cdqe   
  401a66:	48 c1 e0 02          	shl    rax,0x2
  401a6a:	48 8d 48 fc          	lea    rcx,[rax-0x4]
  401a6e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401a72:	48 01 c8             	add    rax,rcx
  401a75:	8b 00                	mov    eax,DWORD PTR [rax]
  401a77:	39 c2                	cmp    edx,eax
  401a79:	7d 0e                	jge    401a89 <check_answer+0x5e>
  401a7b:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  401a82:	b8 00 00 00 00       	mov    eax,0x0
  401a87:	eb 0b                	jmp    401a94 <check_answer+0x69>
  401a89:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401a8d:	eb b6                	jmp    401a45 <check_answer+0x1a>
  401a8f:	b8 01 00 00 00       	mov    eax,0x1
  401a94:	5d                   	pop    rbp
  401a95:	c3                   	ret    

0000000000401a96 <build_target>:
build_target():
  401a96:	f3 0f 1e fa          	endbr64 
  401a9a:	55                   	push   rbp
  401a9b:	48 89 e5             	mov    rbp,rsp
  401a9e:	41 57                	push   r15
  401aa0:	41 56                	push   r14
  401aa2:	41 55                	push   r13
  401aa4:	41 54                	push   r12
  401aa6:	53                   	push   rbx
  401aa7:	48 83 ec 78          	sub    rsp,0x78
  401aab:	48 89 bd 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rdi   # int*ptr = phase_6_nums
  401ab2:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0   # int *ptr2 = 0
  401ab9:	00 
  401aba:	48 c7 45 88 00 00 00 	mov    QWORD PTR [rbp-0x78],0x0   # int *ptr3 = 0
  401ac1:	00 
  401ac2:	e8 53 ff ff ff       	call   401a1a <build_queue>
  401ac7:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax   # int *ptr4 = initialNodes + 64
  401acb:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401acf:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax   # ptr2 = ptr4
  401ad3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401ad7:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax   # ptr3 = ptr4
  401adb:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x0   # i = 0
  401ae2:	83 7d c4 05          	cmp    DWORD PTR [rbp-0x3c],0x5 
  401ae6:	0f 8f 65 01 00 00    	jg     401c51 <build_target+0x1bb>  while (i <= 5)
  401aec:	48 89 e0             	mov    rax,rsp
  401aef:	48 89 c3             	mov    rbx,rax
  401af2:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  401af5:	48 98                	cdqe   
  401af7:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  401afe:	00 
  401aff:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  401b06:	48 01 d0             	add    rax,rdx
  401b09:	8b 00                	mov    eax,DWORD PTR [rax]        # eax = ptr[i]
  401b0b:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax   # int y = ptr[i]
  401b0e:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401b11:	48 98                	cdqe   
  401b13:	48 83 e8 01          	sub    rax,0x1                    # rax -= 1
  401b17:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax   # int z = ptr[i] - 1
  401b1b:	48 89 c2             	mov    rdx,rax
  401b1e:	48 83 c2 01          	add    rdx,0x1
  401b22:	49 89 d4             	mov    r12,rdx
  401b25:	41 bd 00 00 00 00    	mov    r13d,0x0
  401b2b:	48 89 c2             	mov    rdx,rax
  401b2e:	48 83 c2 01          	add    rdx,0x1
  401b32:	49 89 d6             	mov    r14,rdx
  401b35:	41 bf 00 00 00 00    	mov    r15d,0x0
  401b3b:	48 83 c0 01          	add    rax,0x1
  401b3f:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  401b46:	00 
  401b47:	b8 10 00 00 00       	mov    eax,0x10
  401b4c:	48 83 e8 01          	sub    rax,0x1
  401b50:	48 01 d0             	add    rax,rdx
  401b53:	b9 10 00 00 00       	mov    ecx,0x10
  401b58:	ba 00 00 00 00       	mov    edx,0x0
  401b5d:	48 f7 f1             	div    rcx
  401b60:	48 6b c0 10          	imul   rax,rax,0x10
  401b64:	48 89 c2             	mov    rdx,rax
  401b67:	48 81 e2 00 f0 ff ff 	and    rdx,0xfffffffffffff000
  401b6e:	48 89 e6             	mov    rsi,rsp
  401b71:	48 29 d6             	sub    rsi,rdx
  401b74:	48 89 f2             	mov    rdx,rsi
  401b77:	48 39 d4             	cmp    rsp,rdx
  401b7a:	74 12                	je     401b8e <build_target+0xf8>
  401b7c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401b83:	48 83 8c 24 f8 0f 00 	or     QWORD PTR [rsp+0xff8],0x0
  401b8a:	00 00 
  401b8c:	eb e9                	jmp    401b77 <build_target+0xe1>
  401b8e:	48 89 c2             	mov    rdx,rax
  401b91:	81 e2 ff 0f 00 00    	and    edx,0xfff
  401b97:	48 29 d4             	sub    rsp,rdx
  401b9a:	48 89 c2             	mov    rdx,rax
  401b9d:	81 e2 ff 0f 00 00    	and    edx,0xfff
  401ba3:	48 85 d2             	test   rdx,rdx
  401ba6:	74 10                	je     401bb8 <build_target+0x122>
  401ba8:	25 ff 0f 00 00       	and    eax,0xfff
  401bad:	48 83 e8 08          	sub    rax,0x8
  401bb1:	48 01 e0             	add    rax,rsp
  401bb4:	48 83 08 00          	or     QWORD PTR [rax],0x0
  401bb8:	48 89 e0             	mov    rax,rsp
  401bbb:	48 83 c0 03          	add    rax,0x3
  401bbf:	48 c1 e8 02          	shr    rax,0x2
  401bc3:	48 c1 e0 02          	shl    rax,0x2
  401bc7:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  401bcb:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
  401bd2:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  401bd5:	3b 45 b4             	cmp    eax,DWORD PTR [rbp-0x4c]
  401bd8:	7d 1f                	jge    401bf9 <build_target+0x163>
  401bda:	48 8d 45 90          	lea    rax,[rbp-0x70]
  401bde:	48 89 c7             	mov    rdi,rax
  401be1:	e8 05 fe ff ff       	call   4019eb <get_val>
  401be6:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
  401bea:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
  401bed:	48 63 c9             	movsxd rcx,ecx
  401bf0:	89 04 8a             	mov    DWORD PTR [rdx+rcx*4],eax
  401bf3:	83 45 c8 01          	add    DWORD PTR [rbp-0x38],0x1
  401bf7:	eb d9                	jmp    401bd2 <build_target+0x13c>
  401bf9:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401bfc:	8d 50 ff             	lea    edx,[rax-0x1]
  401bff:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  401c03:	48 63 d2             	movsxd rdx,edx
  401c06:	8b 14 90             	mov    edx,DWORD PTR [rax+rdx*4]
  401c09:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  401c0c:	48 98                	cdqe   
  401c0e:	89 94 85 70 ff ff ff 	mov    DWORD PTR [rbp+rax*4-0x90],edx
  401c15:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401c18:	83 e8 01             	sub    eax,0x1
  401c1b:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  401c1e:	83 7d cc 00          	cmp    DWORD PTR [rbp-0x34],0x0
  401c22:	78 21                	js     401c45 <build_target+0x1af>
  401c24:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  401c28:	8b 55 cc             	mov    edx,DWORD PTR [rbp-0x34]
  401c2b:	48 63 d2             	movsxd rdx,edx
  401c2e:	8b 14 90             	mov    edx,DWORD PTR [rax+rdx*4]
  401c31:	48 8d 45 88          	lea    rax,[rbp-0x78]
  401c35:	89 d6                	mov    esi,edx
  401c37:	48 89 c7             	mov    rdi,rax
  401c3a:	e8 7c fd ff ff       	call   4019bb <put_val>
  401c3f:	83 6d cc 01          	sub    DWORD PTR [rbp-0x34],0x1
  401c43:	eb d9                	jmp    401c1e <build_target+0x188>
  401c45:	48 89 dc             	mov    rsp,rbx
  401c48:	83 45 c4 01          	add    DWORD PTR [rbp-0x3c],0x1
  401c4c:	e9 91 fe ff ff       	jmp    401ae2 <build_target+0x4c>
  401c51:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]               # loopDone:
  401c58:	48 89 c7             	mov    rdi,rax
  401c5b:	e8 cb fd ff ff       	call   401a2b <check_answer>
  401c60:	88 45 9f             	mov    BYTE PTR [rbp-0x61],al
  401c63:	0f b6 45 9f          	movzx  eax,BYTE PTR [rbp-0x61]
  401c67:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
  401c6b:	5b                   	pop    rbx
  401c6c:	41 5c                	pop    r12
  401c6e:	41 5d                	pop    r13
  401c70:	41 5e                	pop    r14
  401c72:	41 5f                	pop    r15
  401c74:	5d                   	pop    rbp
  401c75:	c3                   	ret    

0000000000401c76 <phase_6>:
phase_6():
  401c76:	f3 0f 1e fa          	endbr64 
  401c7a:	55                   	push   rbp
  401c7b:	48 89 e5             	mov    rbp,rsp
  401c7e:	48 83 ec 30          	sub    rsp,0x30
  401c82:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401c86:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]   # char* instr = str
  401c8a:	48 8d 35 ff 46 00 00 	lea    rsi,[rip+0x46ff]        # 406390 <phase_6_nums>
  401c91:	48 89 c7             	mov    rdi,rax
  401c94:	e8 0d 05 00 00       	call   4021a6 <read_six_numbers>
  401c99:	48 8d 05 f0 46 00 00 	lea    rax,[rip+0x46f0]        # 406390 <phase_6_nums>
  401ca0:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax   # int* ptr = phase_6_nums
  401ca4:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0    # int i = 0;
  401cab:	83 7d fc 05          	cmp    DWORD PTR [rbp-0x4],0x5      # i < 6
  401caf:	7f 40                	jg     401cf1 <phase_6+0x7b>        # goto Done;
  401cb1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]    #  i
  401cb4:	48 98                	cdqe   
  401cb6:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]            # 4i
  401cbd:	00 
  401cbe:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]   # int* cur = phase_6_num + i
  401cc2:	48 01 d0             	add    rax,rdx
  401cc5:	8b 00                	mov    eax,DWORD PTR [rax]        # eax = phase_6_num[i]
  401cc7:	83 f8 06             	cmp    eax,0x6                    # eax ? 6
  401cca:	7f 1a                	jg     401ce6 <phase_6+0x70>      # eax > 6 goto bomb
  401ccc:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]    # i
  401ccf:	48 98                	cdqe   
  401cd1:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  401cd8:	00 
  401cd9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401cdd:	48 01 d0             	add    rax,rdx  
  401ce0:	8b 00                	mov    eax,DWORD PTR [rax]        # eax = phase_6_num[i]
  401ce2:	85 c0                	test   eax,eax                    # eax ? 0
  401ce4:	79 05                	jns    401ceb <phase_6+0x75>      # >= 0 goto next
  401ce6:	e8 5d 03 00 00       	call   402048 <explode_bomb>
  401ceb:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1    # next: i += 1
  401cef:	eb ba                	jmp    401cab <phase_6+0x35>
  401cf1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]     # Done:
  401cf5:	48 89 c7             	mov    rdi,rax
  401cf8:	e8 99 fd ff ff       	call   401a96 <build_target>        # phase_6_num
  401cfd:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  401d00:	0f b6 45 ef          	movzx  eax,BYTE PTR [rbp-0x11]  
  401d04:	83 f0 01             	xor    eax,0x1                    # eax == 1
  401d07:	84 c0                	test   al,al
  401d09:	74 05                	je     401d10 <phase_6+0x9a>      # al == 0
  401d0b:	e8 38 03 00 00       	call   402048 <explode_bomb>
  401d10:	90                   	nop
  401d11:	c9                   	leave  
  401d12:	c3                   	ret    

0000000000401d13 <print_candidate_line_inorder(node*)>:
print_candidate_line_inorder(node*):
  401d13:	f3 0f 1e fa          	endbr64 
  401d17:	55                   	push   rbp
  401d18:	48 89 e5             	mov    rbp,rsp
  401d1b:	48 83 ec 20          	sub    rsp,0x20
  401d1f:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401d23:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401d27:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401d2b:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  401d32:	83 7d f4 05          	cmp    DWORD PTR [rbp-0xc],0x5
  401d36:	7f 2b                	jg     401d63 <print_candidate_line_inorder(node*)+0x50>
  401d38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401d3c:	8b 00                	mov    eax,DWORD PTR [rax]
  401d3e:	89 c6                	mov    esi,eax
  401d40:	48 8d 3d c9 15 00 00 	lea    rdi,[rip+0x15c9]        # 403310 <std::__detail::_S_invalid_state_id+0xd0>
  401d47:	b8 00 00 00 00       	mov    eax,0x0
  401d4c:	e8 df f3 ff ff       	call   401130 <printf@plt>
  401d51:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401d55:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401d59:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401d5d:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  401d61:	eb cf                	jmp    401d32 <print_candidate_line_inorder(node*)+0x1f>
  401d63:	90                   	nop
  401d64:	c9                   	leave  
  401d65:	c3                   	ret    

0000000000401d66 <print_answer_line_inorder(int*)>:
print_answer_line_inorder(int*):
  401d66:	f3 0f 1e fa          	endbr64 
  401d6a:	55                   	push   rbp
  401d6b:	48 89 e5             	mov    rbp,rsp
  401d6e:	48 83 ec 20          	sub    rsp,0x20
  401d72:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401d76:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  401d7d:	83 7d fc 05          	cmp    DWORD PTR [rbp-0x4],0x5
  401d81:	7f 2f                	jg     401db2 <print_answer_line_inorder(int*)+0x4c>
  401d83:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401d86:	48 98                	cdqe   
  401d88:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  401d8f:	00 
  401d90:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401d94:	48 01 d0             	add    rax,rdx
  401d97:	8b 00                	mov    eax,DWORD PTR [rax]
  401d99:	89 c6                	mov    esi,eax
  401d9b:	48 8d 3d 6e 15 00 00 	lea    rdi,[rip+0x156e]        # 403310 <std::__detail::_S_invalid_state_id+0xd0>
  401da2:	b8 00 00 00 00       	mov    eax,0x0
  401da7:	e8 84 f3 ff ff       	call   401130 <printf@plt>
  401dac:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401db0:	eb cb                	jmp    401d7d <print_answer_line_inorder(int*)+0x17>
  401db2:	90                   	nop
  401db3:	c9                   	leave  
  401db4:	c3                   	ret    

0000000000401db5 <secret_phase>:
secret_phase():
  401db5:	f3 0f 1e fa          	endbr64 
  401db9:	55                   	push   rbp
  401dba:	48 89 e5             	mov    rbp,rsp
  401dbd:	48 83 ec 20          	sub    rsp,0x20
  401dc1:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401dc5:	eb ff                	jmp    401dc6 <secret_phase+0x11>
  401dc7:	c0 48 8d 3d          	ror    BYTE PTR [rax-0x73],0x3d
  401dcb:	45 15 00 00 e8 2c    	rex.RB adc eax,0x2ce80000
  401dd1:	f4                   	hlt    
  401dd2:	ff                   	(bad)  
  401dd3:	ff c7                	inc    edi
  401dd5:	45 fc                	rex.RB cld 
  401dd7:	de c0                	faddp  st(0),st
  401dd9:	ad                   	lods   eax,DWORD PTR ds:[rsi]
  401dda:	de 48 8d             	fimul  WORD PTR [rax-0x73]
  401ddd:	55                   	push   rbp
  401dde:	f8                   	clc    
  401ddf:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401de3:	48 8d 35 2f 15 00 00 	lea    rsi,[rip+0x152f]        # 403319 <std::__detail::_S_invalid_state_id+0xd9>
  401dea:	48 89 c7             	mov    rdi,rax
  401ded:	b8 00 00 00 00       	mov    eax,0x0
  401df2:	e8 69 f3 ff ff       	call   401160 <__isoc99_sscanf@plt>
  401df7:	83 f8 01             	cmp    eax,0x1
  401dfa:	0f 95 c0             	setne  al
  401dfd:	84 c0                	test   al,al
  401dff:	74 05                	je     401e06 <secret_phase+0x51>
  401e01:	e8 42 02 00 00       	call   402048 <explode_bomb>
  401e06:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  401e09:	33 45 fc             	xor    eax,DWORD PTR [rbp-0x4]
  401e0c:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  401e0f:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  401e12:	3d 0d f0 ad ba       	cmp    eax,0xbaadf00d
  401e17:	74 05                	je     401e1e <secret_phase+0x69>
  401e19:	e8 2a 02 00 00       	call   402048 <explode_bomb>
  401e1e:	90                   	nop
  401e1f:	c9                   	leave  
  401e20:	c3                   	ret    

0000000000401e21 <__static_initialization_and_destruction_0(int, int)>:
__static_initialization_and_destruction_0(int, int):
  401e21:	f3 0f 1e fa          	endbr64 
  401e25:	55                   	push   rbp
  401e26:	48 89 e5             	mov    rbp,rsp
  401e29:	48 83 ec 10          	sub    rsp,0x10
  401e2d:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  401e30:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  401e33:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
  401e37:	75 32                	jne    401e6b <__static_initialization_and_destruction_0(int, int)+0x4a>
  401e39:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
  401e40:	75 29                	jne    401e6b <__static_initialization_and_destruction_0(int, int)+0x4a>
  401e42:	48 8d 3d e0 45 00 00 	lea    rdi,[rip+0x45e0]        # 406429 <std::__ioinit>
  401e49:	e8 a2 f3 ff ff       	call   4011f0 <std::ios_base::Init::Init()@plt>
  401e4e:	48 8d 15 53 42 00 00 	lea    rdx,[rip+0x4253]        # 4060a8 <__dso_handle>
  401e55:	48 8d 35 cd 45 00 00 	lea    rsi,[rip+0x45cd]        # 406429 <std::__ioinit>
  401e5c:	48 8b 05 95 41 00 00 	mov    rax,QWORD PTR [rip+0x4195]        # 405ff8 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  401e63:	48 89 c7             	mov    rdi,rax
  401e66:	e8 e5 f2 ff ff       	call   401150 <__cxa_atexit@plt>
  401e6b:	90                   	nop
  401e6c:	c9                   	leave  
  401e6d:	c3                   	ret    

0000000000401e6e <_GLOBAL__sub_I_phase_1_str>:
_GLOBAL__sub_I_phase_1_str():
  401e6e:	f3 0f 1e fa          	endbr64 
  401e72:	55                   	push   rbp
  401e73:	48 89 e5             	mov    rbp,rsp
  401e76:	be ff ff 00 00       	mov    esi,0xffff
  401e7b:	bf 01 00 00 00       	mov    edi,0x1
  401e80:	e8 9c ff ff ff       	call   401e21 <__static_initialization_and_destruction_0(int, int)>
  401e85:	5d                   	pop    rbp
  401e86:	c3                   	ret    
  401e87:	90                   	nop

0000000000401e88 <worldline::worldline()>:
worldline::worldline():
  401e88:	f3 0f 1e fa          	endbr64 
  401e8c:	55                   	push   rbp
  401e8d:	48 89 e5             	mov    rbp,rsp
  401e90:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi    
  401e94:	48 8d 15 fd 3e 00 00 	lea    rdx,[rip+0x3efd]        # 405d98 <__cxa_pure_virtual@CXXABI_1.3>
  401e9b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]  # rax = this
  401e9f:	48 89 10             	mov    QWORD PTR [rax],rdx      # *this = &__cxa_pure_virtual?
  401ea2:	90                   	nop
  401ea3:	5d                   	pop    rbp
  401ea4:	c3                   	ret    
  401ea5:	90                   	nop

0000000000401ea6 <worldline::is_phase5_passable()>:
worldline::is_phase5_passable():
  401ea6:	f3 0f 1e fa          	endbr64 
  401eaa:	55                   	push   rbp
  401eab:	48 89 e5             	mov    rbp,rsp
  401eae:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401eb2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eb6:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401eba:	48 3d 3f 42 0f 00    	cmp    rax,0xf423f
  401ec0:	0f 9f c0             	setg   al
  401ec3:	0f b6 c0             	movzx  eax,al
  401ec6:	5d                   	pop    rbp
  401ec7:	c3                   	ret    

0000000000401ec8 <worldline1::worldline1()>:
worldline1::worldline1():
  401ec8:	f3 0f 1e fa          	endbr64 
  401ecc:	55                   	push   rbp
  401ecd:	48 89 e5             	mov    rbp,rsp
  401ed0:	48 83 ec 10          	sub    rsp,0x10               # 分配 16 字节
  401ed4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi  # this
  401ed8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]  # rax = this;
  401edc:	48 89 c7             	mov    rdi,rax                  # worldline(this)
  401edf:	e8 a4 ff ff ff       	call   401e88 <worldline::worldline()>
  401ee4:	48 8d 15 85 3e 00 00 	lea    rdx,[rip+0x3e85]        # 405d70 <vtable for worldline1+0x10>
  401eeb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eef:	48 89 10             	mov    QWORD PTR [rax],rdx      # *this = vtable for worldline1+0x10
  401ef2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401ef6:	48 c7 40 08 90 b6 08 	mov    QWORD PTR [rax+0x8],0x8b690  # *(this + 0x8 = 0x8b690) long?
  401efd:	00 
  401efe:	90                   	nop
  401eff:	c9                   	leave  
  401f00:	c3                   	ret    
  401f01:	90                   	nop

0000000000401f02 <worldline1::isWorldPeace()>:
worldline1::isWorldPeace():
  401f02:	f3 0f 1e fa          	endbr64 
  401f06:	55                   	push   rbp
  401f07:	48 89 e5             	mov    rbp,rsp
  401f0a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f0e:	b8 00 00 00 00       	mov    eax,0x0                  # ret 0
  401f13:	5d                   	pop    rbp
  401f14:	c3                   	ret    
  401f15:	90                   	nop

0000000000401f16 <worldline1::isEveryoneEqual()>:
worldline1::isEveryoneEqual():
  401f16:	f3 0f 1e fa          	endbr64 
  401f1a:	55                   	push   rbp
  401f1b:	48 89 e5             	mov    rbp,rsp
  401f1e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f22:	b8 01 00 00 00       	mov    eax,0x1                  # ret 1
  401f27:	5d                   	pop    rbp
  401f28:	c3                   	ret    
  401f29:	90                   	nop

0000000000401f2a <worldline1::dmail(int)>:
worldline1::dmail(int):
  401f2a:	f3 0f 1e fa          	endbr64 
  401f2e:	55                   	push   rbp
  401f2f:	48 89 e5             	mov    rbp,rsp
  401f32:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi  # rbp - 0x8 = this
  401f36:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi  # rbp - 0xc = (int) this;
  401f39:	81 7d f4 e2 07 00 00 	cmp    DWORD PTR [rbp-0xc],0x7e2
  401f40:	0f 94 c0             	sete   al
  401f43:	0f b6 c0             	movzx  eax,al     # return int == 2018
  401f46:	5d                   	pop    rbp
  401f47:	c3                   	ret    

0000000000401f48 <worldline2::worldline2()>:
worldline2::worldline2():
  401f48:	f3 0f 1e fa          	endbr64 
  401f4c:	55                   	push   rbp
  401f4d:	48 89 e5             	mov    rbp,rsp
  401f50:	48 83 ec 10          	sub    rsp,0x10
  401f54:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f58:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f5c:	48 89 c7             	mov    rdi,rax
  401f5f:	e8 24 ff ff ff       	call   401e88 <worldline::worldline()>
  401f64:	48 8d 15 dd 3d 00 00 	lea    rdx,[rip+0x3ddd]        # 405d48 <vtable for worldline2+0x10>
  401f6b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f6f:	48 89 10             	mov    QWORD PTR [rax],rdx
  401f72:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f76:	48 c7 40 08 d2 f8 06 	mov    QWORD PTR [rax+0x8],0x6f8d2  int?
  401f7d:	00 
  401f7e:	90                   	nop
  401f7f:	c9                   	leave  
  401f80:	c3                   	ret    
  401f81:	90                   	nop

0000000000401f82 <worldline2::isWorldPeace()>:
worldline2::isWorldPeace():
  401f82:	f3 0f 1e fa          	endbr64 
  401f86:	55                   	push   rbp
  401f87:	48 89 e5             	mov    rbp,rsp
  401f8a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f8e:	b8 01 00 00 00       	mov    eax,0x1
  401f93:	5d                   	pop    rbp
  401f94:	c3                   	ret             # return 1
  401f95:	90                   	nop

0000000000401f96 <worldline2::isEveryoneEqual()>:
worldline2::isEveryoneEqual():
  401f96:	f3 0f 1e fa          	endbr64 
  401f9a:	55                   	push   rbp
  401f9b:	48 89 e5             	mov    rbp,rsp
  401f9e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401fa2:	b8 00 00 00 00       	mov    eax,0x0
  401fa7:	5d                   	pop    rbp
  401fa8:	c3                   	ret             # return 0
  401fa9:	90                   	nop

0000000000401faa <worldline2::dmail(int)>:
worldline2::dmail(int):
  401faa:	f3 0f 1e fa          	endbr64 
  401fae:	55                   	push   rbp
  401faf:	48 89 e5             	mov    rbp,rsp
  401fb2:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401fb6:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  401fb9:	81 7d f4 e5 07 00 00 	cmp    DWORD PTR [rbp-0xc],0x7e5
  401fc0:	0f 94 c0             	sete   al
  401fc3:	0f b6 c0             	movzx  eax,al
  401fc6:	5d                   	pop    rbp        # return int == 2021
  401fc7:	c3                   	ret    

0000000000401fc8 <worldline3::worldline3()>:
worldline3::worldline3():
  401fc8:	f3 0f 1e fa          	endbr64 
  401fcc:	55                   	push   rbp
  401fcd:	48 89 e5             	mov    rbp,rsp
  401fd0:	48 83 ec 10          	sub    rsp,0x10
  401fd4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401fd8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401fdc:	48 89 c7             	mov    rdi,rax
  401fdf:	e8 a4 fe ff ff       	call   401e88 <worldline::worldline()>
  401fe4:	48 8d 15 35 3d 00 00 	lea    rdx,[rip+0x3d35]        # 405d20 <vtable for worldline3+0x10>
  401feb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401fef:	48 89 10             	mov    QWORD PTR [rax],rdx
  401ff2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401ff6:	48 c7 40 08 fd 24 11 	mov    QWORD PTR [rax+0x8],0x1124fd     
  401ffd:	00 
  401ffe:	90                   	nop
  401fff:	c9                   	leave  
  402000:	c3                   	ret    
  402001:	90                   	nop

0000000000402002 <worldline3::isWorldPeace()>:
worldline3::isWorldPeace():
  402002:	f3 0f 1e fa          	endbr64 
  402006:	55                   	push   rbp
  402007:	48 89 e5             	mov    rbp,rsp
  40200a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40200e:	b8 01 00 00 00       	mov    eax,0x1
  402013:	5d                   	pop    rbp
  402014:	c3                   	ret           # return 1
  402015:	90                   	nop

0000000000402016 <worldline3::isEveryoneEqual()>:
worldline3::isEveryoneEqual():
  402016:	f3 0f 1e fa          	endbr64 
  40201a:	55                   	push   rbp
  40201b:	48 89 e5             	mov    rbp,rsp
  40201e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402022:	b8 01 00 00 00       	mov    eax,0x1
  402027:	5d                   	pop    rbp
  402028:	c3                   	ret           # return 1
  402029:	90                   	nop

000000000040202a <worldline3::dmail(int)>:
worldline3::dmail(int):
  40202a:	f3 0f 1e fa          	endbr64 
  40202e:	55                   	push   rbp
  40202f:	48 89 e5             	mov    rbp,rsp
  402032:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402036:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  402039:	81 7d f4 e7 07 00 00 	cmp    DWORD PTR [rbp-0xc],0x7e7
  402040:	0f 94 c0             	sete   al
  402043:	0f b6 c0             	movzx  eax,al
  402046:	5d                   	pop    rbp
  402047:	c3                   	ret               # return int == 2023

0000000000402048 <explode_bomb>:
explode_bomb():
  402048:	f3 0f 1e fa          	endbr64 
  40204c:	55                   	push   rbp
  40204d:	48 89 e5             	mov    rbp,rsp
  402050:	48 83 ec 10          	sub    rsp,0x10
  402054:	48 8d 3d 05 13 00 00 	lea    rdi,[rip+0x1305]        # 403360 <typeinfo name for worldline+0x10>
  40205b:	e8 a0 f1 ff ff       	call   401200 <puts@plt>
  402060:	48 8d 35 01 13 00 00 	lea    rsi,[rip+0x1301]        # 403368 <typeinfo name for worldline+0x18>
  402067:	48 8d 3d fc 12 00 00 	lea    rdi,[rip+0x12fc]        # 40336a <typeinfo name for worldline+0x1a>
  40206e:	e8 2d f1 ff ff       	call   4011a0 <fopen@plt>
  402073:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402077:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  40207c:	0f 94 c0             	sete   al
  40207f:	84 c0                	test   al,al
  402081:	74 0a                	je     40208d <explode_bomb+0x45>
  402083:	bf 01 00 00 00       	mov    edi,0x1
  402088:	e8 23 f1 ff ff       	call   4011b0 <exit@plt>
  40208d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402091:	48 89 c7             	mov    rdi,rax
  402094:	e8 77 f1 ff ff       	call   401210 <feof@plt>
  402099:	85 c0                	test   eax,eax
  40209b:	0f 94 c0             	sete   al
  40209e:	84 c0                	test   al,al
  4020a0:	74 22                	je     4020c4 <explode_bomb+0x7c>
  4020a2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4020a6:	48 89 c7             	mov    rdi,rax
  4020a9:	e8 72 f1 ff ff       	call   401220 <fgetc@plt>
  4020ae:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
  4020b1:	80 7d f7 ff          	cmp    BYTE PTR [rbp-0x9],0xff
  4020b5:	74 d6                	je     40208d <explode_bomb+0x45>
  4020b7:	0f be 45 f7          	movsx  eax,BYTE PTR [rbp-0x9]
  4020bb:	89 c7                	mov    edi,eax
  4020bd:	e8 0e f1 ff ff       	call   4011d0 <putchar@plt>
  4020c2:	eb c9                	jmp    40208d <explode_bomb+0x45>
  4020c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4020c8:	48 89 c7             	mov    rdi,rax
  4020cb:	e8 a0 f0 ff ff       	call   401170 <fclose@plt>
  4020d0:	bf 01 00 00 00       	mov    edi,0x1
  4020d5:	e8 d6 f0 ff ff       	call   4011b0 <exit@plt>

00000000004020da <slow_put>:
slow_put():
  4020da:	f3 0f 1e fa          	endbr64 
  4020de:	55                   	push   rbp
  4020df:	48 89 e5             	mov    rbp,rsp
  4020e2:	48 83 ec 20          	sub    rsp,0x20
  4020e6:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4020ea:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4020ee:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4020f1:	84 c0                	test   al,al
  4020f3:	74 48                	je     40213d <slow_put+0x63>
  4020f5:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4020f9:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4020fc:	0f be c0             	movsx  eax,al
  4020ff:	89 c7                	mov    edi,eax
  402101:	e8 ca f0 ff ff       	call   4011d0 <putchar@plt>
  402106:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  40210b:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  402112:	00 
  402113:	48 c7 45 f8 80 f0 fa 	mov    QWORD PTR [rbp-0x8],0x2faf080
  40211a:	02 
  40211b:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  40211f:	be 00 00 00 00       	mov    esi,0x0
  402124:	48 89 c7             	mov    rdi,rax
  402127:	e8 14 f0 ff ff       	call   401140 <nanosleep@plt>
  40212c:	48 8b 05 ed 42 00 00 	mov    rax,QWORD PTR [rip+0x42ed]        # 406420 <stdout@GLIBC_2.2.5>
  402133:	48 89 c7             	mov    rdi,rax
  402136:	e8 55 f0 ff ff       	call   401190 <fflush@plt>
  40213b:	eb ad                	jmp    4020ea <slow_put+0x10>
  40213d:	90                   	nop
  40213e:	c9                   	leave  
  40213f:	c3                   	ret    

0000000000402140 <slow_slow_put>:
slow_slow_put():
  402140:	f3 0f 1e fa          	endbr64 
  402144:	55                   	push   rbp
  402145:	48 89 e5             	mov    rbp,rsp
  402148:	48 83 ec 20          	sub    rsp,0x20
  40214c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402150:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402154:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402157:	84 c0                	test   al,al
  402159:	74 48                	je     4021a3 <slow_slow_put+0x63>
  40215b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40215f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402162:	0f be c0             	movsx  eax,al
  402165:	89 c7                	mov    edi,eax
  402167:	e8 64 f0 ff ff       	call   4011d0 <putchar@plt>
  40216c:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  402171:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  402178:	00 
  402179:	48 c7 45 f8 00 e1 f5 	mov    QWORD PTR [rbp-0x8],0x5f5e100
  402180:	05 
  402181:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  402185:	be 00 00 00 00       	mov    esi,0x0
  40218a:	48 89 c7             	mov    rdi,rax
  40218d:	e8 ae ef ff ff       	call   401140 <nanosleep@plt>
  402192:	48 8b 05 87 42 00 00 	mov    rax,QWORD PTR [rip+0x4287]        # 406420 <stdout@GLIBC_2.2.5>
  402199:	48 89 c7             	mov    rdi,rax
  40219c:	e8 ef ef ff ff       	call   401190 <fflush@plt>
  4021a1:	eb ad                	jmp    402150 <slow_slow_put+0x10>
  4021a3:	90                   	nop
  4021a4:	c9                   	leave  
  4021a5:	c3                   	ret    

00000000004021a6 <read_six_numbers>:
read_six_numbers():
  4021a6:	f3 0f 1e fa          	endbr64 
  4021aa:	55                   	push   rbp
  4021ab:	48 89 e5             	mov    rbp,rsp
  4021ae:	48 83 ec 20          	sub    rsp,0x20
  4021b2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4021b6:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4021ba:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021be:	48 8d 78 14          	lea    rdi,[rax+0x14]
  4021c2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021c6:	48 8d 70 10          	lea    rsi,[rax+0x10]
  4021ca:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021ce:	4c 8d 48 0c          	lea    r9,[rax+0xc]
  4021d2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021d6:	4c 8d 40 08          	lea    r8,[rax+0x8]
  4021da:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4021de:	48 8d 48 04          	lea    rcx,[rax+0x4]
  4021e2:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  4021e6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4021ea:	57                   	push   rdi
  4021eb:	56                   	push   rsi
  4021ec:	48 8d 35 80 11 00 00 	lea    rsi,[rip+0x1180]        # 403373 <typeinfo name for worldline+0x23>
  4021f3:	48 89 c7             	mov    rdi,rax
  4021f6:	b8 00 00 00 00       	mov    eax,0x0
  4021fb:	e8 60 ef ff ff       	call   401160 <__isoc99_sscanf@plt>
  402200:	48 83 c4 10          	add    rsp,0x10
  402204:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  402207:	83 7d fc 06          	cmp    DWORD PTR [rbp-0x4],0x6
  40220b:	75 0a                	jne    402217 <read_six_numbers+0x71>
  40220d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402211:	8b 00                	mov    eax,DWORD PTR [rax]
  402213:	85 c0                	test   eax,eax
  402215:	75 05                	jne    40221c <read_six_numbers+0x76>
  402217:	e8 2c fe ff ff       	call   402048 <explode_bomb>
  40221c:	90                   	nop
  40221d:	c9                   	leave  
  40221e:	c3                   	ret    

000000000040221f <true_ending>:
true_ending():
  40221f:	f3 0f 1e fa          	endbr64 
  402223:	55                   	push   rbp
  402224:	48 89 e5             	mov    rbp,rsp
  402227:	48 8d 3d 57 11 00 00 	lea    rdi,[rip+0x1157]        # 403385 <typeinfo name for worldline+0x35>
  40222e:	e8 cd ef ff ff       	call   401200 <puts@plt>
  402233:	48 8d 3d 5e 11 00 00 	lea    rdi,[rip+0x115e]        # 403398 <typeinfo name for worldline+0x48>
  40223a:	e8 c1 ef ff ff       	call   401200 <puts@plt>
  40223f:	48 8d 3d 7a 11 00 00 	lea    rdi,[rip+0x117a]        # 4033c0 <typeinfo name for worldline+0x70>
  402246:	e8 b5 ef ff ff       	call   401200 <puts@plt>
  40224b:	48 8d 3d 96 11 00 00 	lea    rdi,[rip+0x1196]        # 4033e8 <typeinfo name for worldline+0x98>
  402252:	e8 a9 ef ff ff       	call   401200 <puts@plt>
  402257:	48 8d 3d ba 11 00 00 	lea    rdi,[rip+0x11ba]        # 403418 <typeinfo name for worldline+0xc8>
  40225e:	e8 9d ef ff ff       	call   401200 <puts@plt>
  402263:	48 8d 3d fe 11 00 00 	lea    rdi,[rip+0x11fe]        # 403468 <typeinfo name for worldline+0x118>
  40226a:	e8 91 ef ff ff       	call   401200 <puts@plt>
  40226f:	48 8d 3d 32 12 00 00 	lea    rdi,[rip+0x1232]        # 4034a8 <typeinfo name for worldline+0x158>
  402276:	e8 85 ef ff ff       	call   401200 <puts@plt>
  40227b:	48 8d 3d 66 12 00 00 	lea    rdi,[rip+0x1266]        # 4034e8 <typeinfo name for worldline+0x198>
  402282:	e8 79 ef ff ff       	call   401200 <puts@plt>
  402287:	48 8d 3d da 12 00 00 	lea    rdi,[rip+0x12da]        # 403568 <typeinfo name for worldline+0x218>
  40228e:	e8 6d ef ff ff       	call   401200 <puts@plt>
  402293:	48 8d 3d 46 13 00 00 	lea    rdi,[rip+0x1346]        # 4035e0 <typeinfo name for worldline+0x290>
  40229a:	e8 61 ef ff ff       	call   401200 <puts@plt>
  40229f:	48 8d 3d 9a 13 00 00 	lea    rdi,[rip+0x139a]        # 403640 <typeinfo name for worldline+0x2f0>
  4022a6:	e8 55 ef ff ff       	call   401200 <puts@plt>
  4022ab:	48 8d 3d d6 13 00 00 	lea    rdi,[rip+0x13d6]        # 403688 <typeinfo name for worldline+0x338>
  4022b2:	e8 49 ef ff ff       	call   401200 <puts@plt>
  4022b7:	48 8d 3d 1a 14 00 00 	lea    rdi,[rip+0x141a]        # 4036d8 <typeinfo name for worldline+0x388>
  4022be:	e8 3d ef ff ff       	call   401200 <puts@plt>
  4022c3:	48 8d 3d 4d 14 00 00 	lea    rdi,[rip+0x144d]        # 403717 <typeinfo name for worldline+0x3c7>
  4022ca:	e8 31 ef ff ff       	call   401200 <puts@plt>
  4022cf:	48 8d 3d 62 14 00 00 	lea    rdi,[rip+0x1462]        # 403738 <typeinfo name for worldline+0x3e8>
  4022d6:	e8 25 ef ff ff       	call   401200 <puts@plt>
  4022db:	48 8d 3d 7b 14 00 00 	lea    rdi,[rip+0x147b]        # 40375d <typeinfo name for worldline+0x40d>
  4022e2:	e8 19 ef ff ff       	call   401200 <puts@plt>
  4022e7:	48 8d 3d 8a 14 00 00 	lea    rdi,[rip+0x148a]        # 403778 <typeinfo name for worldline+0x428>
  4022ee:	e8 0d ef ff ff       	call   401200 <puts@plt>
  4022f3:	90                   	nop
  4022f4:	5d                   	pop    rbp
  4022f5:	c3                   	ret    
  4022f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4022fd:	00 00 00 

0000000000402300 <__libc_csu_init>:
__libc_csu_init():
  402300:	f3 0f 1e fa          	endbr64 
  402304:	41 57                	push   r15
  402306:	4c 8d 3d eb 39 00 00 	lea    r15,[rip+0x39eb]        # 405cf8 <__frame_dummy_init_array_entry>
  40230d:	41 56                	push   r14
  40230f:	49 89 d6             	mov    r14,rdx
  402312:	41 55                	push   r13
  402314:	49 89 f5             	mov    r13,rsi
  402317:	41 54                	push   r12
  402319:	41 89 fc             	mov    r12d,edi
  40231c:	55                   	push   rbp
  40231d:	48 8d 2d e4 39 00 00 	lea    rbp,[rip+0x39e4]        # 405d08 <__do_global_dtors_aux_fini_array_entry>
  402324:	53                   	push   rbx
  402325:	4c 29 fd             	sub    rbp,r15
  402328:	48 83 ec 08          	sub    rsp,0x8
  40232c:	e8 cf ec ff ff       	call   401000 <_init>
  402331:	48 c1 fd 03          	sar    rbp,0x3
  402335:	74 1f                	je     402356 <__libc_csu_init+0x56>
  402337:	31 db                	xor    ebx,ebx
  402339:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402340:	4c 89 f2             	mov    rdx,r14
  402343:	4c 89 ee             	mov    rsi,r13
  402346:	44 89 e7             	mov    edi,r12d
  402349:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40234d:	48 83 c3 01          	add    rbx,0x1
  402351:	48 39 dd             	cmp    rbp,rbx
  402354:	75 ea                	jne    402340 <__libc_csu_init+0x40>
  402356:	48 83 c4 08          	add    rsp,0x8
  40235a:	5b                   	pop    rbx
  40235b:	5d                   	pop    rbp
  40235c:	41 5c                	pop    r12
  40235e:	41 5d                	pop    r13
  402360:	41 5e                	pop    r14
  402362:	41 5f                	pop    r15
  402364:	c3                   	ret    
  402365:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40236c:	00 00 00 00 

0000000000402370 <__libc_csu_fini>:
__libc_csu_fini():
  402370:	f3 0f 1e fa          	endbr64 
  402374:	c3                   	ret    

Disassembly of section .fini:

0000000000402378 <_fini>:
_fini():
  402378:	f3 0f 1e fa          	endbr64 
  40237c:	48 83 ec 08          	sub    rsp,0x8
  402380:	48 83 c4 08          	add    rsp,0x8
  402384:	c3                   	ret    
