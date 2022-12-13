LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY adder IS
	PORT (  
		dataa, datab, operacao : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		
		sum : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END ENTITY adder;

ARCHITECTURE logic OF adder IS
BEGIN
	processoESCOLHA : process (dataa, datab, operacao)
	begin
		if (operacao = x"0001") then
			sum <= dataa + datab;
		else
			sum <= dataa - datab;
		end if;
	end process processoESCOLHA;
END ARCHITECTURE logic;

