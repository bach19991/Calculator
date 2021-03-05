library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;




entity subtracter is

Port ( A, B, C : in  STD_LOGIC;

DIFFERENCE, BORROW : out  STD_LOGIC);

end subtracter;



architecture dataflow of subtracter is


begin


---full subtractor


DIFFERENCE <= A xor B xor C;

BORROW <= ((not A) and (B or C)) or (B and C);



end dataflow;