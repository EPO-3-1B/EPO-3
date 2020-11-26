LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Ainputreg_tb IS
END ENTITY;

ARCHITECTURE structural OF Ainputreg_tb IS
    COMPONENT Ainputreg IS
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_add : IN STD_LOGIC; --Load all 0's
            SB_add : IN STD_LOGIC --Load data from bus
        );
    END COMPONENT;

    SIGNAL a, o : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL o_add, SB_add, reset, clk : STD_LOGIC;
    SIGNAL counter_a : INTEGER := 0;

BEGIN
    clk <= '0' AFTER 0 ns,
        '1' AFTER 20 ns WHEN clk /= '1' ELSE
        '0' AFTER 20 ns;
    reset <= '1' AFTER 0 ns;
    counter_a <= (counter_a + 1) AFTER 5 ns;
    o_add <= '0' AFTER 0 ns,
        '1' AFTER 90 ns,
        '0' AFTER 200 ns;
    SB_add <= '0' AFTER 0 ns,
        '1' AFTER 150 ns,
        '0' AFTER 400 ns;

    a <= STD_LOGIC_VECTOR(to_unsigned(counter_a, a'length));
    L1 : Ainputreg PORT MAP(clk, reset, a, o, o_add, SB_add);
END ARCHITECTURE;