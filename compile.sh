# Compile each to object files
gcc -c math.c -o math.o
gcc -c mul.s -o mul.o
rustc --crate-type=staticlib lib.rs -o librust.a

# Link with GCC
gcc main.c math.o mul.o -L. -lrust -o my_program
