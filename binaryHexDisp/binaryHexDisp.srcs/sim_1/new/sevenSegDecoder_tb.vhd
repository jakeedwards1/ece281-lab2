----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 12:03:47 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sevenSegDecoder_tb is
end sevenSegDecoder_tb;


architecture test_bench of sevenSegDecoder_tb is

component sevenSegDecoder is
    Port ( 
        sw : in STD_LOGIC_VECTOR (3 downto 0);
        seg : out STD_LOGIC_VECTOR (6 downto 0)
        );
end component;

signal w_sw : STD_LOGIC_VECTOR(3 to 0);
signal w_seg : STD_LOGIC_VECTOR(6 to 0);

begin

    sevenSegDecoder_inst : sevenSegDecoder port map(
        sw => w_sw,
        seg => w_seg
    );    

    test_process : process
    begin
        
        w_sw <= x"0"; wait for 10 ns;
            assert w_seg = x"40" report "bad x0" severity failure;
        w_sw <= x"1"; wait for 10 ns;
            assert w_seg = x"79" report "bad x0" severity failure;
        w_sw <= x"2"; wait for 10 ns;
            assert w_seg = x"24" report "bad x0" severity failure;
        w_sw <= x"3"; wait for 10 ns;
            assert w_seg = x"30" report "bad x0" severity failure;
        w_sw <= x"4"; wait for 10 ns;
            assert w_seg = x"19" report "bad x0" severity failure;
        w_sw <= x"5"; wait for 10 ns;
            assert w_seg = x"12" report "bad x0" severity failure;
        w_sw <= x"6"; wait for 10 ns;
            assert w_seg = x"02" report "bad x0" severity failure;
        w_sw <= x"7"; wait for 10 ns;
            assert w_seg = x"78" report "bad x0" severity failure;
        w_sw <= x"8"; wait for 10 ns;
            assert w_seg = x"00" report "bad x0" severity failure;
        w_sw <= x"9"; wait for 10 ns;
            assert w_seg = x"18" report "bad x0" severity failure;
        w_sw <= x"A"; wait for 10 ns;
            assert w_seg = x"08" report "bad x0" severity failure;
        w_sw <= x"B"; wait for 10 ns;
            assert w_seg = x"03" report "bad x0" severity failure;
        w_sw <= x"C"; wait for 10 ns;
            assert w_seg = x"27" report "bad x0" severity failure;
        w_sw <= x"D"; wait for 10 ns;
            assert w_seg = x"21" report "bad x0" severity failure;
        w_sw <= x"E"; wait for 10 ns;
            assert w_seg = x"06" report "bad x0" severity failure;
        w_sw <= x"F"; wait for 10 ns;
            assert w_seg = x"0D" report "bad x0" severity failure;
        
    
    
        wait;
    end process;

end test_bench;
