library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stack_pointer_tb is
end entity;

architecture behavioural of stack_pointer_tb is
    component stack_pointer is
		port(
				clk		: in std_logic;
				reset	: in std_logic;
				sb_s	: in std_logic; -- load from sb
				s_sb	: in std_logic; -- output to sb
				s_adl	: in std_logic; -- output to adl
				sb_in	: in std_logic_vector(7 downto 0);
				sb_out	: out std_logic_vector(7 downto 0);
				adl_out	: out std_logic_vector(7 downto 0));
    end component;

    signal sb_in, sb_out, adl_out : std_logic_vector(7 downto 0);
    signal reset, clk, sb_s, s_sb, s_adl : std_logic;

begin
    clk <= 	'0' after 0 ns,
       	 	'1' after 20 ns when clk /= '1' else
       		'0' after 20 ns;
    reset <= '1' after 0 ns,
			'0' after 50 ns;
    sb_s <= '0' after 0 ns,
			'1' after 140 ns,
			'0' after 180 ns;
	s_sb <= '0' after 0 ns,
			'1' after 60 ns,
			'0' after 100 ns,
			'1' after 200 ns,
			'0' after 240 ns;
	s_adl <= '0' after 0 ns,
			'1' after 100 ns,
			'0' after 140 ns,
			'1' after 240 ns,
			'0' after 280 ns;
   sb_in	 <= "11111111";

L1 : stack_pointer port map(clk, reset, sb_s, s_sb, s_adl, sb_in, sb_out, adl_out);
   end architecture;

