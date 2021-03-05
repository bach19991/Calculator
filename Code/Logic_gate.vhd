----------------------------------------------------
--- Tao cong NOT --- NOTout = not A           ------
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity NOT_GATE IS
  port(
        A:      IN  std_logic;
        NOTout:  OUT std_logic);
end NOT_GATE;
----
architecture behv of NOT_GATE IS
begin
  process(A)
begin
  NOTout <= not A;
end process;
end behv;
----------------------------------------------------
--- Tao cong XOR --- XORout = A xor B          ------
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity XOR_GATE IS
  port(
        A:      IN  std_logic;
        B:      IN  std_logic;
        XORout: OUT std_logic);
end XOR_GATE;
----
architecture behv of XOR_GATE IS
begin
  process(A, B)
begin
  XORout <= ((not A) and B) or (A and (not B));
end process;
end behv;
----------------------------------------------------
--- Tao cong OR --- ORout = A or B            ------
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity OR_GATE IS
  port(
        A:      IN  std_logic;
        B:      IN  std_logic;
        ORout:  OUT std_logic);
end OR_GATE;
----
architecture behv of OR_GATE IS
begin
  process(A, B)
begin
  ORout <= A or B;
end process;
end behv;
----------------------------------------------------
--- Tao cong AND --- ANDout = A and B         ------
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity AND_GATE IS
  port(
        A:       IN  std_logic;
        B:       IN  std_logic;
        ANDout:  OUT std_logic);
end AND_GATE;
----
architecture behv of AND_GATE IS
begin
  process(A, B)
begin
  ANDout <= A and B;
end process;
end behv;
----------------------------------------------------
--- Tao cong AND 3 input --- ANDout = A and B and C 
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.all;
entity AND_3in_GATE IS
  port(
        A:       IN  std_logic;
        B:       IN  Std_logic;
        C:       IN  std_logic;
        ANDout:  OUT std_logic);
end AND_3in_GATE;
----
architecture struct of AND_3in_GATE IS
  component AND_GATE IS
    port(
          A:      IN  std_logic;
          B:      IN  std_logic;
          ANDout: OUT std_logic
        );
  end component;
--
  signal wire1: std_logic;
--
begin
    Gate1:  AND_GATE port map (A => A, B => B, ANDout => wire1);
    Gate2:  AND_GATE port map (A => C, B => wire1, ANDout => ANDout);
end struct;
----------------------------------------------------
--- Tao cong OR 4 input --- ORout = A or B or C or D
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.all;
entity OR_4in_GATE IS
  port(
        A:       IN  std_logic;
        B:       IN  Std_logic;
        C:       IN  std_logic;
        D:       IN  std_logic;
        ORout:   OUT std_logic);
end OR_4in_GATE;
----
architecture struct of OR_4in_GATE IS
  component OR_GATE IS
    port(
          A:      IN  std_logic;
          B:      IN  std_logic;
          ORout:  OUT std_logic
        );
  end component;
--
  signal wire1, wire2: std_logic;
--
begin
    Gate3:  OR_GATE port map (A => A, B => B, ORout => wire1);
    Gate4:  OR_GATE port map (A => C, B => D, ORout => wire2);
    Gate5:  OR_GATE port map (A => wire1, B => wire2, ORout => ORout);
end struct;
