# Reverse Day 1

## Description

## Solution

So i reversed the binary using Ghidra and got this code:

```c
void check(long param_1)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  undefined1 *puVar4;
  long in_FS_OFFSET;
  undefined1 auStack_88 [8];
  long local_80;
  byte local_71;
  int local_70;
  int local_6c;
  long local_68;
  undefined1 *local_60;
  byte local_58 [24];
  long local_40;
  
  local_40 = *(long *)(in_FS_OFFSET + 0x28);
  local_58[0] = 0x16;
  local_58[1] = 0x1d;
  local_58[2] = 0xd;
  local_58[3] = 0x25;
  local_58[4] = 0x2c;
  local_58[5] = 0x3b;
  local_58[6] = 0x28;
  local_58[7] = 0x3b;
  local_58[8] = 0x2c;
  local_58[9] = 0x2d;
  local_58[10] = 0x3b;
  local_58[0xb] = 1;
  local_58[0xc] = 0x37;
  local_58[0xd] = 0x2d;
  local_58[0xe] = 1;
  local_58[0xf] = 0x3b;
  local_58[0x10] = 0x3f;
  local_58[0x11] = 0x24;
  local_58[0x12] = 0x27;
  local_58[0x13] = 0x27;
  local_58[0x14] = 0x27;
  local_58[0x15] = 0x27;
  local_58[0x16] = 0x23;
  local_71 = 0x5e;
  local_80 = param_1;
  iVar2 = a();
  local_68 = (long)(iVar2 + 1) + -1;
  uVar3 = (((long)(iVar2 + 1) + 0xfU) / 0x10) * 0x10;
  for (puVar4 = auStack_88; puVar4 != auStack_88 + -(uVar3 & 0xfffffffffffff000);
      puVar4 = puVar4 + -0x1000) {
    *(undefined8 *)(puVar4 + -8) = *(undefined8 *)(puVar4 + -8);
  }
  lVar1 = -(ulong)((uint)uVar3 & 0xfff);
  if ((uVar3 & 0xfff) != 0) {
    *(undefined8 *)(puVar4 + ((ulong)((uint)uVar3 & 0xfff) - 8) + lVar1) =
         *(undefined8 *)(puVar4 + ((ulong)((uint)uVar3 & 0xfff) - 8) + lVar1);
  }
  local_70 = 0;
  local_60 = puVar4 + lVar1;
  while( true ) {
    *(undefined8 *)(puVar4 + lVar1 + -8) = 0x101320;
    iVar2 = a();
    if (iVar2 <= local_70) break;
    local_60[local_70] = local_58[local_70] ^ local_71;
    local_70 = local_70 + 1;
  }
  *(undefined8 *)(puVar4 + lVar1 + -8) = 0x10132a;
  iVar2 = a();
  local_60[iVar2] = 0;
  local_6c = 0;
  while( true ) {
    *(undefined8 *)(puVar4 + lVar1 + -8) = 0x101380;
    iVar2 = a();
    if (iVar2 <= local_6c) break;
    if (*(char *)(local_80 + local_6c) != local_60[local_6c]) {
      *(undefined8 *)(puVar4 + lVar1 + -8) = 0x10136d;
      puts("Wrong!");
                    /* WARNING: Subroutine does not return */
      *(undefined8 *)(puVar4 + lVar1 + -8) = 0x101377;
      exit(1);
    }
    local_6c = local_6c + 1;
  }
  *(undefined8 *)(puVar4 + lVar1 + -8) = 0x101394;
  puts("GG!, dont forget to submit your flag!");
  if (local_40 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
```

The code seemed like it was xoring some bytes with a constant byte (0x5e) and comparing it to the input. So i told ChatGPT to help me write a script to decode the flag:

```python
local_58 = [0x16,0x1d,0x0d,0x25,0x2c,0x3b,0x28,0x3b,0x2c,0x2d,0x3b,0x01,
            0x37,0x2d,0x01,0x3b,0x3f,0x24,0x27,0x27,0x27,0x27,0x23]
local_71 = 0x5e
flag = ''.join(chr(b ^ local_71) for b in local_58)
print(flag)  # => HCS{reverse_is_eazyyyy}
```

And the flag is: `HCS{reverse_is_eazyyyy}`
