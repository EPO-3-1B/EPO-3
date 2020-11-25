library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity program_counter is
  port (
  clk : IN std_logic;
  reset : IN std_logic;
  I/PC : IN std_logic; -- Program counter increment enable
  -- PCL/PCL : IN std_logic; -- Load form program counter I dont think this realy neaded
  PCLC : OUT std_logic; -- carry out
  -- Bus controll signals
  ADL/PCL : IN std_logic; -- load form Adress bus
  PCL/DB  : IN std_logic; -- Put data on databus
  PCL/ADL : IN std_logic; -- Put data on adress bus
  -- Bus in
  ADB_IN : IN std_logic_vector(7 downto 0); -- addres buss in for loading
  -- Bus out
  DB_OUT : OUT std_logic_vector(7 downto 0); -- output to databus
  ADB_OUT: OUT std_logic_vector(7 downto 0) -- addres buss for output
  );
end entity;

component register_8bit IS
	PORT (
		clk : IN STD_LOGIC;
		load : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END component;

architecture arch of program_counter is
signal load : std_logic;
signal data_in, reg_out : std_logic_vector(7 downto 0);

signal controll : std_logic_vector(1 downto 0);

signal to_increment, to_register : std_logic_vector(7 downto 0);
begin
  -- controll(3) <= PCL/PCL;

  -- Program counter select
  with ADL/PCL select to_increment <=
	ADB_IN when "1",
  reg_out when others;

  -- Increment
  with I/PC select to_register <=
  std_logic_vector( unsigned(to_increment) + 1 ) when "1",
  to_increment when others;

  -- register
  l1 : register_8bit PORT MAP(clk,reset, load, to_register, reg_out);


  -- Adress bus output
  with PCL/ADL select ADB_OUT <=
  reg_out when "1",
  "zzzzzzzz" when others;

  -- data bus output
  with PCL/DB select DB_OUT <=
  reg_out when "1",
  "zzzzzzzz" when others;



end architecture;
