library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity U_D_Bin_Counter8bit is port
	(
			CLK			: in std_logic;
			RESET 		: in std_logic;
			CLK_EN		: in std_logic;
			UP1_DOWN0	: in std_logic;
			COUNTER_BITS: out std_logic_vector(7 downto 0)
	
	);
end ENtity;



ARCHITECTURE one of U_D_BIN_Counter8bit is
	
	signal ud_bin_counter 		: unsigned (7 downto 0);
	
Begin

process (clk) is 
begin
	if (rising_edge(Clk)) then
	
		if (reset = '1') then
			ud_bin_counter <="00000000";
			
		elsif (CLK_EN = '1') then 
		
			if (up1_down0 = '1') then 
				ud_bin_counter <= (ud_bin_counter + 1);
				
			else
			
				ud_bin_counter <= (ud_bin_counter - 1);
			end if;
			
		end if;
		
	end if;
	
	counter_bits <= std_logic_vector (ud_bin_counter);
	
end process;

end;