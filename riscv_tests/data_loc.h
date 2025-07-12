#define FRAMEBUF_START 0x80000000
#define CHESS_POS_START 0x00000000
#define CHESSPOSSIZE 16*sizeof(unsigned int) // 16 chess positions, each position is 2 ints (4 pieces per int)
#define PIECES_START (CHESS_POS_START+ CHESSPOSSIZE)
#define PIECES_BUF_SIZE (1008*sizeof(unsigned int)) // 1008 bytes for pieces, each piece is 1 byte
#define PIECE_PTR_START (PIECES_START + PIECES_BUF_SIZE)