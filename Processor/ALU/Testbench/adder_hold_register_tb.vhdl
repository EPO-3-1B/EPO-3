-- Verified working!! Tom
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY adder_hold_register_tb IS
END ENTITY;

ARCHITECTURE structural OF adder_hold_register_tb IS
    COMPONENT adder_hold_register IS
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;

            alu_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- 8 bit input from alu
            adl : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- addres low bus
            sb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- system bus

            clk_2 : IN STD_LOGIC; -- clk_2 the content of the alu into register, this is connected to the second phase clock!
            add_adl : IN STD_LOGIC; -- put content to aderes low bus
            add_sb6 : IN STD_LOGIC; -- put content to SB bus 0-6
            add_sb7 : IN STD_LOGIC -- put content to sb bus 7
        );
    END COMPONENT;

    SIGNAL clk, reset : STD_LOGIC;
    SIGNAL alu_data_in, adl, sb : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL clk_2, add_adl, add_sb6, add_sb7 : STD_LOGIC;

BEGIN
    clk <= '0' AFTER 0 ns,
        '1' AFTER 20 ns WHEN clk /= '1' ELSE
        '0' AFTER 20 ns;
    reset <= '1' AFTER 0 ns,
        '0' AFTER 30 ns;
    alu_data_in <= "11111111" AFTER 0 ns;
    clk_2 <= '0' AFTER 0 ns,
        '1' AFTER 50 ns;
    add_adl <= '0' AFTER 0 ns,
        '1' AFTER 100 ns,
        '0' AFTER 150 ns;
    add_sb6 <= '0' AFTER 0 ns,
        '1' AFTER 200 ns,
        '0' AFTER 300 ns;
    add_sb7 <= '0' AFTER 0 ns,
        '1' AFTER 250 ns,
        '0' AFTER 400 ns;

    L1 : adder_hold_register PORT MAP(clk, reset, alu_data_in, adl, sb, clk_2, add_adl, add_sb6, add_sb7);
END ARCHITECTURE;
