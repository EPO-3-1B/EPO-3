library IEEE;
use IEEE.std_logic_1164.ALL;

entity register_8bit is
   port(clk     : in  std_logic;
        load    : in  std_logic;
        reset   : in  std_logic;
        data_in : in  std_logic_vector(7 downto 0);
        write   : in  std_logic;
        reg_out : out std_logic_vector(7 downto 0));
end register_8bit;

