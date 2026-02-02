library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
port(a,b : in bit;
	y : out bit);
end and_gate;

architecture logic of and_gate is
begin
y <= b when a = '1'
	else '0';
end logic;