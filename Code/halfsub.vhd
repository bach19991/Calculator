-------------------
--Half subtracter--
-------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity halfsub is

Port ( A, B : in  STD_LOGIC;

DIFFERENCE, BORROW : out  STD_LOGIC);

end halfsub;



architecture dataflow of halfsub is


begin


---half subtractor


DIFFERENCE <= A xor B;

BORROW <= (not A) and B;

end dataflow;