library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all ;
use ieee.numeric_std.all;


ENTITY CPU IS
PORT (
	Clock : IN STD_LOGIC ;	
	Instrucao : IN STD_LOGIC_VECTOR(0 to 9);
	Regi0, Regi1, Regi2, Regi3,Regi4	: OUT STD_LOGIC_VECTOR(0 TO 7) 
	
	
	);
END CPU;

-- vetor in e out R0 R1 R2 R3 T0 T1 T2
ARCHITECTURE CPUTest OF CPU IS

 -- componentes da UC
COMPONENT UnidadeDeControle
	Port ( 	
	Clock : IN STD_LOGIC;
	Instrucao : IN STD_LOGIC_VECTOR(0 to 9);
	ImedOut : OUT STD_LOGIC;
	ROut : OUT STD_LOGIC_VECTOR (0 to 7);
	RIn : OUT STD_LOGIC_VECTOR (0 to 7));
END COMPONENT ;

-- componentes do registrador
COMPONENT reg
    Port ( 	R: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				Rin, Clock: IN STD_LOGIC;
				Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT ;

-- componentes do buffer
COMPONENT tri_state_buffer
    Port ( Entradas  : in  STD_LOGIC_VECTOR (7 downto 0);
           ENABLE  : in  STD_LOGIC;
           Saidas : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT ;


-- componentes do ula
COMPONENT ULA
    Port (
   A:      IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	B:		  IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	OP:	  IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
	SAIDA:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END COMPONENT ;

		SIGNAL ImedOut : STD_LOGIC;
		SIGNAL Rin, Rout, Q : STD_LOGIC_VECTOR(0 TO 7) ;
		SIGNAL R2,R3,T0,T1,T2,Barramento,imedAux,R1, AuxT	: STD_LOGIC_VECTOR(0 TO 7) := "00000000";
		SIGNAL R0	: STD_LOGIC_VECTOR(0 TO 7) := "00000001";
BEGIN



imedAux(0) <= Instrucao(6);
imedAux(1) <= Instrucao(6);
imedAux(2) <= Instrucao(6);
imedAux(3) <= Instrucao(6);
imedAux(4) <= Instrucao(6);
imedAux(5) <= Instrucao(7);
imedAux(6) <= Instrucao(8);
imedAux(7) <= Instrucao(9);



-- unidade de controle
UnidadeDeControlePort : UnidadeDeControle PORT MAP (Clock, Instrucao, ImedOut, Rout, Rin);


-- registradores
reg0: reg PORT MAP (Barramento, Rin(0),Clock, R0);
reg1: reg PORT MAP (Barramento, Rin(1),Clock, R1);
reg2: reg PORT MAP (Barramento, Rin(2),Clock, R2);
reg3: reg PORT MAP (Barramento, Rin(3),Clock, R3);
temp0: reg PORT MAP (Barramento, Rin(4),Clock, T0);
temp2: reg PORT MAP (Barramento, Rin(6),Clock, T2);


-- buffer
bufImed: tri_state_buffer PORT MAP  (imedAux, ImedOut, Barramento);

bufReg0: tri_state_buffer PORT MAP  (R0, Rout(0), Barramento);
bufReg1:	tri_state_buffer PORT MAP  (R1, Rout(1), Barramento);
bufReg2:	tri_state_buffer PORT MAP  (R2, Rout(2), Barramento);
bufReg3:	tri_state_buffer PORT MAP  (R3, Rout(3), Barramento);
bufTemp0:	tri_state_buffer PORT MAP  (T0, Rout(4), Barramento);
bufTemp2:	tri_state_buffer PORT MAP  (T2, Rout(6), Barramento);

Regi0 <= R0;
Regi1 <= R1;
Regi2 <= R2;
Regi3 <= R3;

ULAControl: ULA PORT MAP (T0, Barramento, Instrucao(0 to 3), AuxT);
temp1: reg PORT MAP (AuxT, Rin(5),Clock, T1);
bufTemp1:	tri_state_buffer PORT MAP  (T1, Rout(5), Barramento);

END CPUTest;