# Tuff Shop

## Description

## Solution

By deassmbling the binary using ghidra, i got the following code:

```c
undefined8 main(void)

{
  long in_FS_OFFSET;
  int local_18;
  uint local_14;
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  while( true ) {
    while( true ) {
      menu(aura);
      __isoc99_scanf(&DAT_00102145,&local_18);
      if ((-1 < local_18) && (local_18 < 4)) break;
      puts("Invalid choice");
    }
    if (local_18 == 0) break;
    printf("Enter quantity: ");
    __isoc99_scanf(&DAT_00102145,&local_14);
    if ((int)local_14 < 1) {
      puts("Invalid quantity");
    }
    else {
      buy(local_18,local_14);
    }
  }
  puts("Exiting...");
  if (local_10 == *(long *)(in_FS_OFFSET + 0x28)) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}
```

```c
void buy(int param_1,uint param_2)

{
  int param2;
  long in_FS_OFFSET;
  int local_1c [3];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  local_1c[0] = 0x43;
  local_1c[1] = 0x29;
  local_1c[2] = 100000;
  param2 = local_1c[param_1 + -1] * param_2;
  printf("Total cost for %d items: $%d\n",param_2,param2);
  if (aura < param2) {
    puts("Not enough balance");
  }
  else {
    aura = aura - param2;
    printf("Purchase successful! Remaining balance: $%d\n",aura);
    if (param_1 == 3) {
      flag();
    }
  }
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
```

```c
void flag(void)

{
  FILE *__stream;
  long in_FS_OFFSET;
  char local_78 [104];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  __stream = fopen("flag.txt","r");
  if (__stream == (FILE *)0x0) {
    puts("Error opening flag.txt");
  }
  else {
    fgets(local_78,100,__stream);
    printf("Send this to the customer: %s\n",local_78);
    fclose(__stream);
  }
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
```

By buying flag then entering quantity `21475` the amount will be negative because it uses signed 32 bit integer. The signed int will reach 32 bit and be wrapped to negative. `21475 * 100000 = 2147500000` It will be more than the 32 bit signed integer limit of `2147483647`

The flag is: `HCS{u_r_s0_tufff_pl3453_h4ck_m333_4g41nn_<3_ed613fe2-9da7-45a7-9a74-6ea406d8078e}`
