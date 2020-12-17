library IEEE;
use IEEE.std_logic_1164.ALL;
--use IEEE.numeric_std.ALL;

entity pc_low is
   port(clk     : in  std_logic;
        reset   : in  std_logic;
        I_PC    : in  std_logic;
        PCLC    : out std_logic;
        ADL_PCL : in  std_logic;
        PCL_DB  : in  std_logic;
        PCL_ADL : in  std_logic;
        ADB_IN  : in  std_logic_vector(7 downto 0);
        DB_OUT  : out std_logic_vector(7 downto 0);
        ADB_Out : out std_logic_vector(7 downto 0));
end pc_low;

