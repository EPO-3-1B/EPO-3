library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity program_counter_basis is
  port (
  clk : IN std_logic;
  reset : IN std_logic;
  i_pc : IN std_logic; -- Program counter increment enable
  -- PCL_PCL : IN std_logic; -- Load form program counter I dont think this realy neaded
  pclc : OUT std_logic; -- carry out
  -- Bus controll signals
  adl_pcl : IN std_logic; -- load form Adress bus
  pcl_db  : IN std_logic; -- Put data on databus
  pcl_adl : IN std_logic; -- Put data on adress bus
  -- Bus in
  adb_in : IN std_logic_vector(7 downto 0); -- addres buss in for loading
  -- Bus out
  db_out : OUT std_logic_vector(7 downto 0); -- output to databus
  adl_out: OUT std_logic_vector(7 downto 0) -- addres buss for output
  );
end entity;



architecture arch of program_counter_basis is

  component register_8bit IS
  	PORT (
  		clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
  		load : IN STD_LOGIC;
  		data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  		reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
  END component;


signal data_in, reg_out : std_logic_vector(7 downto 0);

signal controll : std_logic_vector(1 downto 0);

signal to_increment, to_register : std_logic_vector(7 downto 0);
begin
  -- controll(3) <= PCL_PCL;

  -- Program counter select
  with ADL_PCL select to_increment <=
	ADB_IN when '1',
  reg_out when others;

  -- Increment
  with I_PC select to_register <=
  std_logic_vector( unsigned(to_increment) + 1 ) when '1',
  to_increment when others;

  -- register
  l1 : register_8bit PORT MAP(clk, reset, '1', to_register, reg_out);

  -- Adress bus output
  with pcl_adl select adl_out <=
  reg_out when '1',
  "ZZZZZZZZ" when others;

  -- data bus output
  with pcl_db select db_out <=
  reg_out when '1',
  "ZZZZZZZZ" when others;



end architecture;