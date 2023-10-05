--with lab03_sol; use lab03_sol;
with laboratorio03; use laboratorio03;
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Lab03_Pruebas is
--   Num: Integer;
--   modulo, argumento: Float;
--   La_suma, la_cuenta: Integer;
   H,M,S,h1,m1,s1,d:Integer;
--   s1,S2:Float;
   cambio_dia: Boolean;
--   La_Estacion : T_Estacion;
--   Perfecto : Boolean;
--   resultado, error : Float;

begin

--   -------
--   -- F --
--   -------
--   Num := F(x=>0,Pos=>0);
--   Put("f(0,0)= "); Put(Num,0); New_Line;
--   Num := F(x=>2,Pos=>4);
--   Put("f(2,4)= "); Put(Num,0); New_Line;
--   --Poner más casos para probar


--   -------------
--   -- A_Polar --
--   -------------
--   A_Polar(3.0,4.0, modulo,argumento);

--   Put("z=(3,4) en polar: |z|="); Put(modulo,2,2,0); Put(" arg="); Put(argumento,2,2,0);New_Line;
--   --Poner más casos para probar: uno por cuadrante...


--   --------------------
--   -- Resultado_ONCE --
--   --------------------
--   Resultado_ONCE(premiado=>1234,a_comprobar=>1234,premio=>Num);
--   Put("El premio para el boleto 1234 cuando el premiado es 1234 son 100K Euros y sale ");Put(Num,7);New_Line;
--   Resultado_ONCE(premiado=>1234,a_comprobar=>1235,premio=>Num);
--   Put("El premio para el boleto 1235 cuando el premiado es 1234 son   0  Euros y sale ");Put(Num,7);New_Line;
--   Resultado_ONCE(premiado=>1234,a_comprobar=>1334,premio=>Num);
--   Put("El premio para el boleto 1235 cuando el premiado es 1234 son   3  Euros y sale ");Put(Num,7);New_Line;
--   --Poner más casos para probar


--   -----------------
--   -- Multiplos_3 --
--   -----------------
--   Multiplos_3(1,10,La_Cuenta, la_Suma);
--   Put("La suma de los "); put(la_cuenta,0); Put(" multiplos de 3 entre 1 y 10 es "); Put(La_Suma,0); New_Line;
--   --Poner un caso más de prueba
--   Multiplos_3(1,2,La_Cuenta, la_Suma);
--   Put("La suma de los "); put(la_cuenta,0); Put(" multiplos de 3 entre 1 y 2 es "); Put(La_Suma,0); New_Line;
--   Multiplos_3(1,3,La_Cuenta, la_Suma);
--   Put("La suma de los "); put(la_cuenta,0); Put(" multiplos de 3 entre 1 y 3 es "); Put(La_Suma,0); New_Line;
--   Multiplos_3(3,9,La_Cuenta, la_Suma);
--   Put("La suma de los "); put(la_cuenta,0); Put(" multiplos de 3 entre 3 y 9 es "); Put(La_Suma,0); New_Line;


--   ---------------
--   -- Factorial --
--   ---------------
--   Num := Factorial(N=>1);
--   Put("1! =  1 y sale "); Put(Num,0); New_Line;
--   Num := Factorial(4);
--   Put("4! = 24 y sale "); Put(Num,0); New_Line;
--    --Poner más casos de prueba


--   ---------------------
--   -- Decimal_Binario --
--   ---------------------

--   Decimal_Binario (127,binario=>num);
--   Put(" 127 en binario es       111 1111, y sale ");Put(Num,0); Put(".");New_Line;
--   Decimal_Binario (128,binario=>num);
--   Put("128 en binario es 1000 0000, y sale ");Put(Num,0); Put(".");New_Line;
--   --Poner algun caso más de prueba

--   --A partir de aquí las pruebas de los ejercicios no obligatorios.


--   ----------------------
--   -- Segundo_Anterior --
--   ----------------------
--   H:=10; M:=12; S:=13;
--   Segundo_Anterior (H,M,S);
--   Put(" El segundo anterior a 10:12:13 es 10:12:12, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
--   H:=6; M:=30; S:=0;
--   Segundo_Anterior (H,M,S);
--   Put(" El segundo anterior a 06:30:00 es 06:29:59, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
--   H:=6; M:=0; S:=0;
--   Segundo_Anterior (H,M,S);
--   Put(" El segundo anterior a 06:00:00 es 05:59:59, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
--   H:=0; M:=0; S:=0;
--   Segundo_Anterior (H,M,S);
--   Put(" El segundo anterior a 00:00:00 es 23:59:59, y sale ");Put(H,0); Put(":");Put(M,0); Put(":");Put(S,0); Put(".");New_Line;
--   --Poner algun caso más de prueba


--   ----------------
--   -- solucionar --
--   ----------------
--   Solucionar (2.0,5.0,2.0,num,s1,s2);
--   Put("f(x)=2x2+5x+2 tiene 2 soluciones: -2 y 0.5 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   --Poner algun caso más de prueba
--   Solucionar (9.0,5.0,2.0,num,s1,s2);
--   Put("f(x)=9x2+5x+2 tiene 0 soluciones: 0 y 0 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (2.0,7.0,2.0,num,s1,s2);
--   Put("f(x)=2x2+7x+2 tiene 2 soluciones: -3.186 y -0.314 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (1.0,2.0,1.0,num,s1,s2);
--   Put("f(x)=x2+2x+1 tiene 1 soluciones: -1 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (-2.0,-5.0,1.0,num,s1,s2);
--   Put("f(x)=-2x2-5x+1 tiene 2 soluciones: -2.686 y 0.186 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;

--   New_Line;
--   Solucionar (0.0,0.0,0.0,num,s1,s2);
--   Put("f(x)=0x2+0x+0 tiene infinitas soluciones y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (0.0,3.0,-9.0,num,s1,s2);
--   Put("f(x)=0x2+3x-9 tiene 1 soluciones: 3 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (0.0,0.0,1.25,num,s1,s2);
--   Put("f(x)=0x2+0x+1.25 tiene 0 soluciones: 0 y 0 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;
--   Solucionar (0.0,3.14159,0.0,num,s1,s2);
--   Put("f(x)=0x2+Pi*x+0 tiene 1 soluciones: 0 y salen ");Put(num,0); Put(" soluciones: ");Put(S1,2,2,0); Put(" y ");Put(S2,2,2,0); Put(".");New_Line;


   -----------------
   -- final_tarea --
   -----------------
--   final_tarea(10,00,00,59,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 10:00:00 y dura 59 segs acaba a las 10:00:59 del mismo dia y sale ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(08,00,00,13000,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 08:00:00 y dura 13000 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(15,59,59,2,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 15:59:59 y dura 2 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(15,59,59,3601,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 15:59:59 y dura 3601 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(08,59,59,2,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 08:59:59 y dura 2 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(10,00,00,599,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 10:00:00 y dura 599 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(15,00,00,5936,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 15:00:00 y dura 5936 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(12,00,00,7200,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 12:00:00 y dura 7200 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(13,30,34,3423,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 13:30:34 y dura 3423 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(14,00,00,7200,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 14:00:00 y dura 7200 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
--   final_tarea(12,00,00,14400,cambio_dia,H,M,S);
--   Put("La tarea que comienza a las 12:00:00 y dura 14400 segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);Put(' '&Cambio_dia'img);
--   New_Line;
while h1 /= 0 loop
   Get(h1);get(m1);get(s1);get(d);
   final_tarea(h1,m1,s1,d,cambio_dia,H,M,S);
   Put("La tarea que comienza a las " & h1'Img & ":" & m1'Img & ":" & s1'Img & " y dura" & d'Img & " segs acaba a las ");Put(H,0);Put(":");Put(M,0);Put(":");Put(S,0);New_Line;Put(' '&Cambio_dia'img); New_Line; New_Line;
   end loop;

--   -----------------------
--   -- Secuencia_Collatz --
--   -----------------------
--   Secuencia_Collatz(1,la_cuenta, la_suma);
--   New_Line;
--   New_Line;
--   Put(la_cuenta);
--   Put(la_suma);
--   New_Line;
--   New_Line;
--   New_Line;

--   Secuencia_Collatz(18,la_cuenta, la_suma);
--   New_Line;
--   New_Line;
--   Put(la_cuenta);
--   Put(la_suma);
--   New_Line;
--   New_Line;
--   New_Line;


--   Secuencia_Collatz(9,la_cuenta, la_suma);
--   New_Line;
--   New_Line;
--   Put(la_cuenta);
--   Put(la_suma);
--   New_Line;
--   New_Line;
--   New_Line;

--   Secuencia_Collatz(97,la_cuenta, la_suma);
--   New_Line;
--   New_Line;
--   Put(la_cuenta);
--   Put(la_suma);
--   New_Line;
--   New_Line;
--   New_Line;

--   Secuencia_Collatz(871,la_cuenta, la_suma);
--   New_Line;
--   New_Line;
--   Put(la_cuenta);
--   Put(la_suma);
--   New_Line;
--   New_Line;
--   New_Line;


--   ---------------
--   -- Fibonacci --
--   ---------------
--   Put("Fib(0)= 0 y sale "); Put(Fibonacci(0));New_Line;
--   Put("Fib(1)= 1 y sale "); Put(Fibonacci(1));New_Line;
--   Put("Fib(2)= 1 y sale "); Put(Fibonacci(2));New_Line;
--   Put("Fib(3)= 2 y sale "); Put(Fibonacci(3));New_Line;


--   -----------------------
--   -- Divisores_propios --
--   -----------------------
--   Put(" 2 tiene 1 divisor   propio  y sale "); Put(Divisores_propios( 2));New_Line;
--   Put("17 tiene 1 divisor   propio  y sale "); Put(Divisores_propios(17));New_Line;
--   Put("25 tiene 2 divisores propios y sale "); Put(Divisores_propios(25));New_Line;


--   ----------------
--   -- Estacion I --
--   ----------------
--   Put("El 10 de Marzo es INVIERNO  y sale "); Put(Estacion(d=>10,m=>3)); New_Line;
--   Put("El 10 de Junio es PRIMAVERA y sale "); Put(Estacion(d=>10,m=>6)); New_Line;
--   Put("El 10 de Septiembre es VERANO y sale "); Put(Estacion(d=>10,m=>9)); New_Line;
--   Put("El 10 de Diciembre es OTONNO y sale "); Put(Estacion(d=>10,m=>12)); New_Line;


--   -----------------
--   -- Estacion II --
--   -----------------
--   La_Estacion := Estacion(10,3);
--   Put("El 10 de Marzo es INVIERNO  y sale "); Put(La_Estacion'img); New_Line;
--   La_Estacion := Estacion(10,6);
--   Put("El 10 de Junio es PRIMAVERA y sale "); Put(La_Estacion'img); New_Line;
--   La_Estacion := Estacion(10,9);
--   Put("El 10 de Septiembre es VERANO y sale "); Put(la_Estacion'img); New_Line;
--   La_Estacion := Estacion(10,12);
--   Put("El 10 de Diciembre es OTONNO y sale "); Put(La_Estacion'img); New_Line;


--   ---------------------
--   -- Numero_perfecto --
--   ---------------------
--   for i in 1..10000 loop
--      if Es_Perfecto(i) then
--         Put(i'Img & " es perfecto");
--         New_Line; New_Line;
--      end if;
--   end loop;


--   --------------------
--   -- Newton-Raphson --
--   --------------------
--   Newton_Raphson(0.50,0.1,resultado,error);
--   Put("La aproximacion partiendo de 0.50 con un margen de error de 0.1 sale ");
--   Put(resultado,0,6,0);
--   New_Line;
--   New_Line;
--   Put(error,0,6,0);
--   New_Line;
--   New_Line;
--   New_Line;

--   Newton_Raphson(0.50,0.01,resultado,error);
--   Put("La aproximacion partiendo de 0.50 con un margen de error de 0.01 sale ");
--   Put(resultado,0,6,0);
--   New_Line;
--   New_Line;
--   Put(error,0,6,0);
--   New_Line;
--   New_Line;
--   New_Line;

--   Newton_Raphson(0.50,0.001,resultado,error);
--   Put("La aproximacion partiendo de 0.50 con un margen de error de 0.001 sale ");
--   Put(resultado,0,6,0);
--   New_Line;
--   New_Line;
--   Put(error,0,6,0);
--   New_Line;
--   New_Line;
--   New_Line;

--   Newton_Raphson(0.50,0.000001,resultado,error);
--   Put("La aproximacion partiendo de 0.50 con un margen de error de 0.000001 sale ");
--   Put(resultado,0,6,0);
--   New_Line;
--   New_Line;
--   Put(error,0,6,0);
--   New_Line;
--   New_Line;
--   New_Line;

end Lab03_Pruebas;

