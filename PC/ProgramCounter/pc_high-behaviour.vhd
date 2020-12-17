library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of pc_high is
component register_8bit
	PORT (	clk :	in	std_logic;
		reset :	in	std_logic;
		data_in :	in	std_logic_vector(7 downto 0);
		reg_out :	out	std_logic_vector(7 downto 0));
end component;
signal data_in, reg_out :	std_logic_vector(7 downto 0);
signal to_increment, to_register :	std_logic_vector(7 downto 0);
signal incr :	std_logic_vector(1 downto 0);
begin
	incr(0)	<= I_PC;
	incr(1)	<= PCHC;
	with ADH_PCH select to_increment	<=
		ADB_IN when '1',
		reg_out when others;
--	with I_PC select to_register	<=
--		std_logic_vector( unsigned(to_increment) + 1 + PCHC) when '1',
--		to_increment when others;
	with incr select to_register	<=
		to_increment when "00",
		std_logic_vector( unsigned(to_increment) + 2) when "11",
		std_logic_vector( unsigned(to_increment) + 1) when others;
	with PCH_ADH select ADB_OUT	<=
		reg_out when '1',
		"ZZZZZZZZ" when others;
	with PCH_DB select DB_OUT	<=
		reg_out when '1',
		"ZZZZZZZZ" when others;
l1:	register_8bit PORT MAP(clk, reset, to_register, reg_out);
end behaviour;

