package Laboratorio03 is

	function f (X,Pos: in Natural) return Natural;
	--post: resultado = x si y solo si (sii) pos es par
	--      resultado = 2*x sii pos es impar y x < 5
	--      resultado = 2x-9 sii pos es impar y x >= 5

	procedure a_polar(a,b: in float; modulo, argumento: out Float);
	-- post: argumento = angulo de (a,b) en coordenadas polares
	--       modulo = modulo de (a,b) en coordenadas polares

	procedure resultado_ONCE (premiado, a_comprobar: in Natural; premio: out Natural);
	-- pre: premiado, a_comprobar < 10000
	-- post: premio = premio correspondiente a_comprobar

	procedure Multiplos_3(N1,N2: in Natural; cuenta, suma: out Natural);
	--post: cuenta = numero de m煤ltiplos de 3 entre N1 y N2
	--      suma = suma de los m煤ltiplos de 3 entre N1 y N2

	function Factorial (N: in Positive) return Positive;
	--post: resultado = N!

	procedure decimal_binario (Decimal: in Natural; Binario: out Natural);
	--post: Binario = Decimal en base 2 (como si fueran numeros directamente)

	------------------------------------------------------------------

	procedure segundo_anterior(h, m, s: in out Natural);
	-- pre: h<24; m<60; s<60
	-- post: h:m:s tiene la hora anterior con un segundo m谩s

	procedure solucionar(a,b,c: in float; num_sols: out Natural; sol1, sol2: out Float);
	--post: num_sols = numero de soluciones de la ecuaci贸n
	--      sol1 = solucion1 de la ecuacion si num_sols >= 1, si no, nada
	--      sol2 = solucion de la ecuaci贸n si num_sols = 2, si no, nada

	procedure final_tarea(h,m,s: in Natural; duracion: in Positive; siguiente_jornada: out Boolean; hf,mf,sf: out Natural);
	--pre: h<24; m<60; s<60; duraci贸n <= 14400
	--post: hf:mf:sf = h:m:s + duraci贸n
	--      siguiente_jornada = true si y solo si se cambia de jornada

	procedure Secuencia_Collatz(num: in Positive; cuenta, suma: out Natural);
	--Post: Cuenta = numero de elementos en la secuencia de Collatz que comienza por num
	--        Suma = suma de los elementos de la secuencia de Collatz que comienza por num
	--Salida est谩ndar: los numeros de la secuencia de Collatz que comienza por num

	function Fibonacci(N:in Natural) return Natural;
	--Post: Resultado = Fib(N)

	function Divisores_propios(N: in Natural) return Natural;
	--Post: Resultado = numero de divisores propios de N

	-----------------------------------------------------------------
	Procedure Dia_anterior(d,m,a:in out Natural);
	--pre: d<=31; m<=12; a<=9999
	--post: d-m-a contiene el d铆a anterior a d-m-a al comienzo

	function Estacion(d,m: in natural) return STRING;
	--post: resultado = estaci贸n en la que cae la fecha d-m-a

	type T_Estacion is (PRIMAVERA, VERANO, OTONNO, INVIERNO);
	function Estacion(d,m: in Natural) return T_Estacion;
	--post: resultado = estaci贸n en la que cae la fecha d-m-a

       function Es_Perfecto(N: in Positive) return Boolean;
       --post: resultado = true si y solo si N es perfecto

       procedure Contenido_Del_Texto (Espacios, Letras, Digitos: out Natural);
       -- Entrada est醤dar: Un texto terminado en '.'
       --Post: Espacios = numero de espacios en el texto
       --      Letras = numero de letras en el texto
       --      digitos = numero de digitos en el texto

       procedure Newton_Raphson (Inicial, Error: in Float; V_Actual, Err_Actual: out Float);
       -- Pre: la funci髇 converge para el valor inicial.
       -- Post: V_actual es el valor aproximado con error < que Error
       --       Err_actual: es el error calculado de la nueva aproximacion
end Laboratorio03;
