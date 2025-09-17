# xoxo

## Description

They tried to keep a secret in the relationship, but their habits gave everything away.

## Solution

This also i asked my good friend ChatGPT to solve it for me, and it gave me the code below:

```python
from Crypto.Util.strxor import strxor

# The hex-encoded ciphertext from the original script
c_hex = "d61a7019ec6a5351aa2d120cf9065b52ec061211c12d1352c12e1056f5065b0de6365e"

# Convert the hex ciphertext to bytes
ciphertext = bytes.fromhex(c_hex)

# The known part of the plaintext (the flag prefix)
known_plaintext = b"HCS{"

# 1. Recover the 4-byte repeating key
# XOR the known plaintext with the corresponding first 4 bytes of the ciphertext
key = strxor(known_plaintext, ciphertext[:4])
print(f"[*] Recovered 4-byte key: {key}")

# 2. Reconstruct the full key stream
# Repeat the 4-byte key enough times to match the ciphertext's length
full_key = (key * (len(ciphertext) // len(key) + 1))[:len(ciphertext)]

# 3. Decrypt the entire ciphertext
# XOR the full ciphertext with the full key stream to get the flag
flag = strxor(ciphertext, full_key)

print(f"[*] Decrypted Flag: {flag.decode()}")
````

When I ran the code, I got the flag: `HCS{r3p34t1ng_x0r_1s_t00_w34k_xoxo}`
