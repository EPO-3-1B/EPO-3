LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY a_input_register IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_add : IN STD_LOGIC; --Load all 0's
    SB_add : IN STD_LOGIC --Load data from bus
  );
END ENTITY;
ARCHITECTURE strucutural OF a_input_register IS

  COMPONENT register_8bit IS
    PORT (
      clk : IN STD_LOGIC;
      load : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;

  SIGNAL temp_data, bus_data: STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL control : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL temp_control : STD_LOGIC;
  --SIGNAL oldput : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  L1 : register_8bit PORT MAP(clk => clk, load => '1', reset => reset, data_in  => temp_data, reg_out => o);

  control(0) <= o_add;
  control(1) <= SB_add;
  bus_data <= a;

  WITH control SELECT temp_data <=
    bus_data WHEN "01",
    "00000000" WHEN "10",
    "00000000" WHEN OTHERS;

  WITH control SELECT temp_control <=
    '1' WHEN "01",
    '1' WHEN "10",
    '0' WHEN OTHERS;

END ARCHITECTURE;