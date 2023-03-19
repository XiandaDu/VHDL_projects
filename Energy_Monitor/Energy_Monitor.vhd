library ieee;
use ieee.std_logic_1164.all;

Entity Energy_Monitor IS
	PORT
	(
		compare	: IN std_logic_vector (2 downto 0); --gt, eq, less
		pb_in		: IN std_logic_vector (3 downto 0); --vacation, MC test, windows open, door open
		light7	: out std_logic;
		lights 	: out std_logic_vector(5 downto 0);
		run 		: out std_logic;
		increase : out std_logic;
		decrease : out std_logic
	);
END entity;


Architecture gates OF Energy_Monitor IS
begin
process (compare, pb_in) is
Begin
	
		if ((pb_in(0)='1') or (pb_in(1) = '1') or (pb_in(2) = '1')) then
			run <='0';
		else
			run<='1';
		end if;
	
	if ((compare(2) = '1')) then
		decrease <= '0';
		increase <='1';
		
		lights(2) <= '0';
		lights(1) <= '0';
		lights(0) <= '1';
		
	elsif ((compare(0) = '1')) then
		decrease <='1';
		increase <='0';
		
		lights(2) <= '1';
		lights(1) <= '0';
		lights(0) <= '0';
		
	else
		decrease <='0';
		increase <='0';
		run<='0';
		lights(2) <= '0';
		lights(1) <= '1';
		lights(0) <= '0';
		
	end if;
	
	if ((compare(1)='0') and (pb_in(2)='0') and (pb_in(1) = '0') and (pb_in(0) ='0')) then
		lights(3) <='1';
	else
		lights(3) <='0';
	end if;
	
	if (pb_in(0)='1') then
		lights(5)<='1';
	else
		lights(5)<='0';
	end if;
	
	if (pb_in(1)='1') then
		lights(4)<='1';
	else
		lights(4)<='0';
	end if;
	
	if (pb_in(3)='1') then
		light7<='1';
	else
		light7<='0';
	end if;
end process;
END gates;