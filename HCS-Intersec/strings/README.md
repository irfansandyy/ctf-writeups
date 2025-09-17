# strings

## Description

Soal yang wajib ada di CTF pemerintah

## Solution

I am given an executable file named `chal`. Running ghidra on it, I found the main function. And in the main function, i found some hidden strings.

```text
                             //
                             // .rodata 
                             // SHT_PROGBITS  [0x2000 - 0x2028]
                             // ram:00102000-ram:00102028
                             //
                             _IO_stdin_used                                  XREF[3]:     Entry Point(*), 00100130(*), 
                                                                                          _elfSectionHeaders::00000410(*)  
        00102000 01 00 02 00     undefined4 00020001h
                             s_HCS{ctf__00102004                             XREF[2]:     main:00101138(*), 
                                                                                          main:0010113f(*)  
        00102004 48 43 53        ds         "HCS{ctf_"
                 7b 63 74 
                 66 5f 00
                             s_gjls__0010200d                                XREF[2]:     main:00101147(*), 
                                                                                          main:0010114e(*)  
        0010200d 67 6a 6c        ds         "gjls_"
                 73 5f 00
                             s_hadiah_el_00102013                            XREF[2]:     main:00101156(*), 
                                                                                          main:0010115d(*)  
        00102013 68 61 64        ds         "hadiah_el"
                 69 61 68 
                 5f 65 6c 00
                             DAT_0010201d                                    XREF[2]:     main:00101165(*), 
                                                                                          main:0010116c(*)  
        0010201d 69              ??         69h    i
        0010201e 74              ??         74h    t
        0010201f 5f              ??         5Fh    _
        00102020 5f              ??         5Fh    _
        00102021 00              ??         00h
                             s_ayaya}_00102022                               XREF[2]:     main:00101174(*), 
                                                                                          main:0010117b(*)  
        00102022 61 79 61        ds         "ayaya}"
                 79 61 7d 00
```

The data section and the random char when combined means: `HCS{ctf_gjls_hadiah_elit__ayaya}`
