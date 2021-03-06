
    --/*************************************************
--*This may not be synthesisez just for simulating purpusus *
--*************************************************/

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity mem_dummy is
  port (
  clk : IN std_logic;
  reset : IN std_logic;

  addres_data_in : IN std_logic_vector(7 downto 0);
  control : IN std_logic_vector(1 downto 0);

  data_out : OUT std_logic_vector(7 downto 0);
  dor_out : OUT std_logic_vector(7 downto 0)
  );
end entity;

architecture arch of mem_dummy is

  component register_8bit IS
    PORT (
        clk : IN STD_LOGIC; -- 25 mhz
        load : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        reg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END component;

-- A9 is load a immidiate
-- AD is load a absolute
-- EA is nopop
  -- update array size acourdingly
  type rom is array (0 to 255) of std_logic_vector(7 downto 0); --65535
  type st is array (256 to 512) of std_logic_vector(7 downto 0); --65535
  signal pla : rom := (
  x"4C",x"03",x"00",x"E6",x"02",x"4C",x"03",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",



      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",

      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",

      x"00", x"00", x"00", x"00", x"00", x"00"
  );
  signal stack : st := (
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"60", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",

      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",

      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
      x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",

      x"00", x"00", x"00", x"00", x"00", x"00", x"00"
  );
  type rom_2 is array (65530 to 65535) of std_logic_vector(7 downto 0); --65535
  constant pla_end : rom_2 := (
    --FFFA   FFFB   NMI
      x"00", x"00",
    --FFFC   FFFD   Reset
      x"00", x"00",
    --FFFE   FFFF   IRQ/BRK
      x"00", x"00"
  );



  signal address : std_logic_vector(15 downto 0);
  signal clk_inv : std_logic;
  signal mal_out, mah_out, data_reg_out : std_logic_vector(7 downto 0);
  signal en_mal, en_mah, en_data, res : std_logic;
  signal location : integer := 0;
  signal write_buf : std_logic;

  type statetype is (reset_state, state_1);
  signal state, next_state : statetype;
begin

  en_mal  <= (NOT control(0)) AND (NOT control(1));
  en_mah  <=  control(0) AND NOT control(1);
  en_data <=  control(1) AND NOT control(0);

  clk_inv <= not clk;
  res <= reset;

  MAL : register_8bit PORT MAP(clk_inv, en_mal, res, addres_data_in, mal_out);
  MAH : register_8bit PORT MAP(clk_inv, en_mah, res, addres_data_in, mah_out);
  DATA : register_8bit PORT MAP(clk_inv, en_data, res, addres_data_in, data_reg_out);

  dor_out <= data_reg_out;
  address <= mah_out & mal_out;
  location <= to_integer(unsigned(address));
  -- at this moment no writing memory




  main : process(location, write_buf)
  begin
      if write_buf = '1' then
        if location <= 255 then
          pla(location) <= data_reg_out;
        elsif (location >= 256) and (location < 512) then
          stack(location) <= data_reg_out;
        end if;
      else
        if location <= 255 then
          data_out <= pla(location);
        elsif (location >= 256) and (location < 512) then
          data_out <= stack(location);
        elsif location > 65529 then
          data_out <= pla_end(location);
        else
          data_out <= x"05";
      end if;
    end if;

  end process main;


  -- Writing to memory!
  comb_proc : process(en_data, state)
  begin
    case(state) is
    when reset_state =>
        write_buf <= '0';
      if en_data = '1' THEN
        next_state <= state_1;
      else
        next_state <= reset_state;
      end if;
    when state_1 =>
        write_buf <= '1';
        next_state <= reset_state;
    end case;
  end process;

  sec_proc : process(clk_inv)
  begin
    if rising_edge(clk_inv) then
        if res = '1' then
          state <= reset_state;
        else
          state <= next_state;
        end if;
      end if;
  end process;

end architecture;
