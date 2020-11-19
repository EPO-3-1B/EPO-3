library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity eight_bit_and is
  port (
  a : IN std_logic_vector(7 downto 0);
  b : IN std_logic_vector(7 downto 0);
  o : OUT std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioural of eight_bit_and is
begin
  o <= a and b;
end architecture;
