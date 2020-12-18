library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of pass is
begin
  lb11: process (control)
  begin
	if (control = '1') then
		output <= input;
	else
		output <= "ZZZZZZZZ";
	end if;
   end process;
end behaviour;

