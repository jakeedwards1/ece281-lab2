--+----------------------------------------------------------------------------
--| 
--| COPYRIGHT 2017 United States Air Force Academy All rights reserved.
--| 
--| United States Air Force Academy     __  _______ ___    _________ 
--| Dept of Electrical &               / / / / ___//   |  / ____/   |
--| Computer Engineering              / / / /\__ \/ /| | / /_  / /| |
--| 2354 Fairchild Drive Ste 2F6     / /_/ /___/ / ___ |/ __/ / ___ |
--| USAF Academy, CO 80840           \____//____/_/  |_/_/   /_/  |_|
--| 
--| ---------------------------------------------------------------------------
--|
--| FILENAME      : top_basys3_tb.vhd
--| AUTHOR(S)     : Capt Johnson
--| CREATED       : 01/30/2019 Last Modified 06/24/2020
--| DESCRIPTION   : This file implements a test bench for the full adder top level design.
--|
--| DOCUMENTATION : None
--|
--+----------------------------------------------------------------------------
--|
--| REQUIRED FILES :
--|
--|    Libraries : ieee
--|    Packages  : std_logic_1164, numeric_std, unisim
--|    Files     : top_basys3.vhd
--|
--+----------------------------------------------------------------------------
--|
--| NAMING CONVENSIONS :
--|
--|    xb_<port name>           = off-chip bidirectional port ( _pads file )
--|    xi_<port name>           = off-chip input port         ( _pads file )
--|    xo_<port name>           = off-chip output port        ( _pads file )
--|    b_<port name>            = on-chip bidirectional port
--|    i_<port name>            = on-chip input port
--|    o_<port name>            = on-chip output port
--|    c_<signal name>          = combinatorial signal
--|    f_<signal name>          = synchronous signal
--|    ff_<signal name>         = pipeline stage (ff_, fff_, etc.)
--|    <signal name>_n          = active low signal
--|    w_<signal name>          = top level wiring signal
--|    g_<generic name>         = generic
--|    k_<constant name>        = constant
--|    v_<variable name>        = variable
--|    sm_<state machine type>  = state machine type definition
--|    s_<signal name>          = state name
--|
--+----------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sevenSegDecoder is
    Port ( 
        i_D : in STD_LOGIC_VECTOR (3 downto 0);
        o_S : out STD_LOGIC_VECTOR (6 downto 0)
        );
end sevenSegDecoder;

architecture Behavioral of sevenSegDecoder is 
    signal w_Sa : std_logic := '1';
    signal w_Sb : std_logic := '1';
    signal w_Sc : std_logic := '1';
    signal w_Sd : std_logic := '1';
    signal w_Se : std_logic := '1';
    signal w_Sf : std_logic := '1';
    signal w_Sg : std_logic := '1';

begin
    
w_Sa <= '1' when ((i_D = x"1") or
                  (i_D = x"4") or
                  (i_D = x"B") or
                  (i_D = x"C") or
                  (i_D = x"D") )else '0';
w_Sb <= '1' when ((i_D = x"5") or
                  (i_D = x"6") or
                  (i_D = x"B") or
                  (i_D = x"C") or
                  (i_D = x"E") or
                  (i_D = x"F") ) else '0';
w_Sc <= '1' when ((i_D = x"2") or
                  (i_D = x"C") or
                  (i_D = x"E") or
                  (i_D = x"F") ) else '0';
w_Sd <= '1' when ((i_D = x"1") or
                  (i_D = x"4") or
                  (i_D = x"7") or
                  (i_D = x"9") or
                  (i_D = x"A") or
                  (i_D = x"F") ) else '0';
w_Se <= '1' when ((i_D = x"1") or
                  (i_D = x"3") or
                  (i_D = x"4") or
                  (i_D = x"5") or
                  (i_D = x"7") or
                  (i_D = x"9") ) else '0';
w_Sf <= '1' when ((i_D = x"1") or
                  (i_D = x"2") or
                  (i_D = x"3") or
                  (i_D = x"7") or
                  (i_D = x"C") or
                  (i_D = x"D") ) else '0';
w_Sg <= '1' when ((i_D = x"0") or
                  (i_D = x"1") or
                  (i_D = x"7") ) else '0';
                  
o_S(0) <= w_Sa;
o_S(1) <= w_Sb;
o_S(2) <= w_Sc;
o_S(3) <= w_Sd;
o_S(4) <= w_Se;
o_S(5) <= w_Sf;
o_S(6) <= w_Sg;

end Behavioral;
    
    
    
    




