library ieee;
use ieee.std_logic_1164.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

entity logic_processor is 
	port 
	(
		logic_in0, logic_in1 : in  std_logic_vector(3 downto 0); --Hex A and Hex B
		mux_select 				: in std_logic_vector (1 downto 0);	--pb 0 and pb 1 input
		logic_out 				: out std_logic_vector (3 downto 0)	--control of the on&off of leds
	);
	
end logic_processor;

architecture mux of logic_processor is 

	begin 
	
	with mux_select (1 downto 0) select
	logic_out <= (logic_in0 AND logic_in1) when "00",  --neither of pb 1 nor pb 0 is pressed
					 (logic_in0 OR logic_in1) when "01",	--pb 0 is pressed
					 (logic_in0 XOR logic_in1) when "10",  --pb 1 is pressed
					 (logic_in0 XNOR logic_in1) when "11"; --both pb 1 and pb 0 is pressed
	
	end mux;