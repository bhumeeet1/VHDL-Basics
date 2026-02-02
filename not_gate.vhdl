library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
port (a : in bit;
	  y : out bit);
end not_gate;

architecture logic of not_gate is
begin
y <= '0' when a = '1' else
	 '1' when a = '0' else
		 'Z';

end logic;
