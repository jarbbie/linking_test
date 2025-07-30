#include <stdio.h>

extern int add(int a, int b);             // From math.c
extern int rust_add(int a, int b);        // From lib.rs
extern long asm_mul(long a, long b);      // From mul.s

int main()
{
  printf("c_add(3, 5): %d\n", add(3, 5));
  printf("rust_add(4, 6): %d\n", rust_add(4, 6));
  printf("asm_mul(3, 7): %ld\n", asm_mul(3, 7));
}
