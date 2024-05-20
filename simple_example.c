#include <stdio.h>
#include <riscv_vector.h>

int main() {
    size_t vl;
    
    vl = vsetvl_e64m1(64); // vl - count elements that can be processed
    
    
    printf("Vector length: %zu\n", vl);
    
    return 0;
}

