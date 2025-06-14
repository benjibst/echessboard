#define FRAMEBUF_START 0x80000000
#define PIECES_START 0x00000200
#define CHESS_POS_START 0x00000100

static unsigned int framebuffer[19200];
static unsigned int chess_pos[16];
static unsigned int pieces_buf[864];

#define COLOR_BITS 2
#define PX_PER_INT (sizeof(int) * 8 / COLOR_BITS)
#define IMG_WIDTH_PX 640
#define IMG_WIDTH_INT 40
#define IMG_HEIGHT_PX 480
#define CB_SIDE_PX (8 * 48)
#define CB_SIDE_INT CB_SIDE_PX / PX_PER_INT
#define SQUARE_SIDE_PX 48
#define SQUARE_SIDE_INT 3
#define TOP_BORDER_PX 48
#define BOTTOM_BORDER_PX TOP_BORDER_PX
#define LEFT_BORDER_INT (((IMG_WIDTH_PX - CB_SIDE_PX) / 2) / PX_PER_INT)
#define RIGHT_BORDER_INT LEFT_BORDER_INT

typedef enum
{
    PIECES_ID_B = 1, // black bishop
    PIECES_ID_K = 2, // black king
    PIECES_ID_N = 3, // black knight
    PIECES_ID_P = 4, // black pawn
    PIECES_ID_Q = 5, // black queen
    PIECES_ID_R = 6, // black rook
} PIECES_ID;
#define PIECE_COLOR_BIT (1 << 7) // 0 for white, 1 for black
unsigned int *pieces_img[6] = {
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_B * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_K * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_N * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_P * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_Q * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
    (unsigned int *)(&pieces_buf[0] + PIECES_ID_R * SQUARE_SIDE_INT * SQUARE_SIDE_PX),
};

int main(void)
{
    unsigned int background = 0xFFFFFFFF; // 0b11 for every pixel -> same color as black pieces
    // draw top portion of background
    unsigned int curr_pixel = 0;
    unsigned int row = 0;
    unsigned int col = 0;
    unsigned int px_in_row = 0;
    unsigned int piece_data = 0; // piece data is for 4 pieces of a column, each piece is 1 byte
    unsigned int chess_pos_idx = 0;
    unsigned int piece_shift = 24;
    unsigned int piece = 0;
    unsigned int piece_row_offset = 0;
    unsigned int int_in_col = 0;
    unsigned int curr_16px_data = 0;
    unsigned int square_color = 0;

    while (1)
    {
        for (unsigned int i = 0; i < IMG_WIDTH_INT * TOP_BORDER_PX; i++)
        {
            framebuffer[curr_pixel++] = background;
        }

        for (unsigned int i = 0; i < 8 * 48; i++)
        {
            for (unsigned int j = 0; j < LEFT_BORDER_INT; j++)
            {
                framebuffer[curr_pixel++] = background;
            }
            col = 0;
            piece_data = chess_pos[chess_pos_idx];
            piece_shift = 24;                           // reset the piece shift for the first column
            piece = (piece_data >> piece_shift) & 0xFF; // get the piece at the current shift
            square_color = 0;                           // 0 for white, 1 for black
            for (unsigned int j = 0; j < CB_SIDE_INT; j++)
            {
                // 7 = 111 -> lower 3 bits are used for piece id, highest bit is for color
                curr_16px_data = pieces_img[piece & 7][piece_row_offset + int_in_col];
                // white piece 10 black piece 11 backgound 00
                // white square 00 black square
                if (piece & PIECE_COLOR_BIT)
                {
                    // set to color where not background and set to background where not piece
                    framebuffer[curr_pixel++] = (curr_16px_data & 0xaaaaaaaa) | (~curr_16px_data & square_color);
                }
                else
                {
                    // set to color where not background and set to background where not piece
                    framebuffer[curr_pixel++] = (curr_16px_data) | (~curr_16px_data & square_color);
                }
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
                    piece_data = chess_pos[chess_pos_idx];
                    piece_shift = 24; // reset the piece shift for the next column
                }
            }
            for (unsigned int j = 0; j < RIGHT_BORDER_INT; j++)
            {
                framebuffer[curr_pixel++] = background;
            }
            px_in_row++;
            piece_row_offset += SQUARE_SIDE_INT;
            if (px_in_row == 48)
            {
                px_in_row = 0;
                row++;
                piece_row_offset = 0;
            }
        }
        chess_pos_idx = 0;
        for (int i = 0; i < IMG_WIDTH_INT * BOTTOM_BORDER_PX; i++)
        {
            framebuffer[curr_pixel++] = background;
        }
        curr_pixel = 0;
    }
}