library ieee;
use ieee.std_logic_1164.all;


entity two_to_one_mux is 
	port 
	(
		mux_in0, mux_in1 : in  std_logic_vector(3 downto 0);
		mux_select : in std_logic;									
		logic_out :out std_logic_vector (3 downto 0)			
	);
	
end two_to_one_mux;


architecture mux of two_to_one_mux is 

	begin 
	
	with mux_select select
	logic_out <= mux_in0 when '0',
					 mux_in1 when '1';
	
	end mux;