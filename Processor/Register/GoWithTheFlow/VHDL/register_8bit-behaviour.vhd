library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of register_8bit is

signal q : std_logic_vector (7 downto 0);	--adding intermediate signal for output register

begin
reg: process(clk, reset, load)	--process to determine output register
		begin
			if (rising_edge(clk) and load='1') then	--both need to be high to load value from bus
				if (reset='1') then
					q <= "00000000";		--clears the value in q
				elsif (reset='0') then
					q <= data_in;			--data from bus stored in q
				end if;
			end if;
		end process;

output: process(write)		--process to determine when to write to component/bus
		begin
			if (write='1') then
				reg_out <= q;		-- only output when control tells to write, else high impedance
			elsif (write='0') then
				reg_out <= "ZZZZZZZZ";
			end if;
		end process;
end behaviour;
