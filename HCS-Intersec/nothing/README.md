# nothing

## Description

A subtitution cipher? naah, this is Nothing Cipher (TM)

## Solution

From the challenge description, we can assume that this is a substitution cipher. Then i see the chal and there is so much space in it. So i think that the space is the key to solve this chal. And from the `chal.py` file there already is a dictionary for each nothing to a number. So i just for looped the encoded flag and change it to the number based on the dictionary. And then i just convert the number to ascii and get the flag.

```python
SBox = {the dict ...}

reversed = {v: k for k, v in SBox.items()}
parts = flag.split('\t')
results = [part + '\t' for part in parts]

for i in results:
    print(chr(reversed[i]), end="") 
```

So because the key is a number, and the value is the nothing, i just reversed the dictionary and then for each nothing i just convert it to the number and then to ascii.

when i run this i got this flag:

`HCS{sbox_is_very_cool__ayaya}`
