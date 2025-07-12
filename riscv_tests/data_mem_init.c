


#include <stdio.h>
#include "data_loc.h"
int main(void){
    for (int i = 0; i < 16; i++) {
        printf("%08x ", chess_pos[i]);
    }
    for (int i=0;i<sizeof(pieces_buf)/sizeof(pieces_buf[0]);i++){
        printf("%08x ", pieces_buf[i]);
    }
    for (int i=0;i<7;i++){
        printf("%08x ", PIECES_START + i*3*48*sizeof(unsigned int));
    }
    return 0;
}