library ieee;
use ieee.std_logic_1164.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

Entity full_adder_4bit IS
	PORT
	(
		BUS0_b: IN std_logic_vector (3 downto 0);	--First stream of input
		BUS1_b: IN std_logic_vector (3 downto 0); --Second stream of input
		Carry_IN : IN std_logic;						--Carry bit from outside calculation result
		Carry_Out3 : out std_logic;					--carry bit output of the 4bit adder
		SUM : out std_logic_vector (3 downto 0)	--stream of bit output based on the result of the 4bit full adder
	);
END full_adder_4bit;




Architecture gates OF full_adder_4bit IS

	--we will use four 1bit full adders to achieve the function of the 4bit full adder
	component full_adder_1bit PORT
		(
			Input_A: IN std_logic;
			Input_B: IN std_logic;
			Carry_IN : IN std_logic;
			full_adder_Carry_OUTPUT : out std_logic;
			full_adder_sum_output : out std_logic
		);
	END component;

signal Carry_out : std_logic_vector(3 downto 0);

Begin
	
	--EX : full_adder_1bit port map (input 1, input 2, carry from previous result, carry out, sum output);
	INST1 : full_adder_1bit port map (BUS0_b(0), BUS1_b(0), Carry_IN,     Carry_out(0), SUM(0));
	INST2 : full_adder_1bit port map (BUS0_b(1), BUS1_b(1), Carry_out(0), Carry_out(1), SUM(1));
	INST3 : full_adder_1bit port map (BUS0_b(2), BUS1_b(2), Carry_out(1), Carry_out(2), SUM(2));
	INST4 : full_adder_1bit port map (BUS0_b(3), BUS1_b(3), Carry_out(2), Carry_OUT3,   SUM(3));

END gates;