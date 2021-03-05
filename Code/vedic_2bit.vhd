library ieee;
use ieee.std_logic_1164.all;

entity vedic_2bit is
port(	A,B		:	in	std_logic_vector(1 downto 0);
		C		:	out std_logic_vector(3 downto 0));
end vedic_2bit;

architecture behv of vedic_2bit is

signal s1,s2,s3,s4		:		std_logic;

begin

C(0)	<=	A(0) and B(0);
s1		<=	A(1) and B(0);
s2		<=	A(0) and B(1);
C(1)	<=	s1	xor s2;
s3		<=	s1	and s2;
s4		<=	A(1) and B(1);
C(2)	<=	s3 xor s4;
C(3)	<=	s3 and s4;

end behv;
