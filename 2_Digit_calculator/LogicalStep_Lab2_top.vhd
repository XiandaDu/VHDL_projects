library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb_n				: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;


architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Use ---
------------------------------------------------------------------- 
--provided vhdl file implementation

	component SevenSegment port (
   		hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   		sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   	); 
   	end component;

	component segment7_mux port (
		clk 				: in std_logic := '0';
		DIN2   			: in  std_logic_vector(6 downto 0);
		DIN1				: in  std_logic_vector(6 downto 0);
		DOUT   			: out std_logic_vector(6 downto 0);
		DIG2  			: out	std_logic;				    		
		DIG1 			 	: out	std_logic				    		
	
	); 
	end component;
	
--own function implementation
	component logic_processor port (
		logic_in0, logic_in1 : in  std_logic_vector(3 downto 0); --Hex A and Hex B
		mux_select 				: in std_logic_vector (1 downto 0);	--pb 0 and pb 1 input
		logic_out 				:out std_logic_vector (3 downto 0)	--control of the on&off of leds
	);
	end component;
	
	component PB_Inverters PORT(
		pb_n : IN std_logic_vector(3 downto 0); --active low input from pbs
		pb   : OUT std_logic_vector(3 downto 0) --active high input from pbs
	);
	END component;
	
	component two_to_one_mux PORT(
		mux_in0, mux_in1  : in  std_logic_vector(3 downto 0); --Hex number and 4bit adder result respectively
		mux_select 			: in std_logic;							--pb2 result, should be active high input
		logic_out 			: out std_logic_vector (3 downto 0)	--Result to be sent to SevenSeg Decoder
	);
	END component;
	
	component full_adder_4bit PORT(
		BUS0_b	: IN std_logic_vector (3 downto 0);	--First stream of input
		BUS1_b	: IN std_logic_vector (3 downto 0); --Second stream of input
		Carry_IN : IN std_logic;							--Carry bit from outside calculation result
		Carry_Out3 : out std_logic;						--carry bit output of the 4bit adder
		SUM 		: out std_logic_vector (3 downto 0)	--stream of bit output based on the result of the 4bit full adder
	);
	END component;
	
	
	
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--

	signal hex_A		: std_logic_vector(3 downto 0); --input from sw3-0
	signal hex_B		: std_logic_vector(3 downto 0); --input from sw7-4
	
	signal seg7_A		: std_logic_vector(6 downto 0); --num to be displayed on DIGIT 1
	signal seg7_B		: std_logic_vector(6 downto 0); --num to be displayed on DIGIT 2
	
	signal pb         : std_logic_vector(3 downto 0); -- store active high push botton input
	signal local_sum: std_logic_vector(3 downto 0);   -- store the sum from adder
	
	signal signal_B : std_logic; 							  --store the carry from the adder
	signal signal_C : std_logic_vector(3 downto 0);   --store the concatenation
	
	signal oprand_A : std_logic_vector (3 downto 0);  --sum or hex_A, to be shown in DIGIT 2
	signal oprand_B : std_logic_vector (3 downto 0);  --carry or hex_B, to be shown in DIGIT 1
	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0);		--sw input1
	hex_B <= sw(7 downto 4);		--sw input2
	signal_C <= "000" & signal_B; --concatenation

--COMPONENT HOOKUP
	

	Logic_pro: logic_processor port map (hex_A, hex_B, pb (1 downto 0), leds (3 downto 0)); --controls the on&off the leds based on the sw inputs
	act_change: PB_Inverters port map (pb_n, pb); 												   	 --let pbs become active high
	
	Calculation: full_adder_4bit port map (hex_A, hex_B, '0', signal_B, local_sum); --sum hex_A and hex_B from sw on&off up
	SEG_A: two_to_one_mux port map (hex_A, local_sum, pb(2), oprand_A);  --decide which number to show on the right digit (DIGIT 2), 1 is hex_A, 0 is sum
	SEG_B: two_to_one_mux port map (hex_B, signal_C, pb(2), oprand_B); 	--decide which number to show on the left digit (DIGIT 1), 1 is hex_B, 0 is carry
	
	Decode1: Sevensegment port map (oprand_A, seg7_B); 	--decode the output we are going to show on the DIGIT 2
	Decode2: Sevensegment port map (oprand_B, seg7_A); 	--decode the output we are going to show on the DIGIT 1
	OUTPUT: segment7_mux port map (clkin_50, seg7_A, seg7_B, seg7_data, seg7_char1, seg7_char2); --Final output the results on FPGA


 
end SimpleCircuit;

