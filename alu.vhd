library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity alu is
  port (
  a :         IN std_logic_vector(7 downto 0);
  b :         IN std_logic_vector(7 downto 0);
  controll :  IN std_logic_vector(2 downto 0);
  o :         OUT std_logic_vector(7 downto 0);
  AVR :       OUT std_logic;
  ACR :       OUT std_logic;
  HC  :       OUT std_logic
  );
end entity;

component full_ader is
  port (
    a : IN std_logic;
    b : IN std_logic;
    cin : IN std_logic;
    o : OUT std_logic;
    carry : OUT std_logic;
  )
end component

-- Main operations
-- Additinos, Or, Xor, And, Shift right, Carry in
-- 0000 addition

architecture arch of alu is
begin

ALU : process(a, b)
begin

  case controll is

  -- Addition
  when "000" =>
    o <= std_logic_vector(unsigned(a) + unsigned(b));

  -- Or
  when "001" =>


  -- Xor
  when "010" =>
 

  -- And
  when "011" =>
    o(0) <= a(0) and b (0);
    o(1) <= a(1) and b (1);
    o(2) <= a(2) and b (2);
    o(3) <= a(3) and b (3);
    o(4) <= a(4) and b (4);
    o(5) <= a(5) and b (5);
    o(6) <= a(6) and b (6);
    o(7) <= a(7) and b (7);


  -- Shift right
  when "100" =>
    o(1) <= a(2);
    o(2) <= a(3);
    o(3) <= a(4);
    o(4) <= a(5);
    o(5) <= a(6);
    o(6) <= a(7);
    o(7) <= '0';

    -- carry in
  when "101" =>
      o <= "00000000";


  when others =>
    o <= "00000000";
  end case;


end process;





end architecture;
