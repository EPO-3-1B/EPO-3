library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity alu is
  port (
  a :         IN std_logic_vector(7 downto 0);
  b :         IN std_logic_vector(7 downto 0);
  cin :       IN std_logic;
  controll :  IN std_logic_vector(2 downto 0);
  o :         OUT std_logic_vector(7 downto 0);
  AVR :       OUT std_logic;
  ACR :       OUT std_logic; -- cary out
  HC  :       OUT std_logic
  );
end entity;

architecture structural of alu is

component eight_bit_adder is
  port (
  a : IN std_logic_vector(7 downto 0);
  b : IN std_logic_vector(7 downto 0);
  cin : IN std_logic;
  o : OUT std_logic_vector(7 downto 0);
  carry : OUT std_logic
  );
end component;

component eight_bit_or is
  port (
      a : IN std_logic_vector(7 downto 0);
      b : IN std_logic_vector(7 downto 0);
      o : OUT std_logic_vector(7 downto 0)
  );
end component;

component eight_bit_xor is
  port (
  a : IN std_logic_vector(7 downto 0);
  b : IN std_logic_vector(7 downto 0);
  o : OUT std_logic_vector(7 downto 0)
  );
end component;

component eight_bit_and is
  port (
  a : IN std_logic_vector(7 downto 0);
  b : IN std_logic_vector(7 downto 0);
  o : OUT std_logic_vector(7 downto 0)
  );
end component;

component eight_bit_shift is
  port (
  a : IN std_logic_vector(7 downto 0);
  b : IN std_logic_vector(7 downto 0);
  o : OUT std_logic_vector(7 downto 0)
  );
end component;

-- Main operations
-- Additinos, Or, Xor, And, Shift right, Carry in
-- 0000 addition

signal o_adder, o_or, o_xor, o_and, o_shift : std_logic_vector(7 downto 0);
begin
ADDER: eight_bit_adder port map(a, b, cin, o_adder, ACR);
ORR  : eight_bit_or port map(a, b, o_or);
XORR : eight_bit_xor port map(a, b, o_xor);
ANDD : eight_bit_and port map(a, b, o_and);
SHIFT : eight_bit_shift port map(a, b, o_shift);



-- -- The logic only updates when the states update Its important to take away that processes does not work if you want to synthesis logic
-- ALU : process(a, b)
-- begin
--
--   case controll is
--
--   -- Addition
--   when "000" =>
--     o <= o_adder;
--
--   -- Or
--   when "001" =>
--   o <= o_or;
--
--
--   -- Xor
--   when "010" =>
--   o <= o_xor;
--
--
--   -- And
--   when "011" =>
--   o <= o_and;
--
--
--   -- Shift right
--   when "100" =>
--   o <= o_shift;
--
--   --   -- carry in
--   -- when "101" =>
--
--   when others =>
--     o <= "00000000";
--   end case;
--
--
-- end process;


with controll select o <=
-- Addition
  o_adder when "000",
-- Or
  o_or when "001",
-- Xor
  o_xor when "010",
-- And
  o_and when "011",
-- Shift right
  o_shift when "100",
  "00000000" when others;






end architecture;
