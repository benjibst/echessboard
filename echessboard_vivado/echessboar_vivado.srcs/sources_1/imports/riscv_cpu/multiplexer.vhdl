LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Multiplexer4_1 IS
    GENERIC (
        WIDTH : INTEGER := 8 -- Default width
    );
    PORT (
        mp_a, mp_b, mp_c, mp_d : IN STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        mp_out : OUT STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        mp_s0, mp_s1 : IN STD_LOGIC
    );
END Multiplexer4_1;

ARCHITECTURE RTL OF Multiplexer4_1 IS
BEGIN
    PROCESS (mp_a, mp_b, mp_c, mp_d, mp_s0, mp_s1) IS
    BEGIN
        IF (mp_s0 = '0' AND mp_s1 = '0') THEN
            mp_out <= mp_a;
        ELSIF (mp_s0 = '1' AND mp_s1 = '0') THEN
            mp_out <= mp_b;
        ELSIF (mp_s0 = '0' AND mp_s1 = '1') THEN
            mp_out <= mp_c;
        ELSE
            mp_out <= mp_d;
        END IF;
    END PROCESS;
END RTL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer2_1 IS
    GENERIC (
        WIDTH : INTEGER := 8 -- Default width
    );
    PORT (
        mp_a, mp_b : IN STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        mp_out : OUT STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        mp_s : IN STD_LOGIC
    );
END Multiplexer2_1;

ARCHITECTURE RTL OF Multiplexer2_1 IS
BEGIN
    PROCESS (mp_a, mp_b, mp_s)
    BEGIN
        IF mp_s = '0' THEN
            mp_out <= mp_a;
        ELSE
            mp_out <= mp_b;
        END IF;
    END PROCESS;
END RTL;