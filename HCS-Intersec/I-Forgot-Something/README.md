# I Forgot Something

## Description

I want to retrieve my files but I forgot the password. Can you help me?

## Solution

This has a encrypted zip file. So the first thing i did is to crack the password by bruteforcing from a known wordlist like `rockyou.txt`. Using `fcrackzip` with a wordlist, we can find the password.

```bash
fcrackzip -u -D -p ./rockyou.txt ./chall.zip
```

The output from fcrackzip shows the password is `estrella`

Using the password, we can unzip the file and get the flag.

```bash
unzip -P estrella ./chall.zip
```

The flag is `HCS{makasih_udah_berhasil_bantuin_aku_buat_dapetin_filenya_ehe}`
