#include "data_loc.h"
static unsigned int* framebuffer = (unsigned int*)FRAMEBUF_START;
static unsigned int* chess_pos = (unsigned int*)CHESS_POS_START;
static const unsigned int* pieces_buf = (unsigned int*)PIECES_START;
static unsigned int** pieces_img = (unsigned int**)PIECE_PTR_START;


#define COLOR_BITS 2
#define PX_PER_INT 16
#define IMG_WIDTH_PX 640
#define IMG_WIDTH_INT 40
#define IMG_HEIGHT_PX 480
#define CB_SIDE_PX 384
#define CB_SIDE_INT 24
#define SQUARE_SIDE_PX 48
#define SQUARE_SIDE_INT 3
#define TOP_BORDER_PX 48
#define BOTTOM_BORDER_PX 48
#define LEFT_BORDER_INT 8
#define RIGHT_BORDER_INT 8

#define PIECE_COLOR_BIT (1 << 7) // 0 for white, 1 for black

int main(void)
{
    unsigned int background = 0xFFFFFFFF; // 0b11 for every pixel -> same color as black pieces
    // draw top portion of background
    unsigned int curr_pixel = 0;
    unsigned int col = 0;
    unsigned int piece_data = 0; // piece data is for 4 pieces of a column, each piece is 1 byte
    unsigned int chess_pos_idx = 0;
    unsigned int piece_shift = 24;
    unsigned int piece = 0;
    unsigned int piece_row_offset = 0;
    unsigned int int_in_col = 0;
    unsigned int curr_16px_data = 0;
    unsigned int square_color = 0;
    

    for (;;)
    {
        for (unsigned int i = 0; i < IMG_WIDTH_INT * TOP_BORDER_PX; i++)
        {
            framebuffer[curr_pixel++] = background;
        }

        for (unsigned int curr_row = 0; curr_row < 8; curr_row++)
        {
            for (unsigned int y_in_row = 0; y_in_row < SQUARE_SIDE_PX; y_in_row++)
            {
                chess_pos_idx = curr_row<<1; // 2 ints per row, each int has 4 pieces
                if(col>=4){
                    chess_pos_idx += 1; // if col is 4, we are in the second int of the row
                }
                piece_data = chess_pos[chess_pos_idx];
                for (unsigned int j = 0; j < LEFT_BORDER_INT; j++)
                {
                    framebuffer[curr_pixel++] = background;
                }
                col = 0;
                piece_data = chess_pos[chess_pos_idx];
                piece_shift = 24;                           // reset the piece shift for the first column
                piece = (piece_data >> piece_shift) & 0xFF; // get the piece at the current shift
                for (unsigned int j = 0; j < CB_SIDE_INT; j++)
                {
                    // 7 = 111 -> lower 3 bits are used for piece id, highest bit is for color
                    curr_16px_data = pieces_img[piece & 7][piece_row_offset + int_in_col];
                    // white piece 10 black piece 11 backgound 00
                    // white square 00 black square
                    int piece_pixels = 0;
                    if (piece & PIECE_COLOR_BIT)
                        piece_pixels = 0xAAAAAAAA;
                    else
                        piece_pixels = 0xFFFFFFFF;
                    framebuffer[curr_pixel++] = (curr_16px_data & piece_pixels) | (~curr_16px_data & square_color);
                    int_in_col++;
                    if (int_in_col == SQUARE_SIDE_INT)
                    {
                        square_color ^= 0x55555555; // toggle square color every 48 pixels 0x555 is 0b010101010101
                        col++;
                        piece_shift -= 8;                           // move to the next piece in the column
                        piece = (piece_data >> piece_shift) & 0xFF; // get the piece at the current shift
                        int_in_col = 0;                             // reset the int in column counter
                    }
                    if (col == 4) // a column is 2 integers (4 bytes per integer, 1 byte per piece)
                    {
                        chess_pos_idx++;
                        piece_shift = 24; // reset the piece shift for the next column
                    }
                }
                for (unsigned int j = 0; j < RIGHT_BORDER_INT; j++)
                {
                    framebuffer[curr_pixel++] = background;
                }
                piece_row_offset += SQUARE_SIDE_INT;
            }
            piece_row_offset = 0; // reset the piece row offset for the next row
            square_color ^= 0x55555555; // toggle square color every 48 pixels 0x555 is 0b010101010101
        }
        chess_pos_idx = 0;
        for (int i = 0; i < IMG_WIDTH_INT * BOTTOM_BORDER_PX; i++)
        {
            framebuffer[curr_pixel++] = background;
        }
        curr_pixel = 0;
    }
}