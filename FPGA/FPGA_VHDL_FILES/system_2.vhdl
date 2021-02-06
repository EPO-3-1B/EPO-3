--/*************************************************
--*This may not be synthesisez just for simulating purpusus *
--*************************************************/


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity system is
  port (
  clk_25mhz : IN std_logic;
  extern_reset : IN std_logic;

  addres_data : OUT std_logic_vector(7 downto 0);
  control : OUT std_logic_vector(1 downto 0);
  data : IN std_logic_vector(7 downto 0);

  ir_out : OUT std_logic_vector(7 downto 0);

  clk_out : out std_logic
  );
end entity;

architecture arch of system is


  component processor is
    port (
    -- max 16 out/ 16 in
		clk : in std_logic;
		reset : in std_logic;

		-- Interupt -- TODO fix these signals:::
		nmi : in std_logic;	-- NMI stand for non-maskable-interupt edge triggered
		irq : in std_logic;	-- interupt request, level triggered
		sv : in std_logic;
		sob : in std_logic; -- Set overflow if enalbed
		r : IN std_logic; 	-- ready
		synch : OUT std_logic; -- synch signal for external

		-- Data signals
		adb_external : out std_logic_vector(7 downto 0); -- External connection of the addres + data
		adb_control : out std_logic_vector(1 downto 0); -- Select the external register
		db_external : in std_logic_vector(7 downto 0) -- External connection of the databus bus in
    );
  end component;


  -- component mem_dummy is
  --   port (
  --   clk : IN std_logic;
  --   reset : IN std_logic;
  --
  --   addres_data_in : IN std_logic_vector(7 downto 0);
  --   control : IN std_logic_vector(1 downto 0);
  --
  --   data_out : OUT std_logic_vector(7 downto 0);
  --
  --   dor_out : OUT std_logic_vector(7 downto 0)
  --   );
  -- end component;

  signal nmi, irq, sv : std_logic;
  signal r : std_logic;

begin

	clk_out <= clk_25mhz;


  nmi <= '1';
  irq <= '1';
  sv <= '0';
  r <= '1';
  processor_m : processor PORT MAP(clk_25mhz, nmi, extern_reset, irq, sv, r, addres_data, control, data, ir_out);
  -- mem_dummy_m : mem_dummy PORT MAP(clk_25mhz, extern_reset, addres_data, control, data, sys_out);
  --


end architecture;