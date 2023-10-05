with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Numerics; use Ada.Numerics;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package body Laboratorio03 is
   -------------------------------------------------------------------
   --AUTHOR: BERGARETXE LOPEZ, LUKA
   -------------------------------------------------------------------

   -------
   -- f --
   -------

   function f (X,Pos: in Natural) return Natural is
      aux : Natural;
   begin
      if (pos mod 2 = 0) then
         aux := x;
      elsif (x < 5) then
         aux := 2*x;
      else
         aux := 2*x - 9;
      end if;
      return aux;
   end f;


   -------------
   -- a_polar --
   -------------

   procedure a_polar (a,b: in float; modulo, argumento: out Float) is
   begin
      modulo := abs(sqrt(a**2 + b**2));
      if (a > 0.0 and b > 0.0) then
         argumento := arctan(b/a);
      elsif (a > 0.0 and b < 0.0) then
         argumento := 2.0 * Pi + arctan(b/a);
      elsif (a < 0.0) then
         argumento := Pi + arctan(b/a);
      elsif (a = 0.0 and b > 0.0) then
         argumento := Pi / 2.0;
      elsif (a = 0.0 and b < 0.0) then
         argumento := 3.0*Pi / 2.0;
      else
         argumento := 0.0;
      end if;
   end a_polar;

   --------------------
   -- resultado_ONCE --
   --------------------

   procedure resultado_ONCE
     (premiado, a_comprobar: in Natural;
      premio: out Natural)
   is
   begin
      if (premiado = a_comprobar) then
         premio := 100000;
      elsif (premiado-premiado/1000*1000 = a_comprobar-a_comprobar/1000*1000) then
         premio := 50000;
      elsif (premiado-premiado/100*100 = a_comprobar-a_comprobar/100*100) then
         premio := 3;
      else
         premio := 0;
      end if;
   end resultado_ONCE;

   -----------------
   -- Multiplos_3 --
   -----------------

   procedure Multiplos_3 (N1,N2: in Natural; cuenta, suma: out Natural) is
      n : Natural := N1;
   begin
      while (n mod 3 /= 0) loop
         n := n + 1;
      end loop;
      cuenta := 0;
      suma := 0;
      while (n <= N2) loop
         cuenta := cuenta + 1;
         suma := suma + n;
         n := n + 3;
      end loop;
   end Multiplos_3;


   ---------------
   -- Factorial --
   ---------------

   function Factorial (N: in Positive) return Positive is
      aux : positive;
   begin
      aux := 1;
      for i in 1..N loop
         aux := aux * i;
      end loop;
      return aux;
   end Factorial;


   ---------------------
   -- decimal_binario --
   ---------------------

   procedure decimal_binario (Decimal: in Natural; Binario: out Natural) is
      Cociente, Resto, k : Natural;
   begin
      Cociente := Decimal;
      Resto := 0;
      Binario := 0;
      k := 0;
      while (Cociente > 0) loop
         Resto := Cociente rem 2;
         Binario := Binario + Resto * 10**k;
         Cociente := Cociente / 2;
         k := k + 1;
      end loop;
   end decimal_binario;


   ----------------------
   -- segundo_anterior --
   ----------------------

   procedure segundo_anterior (h, m, s: in out Natural) is
   begin
      s := (s - 1) mod 60;
      if (s = 59) then
         m := (m - 1) mod 60;
         if (m = 59) then
            h := (h - 1) mod 24;
         end if;
      end if;
   end segundo_anterior;


   ----------------
   -- solucionar --
   ----------------

   procedure solucionar
     (a,b,c: in float;
      num_sols: out Natural;
      sol1, sol2: out Float)
   is
   begin
      if a /= 0.0 then
         if (b**2 < 4.0*a*c) then
            num_sols := 0;
            sol1 := 0.0;
            sol2 := 0.0;
         elsif (b**2 = 4.0*a*c) then
            num_sols := 1;
            sol1 := -b/(2.0*a);
            sol2 := -b/(2.0*a);
         else
            num_sols := 2;
            sol1 := (-b+sqrt(b**2-4.0*a*c))/(2.0*a);
            sol2 := (-b-sqrt(b**2-4.0*a*c))/(2.0*a);
         end if;
      elsif b /= 0.0 then
         num_sols := 1;
         sol1 := -c / b;
         sol2 := -c / b;
      elsif c /= 0.0 then
         num_sols := 0;
         sol1 := 0.0;
         sol2 := 0.0;
      else
         num_sols := 0;
         sol1 := 0.0;
         sol2 := 0.0;
      end if;
   end solucionar;

   -----------------
   -- final_tarea --
   -----------------

   procedure final_tarea
     (h,m,s: in Natural;
      duracion: in Positive;
      siguiente_jornada: out Boolean;
      hf,mf,sf: out Natural)
   is
   begin
      sf := (s + duracion mod 60) mod 60;
      mf := (Boolean'Pos(s > sf) + m + duracion / 60) mod 60;
      hf := (Boolean'Pos(m > mf) + h + duracion / 3600);
      if ((hf = 16 and (mf > 0 or sf > 0)) or hf > 16) then
         siguiente_jornada := TRUE;
         hf := hf mod 16 + 8;
      else
         siguiente_jornada := FALSE;
      end if;
   end final_tarea;


   -----------------------
   -- Secuencia_Collatz --
   -----------------------

   procedure Secuencia_Collatz (num: in Positive; cuenta, suma: out Natural) is
      aux : Positive := num;
   begin
      cuenta := 1;
      suma := num;
      while (aux > 1) loop
         Put (aux'Img);
         if (aux rem 2 = 0) then
            aux := aux / 2;
         else
            aux := aux * 3 +1;
         end if;
         cuenta := cuenta + 1;
         suma := suma + aux;
      end loop;
      Put (Aux'Img);
   end Secuencia_Collatz;

   ---------------
   -- Fibonacci --
   ---------------

   function Fibonacci (N:in Natural) return Natural is
      a1, a2, a3, aux : Natural;
   begin
      if (N = 0) then
         aux := 0;
      elsif (N = 1) then
         aux := 1;
      else
         a1 := 0;
         a2 := 1;
         for i in 2..N loop
            a3 := a1 + a2;
            a1 := a2;
            a2 := a3;
         end loop;
         aux := a3;
      end if;
      return aux;
   end Fibonacci;

   -----------------------
   -- Divisores_propios --
   -----------------------

   function Divisores_propios (N: in Natural) return Natural is
      divs : Natural := 0;
   begin
      for i in 1..(N-1) loop
         divs := divs + Boolean'Pos(N rem i = 0);
      end loop;
      return divs;
   end Divisores_propios;

   ------------------
   -- Dia_anterior --
   ------------------

   procedure Dia_anterior (d,m,a:in out Natural) is
   begin
      if (d = 1) then
         if (m = 1) then
            d := 31;
            a := a - 1;
         elsif (m = 3) then
            if (a rem 4 = 0 and not (a rem 100 = 0 xor a rem 400 = 0)) then
               d := 29;
            else
               d := 28;
            end if;
         elsif (m rem 2 = 1) then
            if (m < 9) then
               d := 30;
            else
               d := 31;
            end if;
         else
            if (m < 9) then
               d := 31;
            else
               d := 30;
            end if;
         end if;
         m := (m - 2) mod 12 + 1;
      else
         d := d - 1;
      end if;
   end Dia_anterior;

   --------------
   -- Estacion --
   --------------

   function Estacion (d,m: in natural) return STRING is
      aux : STRING(1..9);
   begin
      if (m < 3 or (m = 3 and d < 21) or (m = 12 and d > 20)) then
         aux := "INVIERNO ";
      elsif (m < 6 or (m = 6 and d < 21) or (m = 3 and d > 20)) then
         aux := "PRIMAVERA";
      elsif (m < 9 or (m = 9 and d < 21) or (m = 6 and d > 20)) then
         aux := "VERANO   ";
      elsif (m < 12 or (m = 12 and d < 21) or (m = 9 and d > 20)) then
         aux := "OTONNO   ";
      end if;
      return aux;
   end Estacion;

   --------------
   -- Estacion --
   --------------

   function Estacion (d,m: in Natural) return T_Estacion is
      aux : T_Estacion;
   begin
      if (m < 3 or (m = 3 and d < 21) or (m = 12 and d > 20)) then
         aux := INVIERNO;
      elsif (m < 6 or (m = 6 and d < 21) or (m = 3 and d > 20)) then
         aux := PRIMAVERA;
      elsif (m < 9 or (m = 9 and d < 21) or (m = 6 and d > 20)) then
         aux := VERANO;
      elsif (m < 12 or (m = 12 and d < 21) or (m = 9 and d > 20)) then
         aux := OTONNO;
      end if;
      return aux;
   end Estacion;

   -----------------
   -- Es_Perfecto --
   -----------------

   function Es_Perfecto(N: in Positive) return Boolean is
      aux : Natural := 0;
   begin
      for i in 1..N - 1 loop
         aux := aux + i * Boolean'Pos(N rem i = 0);
      end loop;
      return N = aux;
   end Es_Perfecto;
   -------------------------
   -- Contenido del texto --
   -------------------------

   procedure Contenido_Del_Texto (Espacios, Letras, Digitos: out Natural) is
      c : Character;
   begin
      Espacios := 0;
      Letras := 0;
      Digitos := 0;
      while (c /= '.') loop
         Get(c);
         if (c = ' ') then
            Espacios := espacios + 1;
         elsif c in 'A'..'Z'|'a'..'z' or Character'Pos(c) in 128..154|160..165 then
            Letras := Letras + 1;
         elsif (c in '0'..'9') then
            Digitos := Digitos + 1;
         end if;
      end loop;
   end Contenido_Del_texto;

   --------------------
   -- Newton_Raphson --
   --------------------
   function F0(X: in Float) return Float is
   begin
      return cos(X) - x**3;
   end F0;

   function F1(X: in Float) return Float is
   begin
      return -sin(X) - 3.0*X**2;
   end F1;


   procedure Newton_Raphson (Inicial, Error: in Float;
         V_Actual, Err_Actual: out Float) is
      aux : Float := 0.0;
   begin
      Err_Actual := Error + 1.0;
      V_Actual := Inicial;
      while (Err_Actual > Error) loop
         aux := V_Actual;
         V_Actual := V_Actual - F0(V_Actual)/F1(V_Actual);
         Err_Actual := abs(V_Actual - aux) / abs(V_Actual);
      end loop;
   end Newton_Raphson;
end Laboratorio03;
