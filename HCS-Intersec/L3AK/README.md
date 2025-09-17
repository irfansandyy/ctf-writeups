# L3AK

## Description

what is what?

## Solution

We can ask our good friend ChatGPT for help solving this challenge. By prompting the n, ct, and what from `output.txt`, and with the code from `chall.py`. We then get the following code:

```python
from Crypto.Util.number import long_to_bytes, inverse
import random, math
from collections import Counter

n = 132424945097525850654214822436841749617596013766516589461846053019923921509419349878188173267137393388564369574894943951802964034938666342594121858359017467945336230806773103437033058400722533249173019431218833060574032187854004778243330232248639993250668984287478087484530899867973181768171106834615858816947
ct = 8690256152525015206584791844752543379719744787620368046544606811870676380837374553817755653019413372016870108768104936568432345008226950086769230094097164464486596908050930851678115904352532562944170575365724833300330295692157262447360439786705110831106538310141401194897207768598781335529794463310318530218
what = 4701066001566933468539295457165541117336002410834834617743586840140912396231299819496271034686173752299173098904260222360140687146281504574213995930648721
e = 65537

k = e * what - 1

# --- Miller-Rabin primality test ---
def is_probable_prime(n, ktests=12):
    if n < 2:
        return False
    small = [2,3,5,7,11,13,17,19,23,29]
    for p in small:
        if n % p == 0:
            return n == p
    d = n - 1
    s = 0
    while d % 2 == 0:
        d //= 2
        s += 1
    import random
    for _ in range(ktests):
        a = random.randrange(2, n-1)
        x = pow(a, d, n)
        if x == 1 or x == n-1:
            continue
        for _ in range(s-1):
            x = (x * x) % n
            if x == n-1:
                break
        else:
            return False
    return True

# --- Pollard Rho ---
def pollard_rho(n):
    if n % 2 == 0:
        return 2
    if is_probable_prime(n):
        return n
    while True:
        c = random.randrange(1, n-1)
        x = random.randrange(2, n-1)
        y = x
        d = 1
        while d == 1:
            x = (x*x + c) % n
            y = (y*y + c) % n
            y = (y*y + c) % n
            d = math.gcd(abs(x-y), n)
            if d == n:
                break
        if d > 1 and d < n:
            return d

def factor(n):
    if n == 1:
        return []
    if is_probable_prime(n):
        return [n]
    d = pollard_rho(n)
    if d == n:
        return [n]
    return factor(d) + factor(n//d)

# Factor k
fac = factor(k)
fac_counter = Counter(fac)

# Build all divisors (count is small here)
divisors = [1]
for p, m in fac_counter.items():
    new = []
    for exp in range(1, m+1):
        for d in divisors:
            new.append(d * (p**exp))
    divisors += new
divisors = sorted(set(divisors))

# Try each divisor t: candidate p = k//t + 1
p = None
for t in divisors:
    if k % t != 0:
        continue
    pcand = k // t + 1
    if n % pcand == 0:
        p = pcand
        break

if p is None:
    raise Exception("No p found — need more factoring/enumeration.")
q = n // p

phi = (p-1)*(q-1)
d = inverse(e, phi)
m = pow(ct, d, n)
flag = long_to_bytes(m)
print(flag.decode())
```

And when we run this code, we get the flag:

`HCS{leak_l3ak_l34k_i_hate_leaks_65746572}`
