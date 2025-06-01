--adapted from https://forum.digikey.com/t/vga-controller-vhdl/12794

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY vga_controller IS
    GENERIC(
        h_pixels : INTEGER := 640;
        h_front_porch : INTEGER := 16;
        h_sync_pulse : INTEGER := 96;
        h_back_porch : INTEGER := 48;
        v_pixels : INTEGER := 480;
        v_front_porch : INTEGER := 10;
        v_sync_pulse : INTEGER := 2;
        v_back_porch : INTEGER := 33);
    PORT(
        vga_pixel_clk : IN   STD_LOGIC;
        vga_reset_n   : IN   STD_LOGIC;
        vga_h_sync    : OUT  STD_LOGIC;
        vga_v_sync    : OUT  STD_LOGIC;
        vga_disp_en  : OUT  STD_LOGIC;
        vga_img_x    : OUT  INTEGER; --x coordinate of image as input to image generator   
        vga_img_y: OUT  INTEGER;
        vga_n_blank   : OUT  STD_LOGIC;
        vga_n_sync    : OUT  STD_LOGIC);
END vga_controller;

ARCHITECTURE behavior OF vga_controller IS
    CONSTANT h_len_tot : INTEGER := h_sync_pulse + h_back_porch + h_pixels + h_front_porch; --total number of pixel clocks in a row
    CONSTANT v_len_tot : INTEGER := v_sync_pulse + v_back_porch + v_pixels + v_front_porch; --total number of rows in column
BEGIN

    vga_n_blank <= '1';
    vga_n_sync <= '0';

    PROCESS(vga_pixel_clk, vga_reset_n)
        VARIABLE h_count : INTEGER RANGE 0 TO h_len_tot - 1 := 0;  --horizontal counter (counts the columns)
        VARIABLE v_count : INTEGER RANGE 0 TO v_len_tot - 1 := 0;  --vertical counter (counts the rows)
    BEGIN

        IF(vga_reset_n = '0') THEN
            h_count := 0;
            v_count := 0;
            vga_img_x <= 0;
            vga_img_y <= 0;
            vga_h_sync <= '1';      --negative polarity so active low sync
            vga_v_sync <= '1';
            vga_disp_en <= '0';          --disable display

        ELSIF(rising_edge(vga_pixel_clk)) THEN
            IF(h_count < h_len_tot - 1) THEN
                h_count := h_count + 1;
            ELSE
                h_count := 0;
                IF(v_count < v_len_tot - 1) THEN
                    v_count := v_count + 1;
                ELSE
                    v_count := 0;
                END IF;
            END IF;

            IF(h_count < h_pixels + h_front_porch OR h_count >= h_pixels + h_front_porch + h_sync_pulse) THEN
                vga_h_sync <= '1';
            ELSE
                vga_h_sync <= '0';
            END IF;

            IF(v_count < v_pixels + v_front_porch OR v_count >= v_pixels + v_front_porch + v_sync_pulse) THEN
                vga_v_sync <= '1';
            ELSE
                vga_v_sync <= '0';
            END IF;

            IF(h_count < h_pixels) THEN
                vga_img_x <= h_count;
            END IF;
            IF(v_count < v_pixels) THEN
                vga_img_y <= v_count;
            END IF;

            IF(h_count < h_pixels AND v_count < v_pixels) THEN
                vga_disp_en <= '1';
            ELSE
                vga_disp_en <= '0';
            END IF;

        END IF;
    END PROCESS;

END behavior;