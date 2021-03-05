library ieee;
use IEEE.std_logic_1164.all;

entity mux4to1 is
port ( a,b,c,d	:	in std_logic;
		s		:	in std_logic_vector(1 downto 0);
		y		:	out std_logic);
end mux4to1;

architecture behv of mux4to1 is
begin
y	<=	(not s(1) and not s(0) and a) or (not s(1) and s(0) and b) or 
		(s(1) and not s(0) and c) or (s(1) and s(0) and d);

end behv;
