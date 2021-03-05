---------------------
--Compare component--
---------------------

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

entity compare_shifting is
port (		clk		:	in	std_logic;
		input_e1	:	in	std_logic_vector(7 downto 0);
		input_e2	:	in	std_logic_vector(7 downto 0);
		input_f1	:	in	std_logic_vector(22 downto 0);
		input_f2	:	in	std_logic_vector(22 downto 0);
		output_e1	:	out	std_logic_vector(7 downto 0);
		output_e2	:	out 	std_logic_vector(7 downto 0);
		output_f1	:	out 	std_logic_vector(22 downto 0);
		output_f2	:	out 	std_logic_vector(22 downto 0));
end compare_shifting;

architecture behavioral of compare_shifting is
component subtracter 
port( A,B,C		:	in  STD_LOGIC;
DIFFERENCE, BORROW : out  STD_LOGIC);	
end component;

component exponent_dif 
port(  input1	:	in	std_logic_vector(7 downto 0);
	   input2	:	in	std_logic_vector(7 downto 0);
	   output	:	out integer);
end component;

type state_type is (different,similar,compare);

signal current_s, next_s : state_type;
signal output : std_logic_vector(1 downto 0);
signal buffer_bit : std_logic;
signal buffer_e1,buffer_e2 : std_logic_vector(7 downto 0);
signal buffer_f1,buffer_f2 : std_logic_vector(22 downto 0);
signal count : integer;
signal shift : std_logic_vector(22 downto 0) := x"01";
begin

process (clk)

begin
	if (rising_edge(clk)) then
		current_s <= next_s;
	end if;
end process;

process(current_s,input_e1,input_e2,input_f1,input_f2)

begin

buffer_e1 <= input_e1;
buffer_e2 <= input_e2;
buffer_f1 <= input_f1;
buffer_f2 <= input_f2;
	case current_s is
		when compare =>
			if (buffer_e1 > buffer_e2) then
			output <= "00";
			dif0:	exponent_dif port map (buffer_e1, buffer_e2, count);
			next_s <= different;
			elsif (buffer_e1 < buffer_e2) then
			output <= "01";
			dif1:	exponent_dif port map (buffer_e2, buffer_e1, count);
			next_s <= different;
			else output <= "11"
			next_s <= similar;
			end if;
		when different =>
			case output is
				when "00" =>
				buffer_f2((22 - count) downto 0) <= input_f2(22 downto count);
				buffer_f2(22 downto (22 - count - 1) <= shift((count -1) downto 0);
				buffer_e2 <= buffer_e2 + std_logic_vector(to_unsigned(count,8);
				next_s <= compare;
				when "01" =>
				buffer_f1((22 - count) downto 0) <= input_f1(22 downto count);
				buffer_f1(22 downto (22 - count - 1) <= shift((count -1) downto 0);
				buffer_e1 <= buffer_e1 + std_logic_vector(to_unsigned(count,8);
				next_s <= compare;
				when "11" => next_s <= similar;
			end case;
		when similar =>
			output_e1 <= buffer_e1;
			output_e2 <= buffer_e2;
			output_f1 <= buffer_f1;
			output_f2 <= buffer_f2;		
		end case;		
end process;

end behavioral;
