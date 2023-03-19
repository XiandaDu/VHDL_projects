library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
--	HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------
	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 

component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;

component Compx4 port (
	A, B : in std_logic_vector (3 downto 0);
	AgtB, AeqB, AsmB : out std_logic
	);
end component Compx4;

component Bidir_shift_reg port(
		CLK			: in std_logic :='0';
		RESET			: in std_logic := '0';
		CLK_EN 		: in std_logic :='0';
		LEFT0_RIGHT1: in std_logic := '0';
		REG_BITS		: out std_logic_vector(7 downto 0)
	);
end component Bidir_shift_reg;

component U_D_Bin_Counter8bit port(
			CLK			: in std_logic;
			RESET 		: in std_logic;
			CLK_EN		: in std_logic;
			UP1_DOWN0	: in std_logic;
			COUNTER_BITS: out std_logic_vector(7 downto 0)
	);
end component U_D_Bin_Counter8bit;
--	
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
	end component;
----	
component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------
component Energy_Monitor PORT (
		compare	: IN std_logic_vector (2 downto 0); --gt, eq, less
		pb_in		: IN std_logic_vector (3 downto 0); --vacation, MC test, windows open, door open
		light7	: out std_logic;
		lights 	: out std_logic_vector(5 downto 0);
		run 		: out std_logic;
		increase : out std_logic;
		decrease : out std_logic
	);
END component;

component PB_Inverters PORT (
		pb_n: IN std_logic_vector(3 downto 0); --active low input from pbs
		pb : OUT std_logic_vector(3 downto 0)	--active high input from pbs
	);
END component;

component two_to_one_mux port (
		mux_in0, mux_in1 : in  std_logic_vector(3 downto 0);
		mux_select : in std_logic;									
		logic_out :out std_logic_vector (3 downto 0)			
	);
end component;
------------------------------------------------------------------	
-- Create any additional internal signals to be used
------------------------------------------------------------------	
constant HVAC_SIM : boolean := false; -- set to FALSE when compiling for FPGA download to LogicalStep board 
                                      -- or TRUE for doing simulations with the HVAC Component
------------------------------------------------------------------	

-- global clock
signal clk_in					: std_logic;
signal hex_A, hex_B 			: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg: std_logic_vector(6 downto 0);

signal comp_results : std_logic_vector (2 downto 0);
signal pb_hi : std_logic_vector (3 downto 0);
signal run : std_logic;
signal increase : std_logic;
signal decrease : std_logic;
signal current_temp : std_logic_vector (3 downto 0);
signal set_temp :std_logic_vector (3 downto 0);
------------------------------------------------------------------- 
begin -- Here the circuit begins

clk_in <= clkin_50;	--hook up the clock input

-- temp inputs hook-up to internal busses.
hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);

Inverter : PB_Inverters port map (pb_n, pb_hi);
Energy_module : Energy_Monitor port map (comp_results, pb_hi,leds(7),leds(5 downto 0), run, increase, decrease);
HVAC_module : HVAC port map (HVAC_SIM, clkin_50, run, increase, decrease, current_temp);
MUX : two_to_one_mux port map (hex_A, hex_B, pb_hi(3), set_temp);
INST4: Compx4 port map (set_temp, current_temp, comp_results(2), comp_results(1),comp_results(0));

Decoder_up: sevensegment port map (set_temp, hexA_7seg);
Decoder_down: sevensegment port map (current_temp, hexB_7seg);
inst3: segment7_mux port map (clkin_50, hexA_7seg, hexB_7seg, seg7_data, seg7_char2, seg7_char1);
Tester_module : tester port map (pb_hi(2), comp_results(1), comp_results(2), comp_results(0), Hex_A, current_temp, leds(6));
--INST_REG_SHIFT : Bidir_shift_reg port map (clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
--Counter : U_D_Bin_counter8bit port map (clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
		
end design;

