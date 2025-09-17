# Snakev3

## Description

pawang ular

> ps, run dengan menggunakan command python -m http.server di directory yang sama dengan file file yang diberikan

## Solution

I got the files but i dont see any flags, because i run this locally so the flag would be in these four files. Then i tried to dissasemble the `game.wasm` file using `wasm2wat` command and got the wat file. After that i searched for strings and found this:

```text
(data $.data (i32.const 1072) "?&?\18\0d\0c\07&+\1c\00\12\01\17,&\1a(\02\1f\18\1f\00\00\00\00\00\00\00\00\00\00welcome_to_the_RE_club\00"))
```

Then i tried to input the flag `welcome_to_the_RE_club` in the game and did not get the flag. So i tried to XOR the string with the bytes before it and got this as a flag: `HCS{baby_s_first_wasm}`
