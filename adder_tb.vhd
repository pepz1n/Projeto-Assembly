LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_tb IS
END ENTITY adder_tb;

ARCHITECTURE stimulus OF adder_tb IS

	COMPONENT adder
		PORT(
			dataa, datab, operacao: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			sum: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL dataa, datab, operacao, sum : STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN  -- beginning of architecture body

	adder1 : adder PORT MAP 
		(dataa => dataa, datab => datab, operacao => operacao, sum => sum);

	dataa <= x"0008", x"0000" AFTER 20 NS, x"000A" AFTER 30 NS;
	datab <= x"0005", x"0001" AFTER 20 NS, x"0005" AFTER 30 NS;
	operacao <= x"0001", x"0000" AFTER 20 NS, x"0001" AFTER 30 NS;
	
END ARCHITECTURE stimulus;