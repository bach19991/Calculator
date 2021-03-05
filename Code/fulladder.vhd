----------------------------------------------------
--- Linh kien: Full_Adder_Comp                ------
--- Ngơ vào : X, Y, Cin                       ------
--- Ngơ ra :  S, Cout                         ------
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.all;
entity fulladder IS
  port(
        X:    IN  std_logic;
        Y:    IN  Std_logic;
        Cin:  IN  std_logic;
        S:    OUT std_logic;
        Cout: OUT std_logic
      );
end fulladder;
----
architecture struct of fulladder IS
  component XOR_GATE IS
    port(
          A:      IN  std_logic;
          B:      IN  std_logic;
          XORout: OUT std_logic
        );
  end component;
--
  component OR_GATE IS
    port(
          A:      IN  std_logic;
          B:      IN  std_logic;
          ORout: OUT std_logic
        );
  end component;
--
  component AND_GATE IS
    port(
          A:      IN  std_logic;
          B:      IN  std_logic;
          ANDout: OUT std_logic
        );
  end component;
--
  signal wire1, wire2, wire3: std_logic;
--
begin
    Gate1:  XOR_GATE port map (A => X, B => Y, XORout => wire1);
    Gate2:  XOR_GATE port map (A => Cin, B => wire1, XORout => S);
    Gate3:  AND_GATE port map (A => Cin, B => wire1, ANDout => wire2);
    Gate4:  AND_GATE port map (A => X, B => Y, ANDout => wire3);
    Gate5:  OR_GATE port map (A=> wire2, B => wire3, ORout => Cout);
end struct;