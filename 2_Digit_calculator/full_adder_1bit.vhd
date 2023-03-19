library ieee;
use ieee.std_logic_1164.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

Entity full_adder_1bit IS
	PORT
	(
		Input_A: IN std_logic;							--one bit input
		Input_B: IN std_logic;							--another one bit input
		Carry_IN : IN std_logic;						--inherit from previous calculations
		full_adder_Carry_OUTPUT : out std_logic;  --carry bit output
		full_adder_sum_output : out std_logic  	--sum bit output
	);
END full_adder_1bit;

Architecture gates OF full_adder_1bit IS

--We will use a half adder within a full adder to achieve the function of the full adder accroding to the lab manual
component half_adder PORT
	(
		Input_A: IN std_logic;
		Input_B: IN std_logic;
		Carry_OUTPUT : out std_logic;
		sum_output : out std_logic
	);
END component;


signal half_adder_carry_output:std_logic; --the carry bit output from the half adder component
signal half_adder_sum_output:std_logic;	--the sum bit output from the half adder component


Begin

	INST1 : half_adder port map (Input_A, input_B, half_adder_carry_output, half_adder_sum_output); --use of half adder
	
	--logic process based on half adder results
	full_adder_Carry_OUTPUT <= (half_adder_carry_output OR (carry_in AND half_adder_sum_output));	
	full_adder_sum_output <= (carry_in XOR half_adder_sum_output);


END gates;