// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
//submenu numerico
// #1Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//#2Dividir dos numeros por restas
funcion Dividirdosnumerosporrestas()
	definir dividendo,divisor,cont,rest Como real
	escribir "ingrese el dividendo"
	leer dividendo
	Escribir "ingrese el divvisor"
	leer divisor
	cont=0
	rest=dividendo
	Mientras rest-divisor>= 0 Hacer
		rest=rest-divisor
		Escribir (rest+divisor) , "-",divisor,"=" ,rest
		cont=cont+1
	FinMientras
	Escribir " la division entre: ",dividendo,"/",divisor,"=",cont
FinFuncion
//#3Multiplicar dos numeros por sumas
Funcion Multiplicardosnumerosporsumas()
Definir n1,n2,sum,i Como Real
Escribir "Ingrese el primer numero"
leer n1
Escribir "Ingrese el segundo numero"
leer n2
sum=0
para i=1 Hasta n2 Con Paso 1 Hacer
	sum=sum+n1
	Escribir sum-n1," + ",n1,"=",sum
FinPara
Escribir "la multiplicacion de: ",n1,"*",n2,"=",sum
FinFuncion
//#4Suma Pares y Productos multiplos de 5 de una secuencia de numeros
funcion SumaParesyProductosmultiplosde5()
definir num,n,cp,sump,mul,acu,c Como Entero
cp=0
acu=0
mul=1
sump=0
Escribir " ingrese cantidad de numeros: "
leer  n 
para c=1 Hasta n Hacer
	Escribir "ingrese numeros: "
	leer num 
	si num mod 2==0 Entonces
		cp=cp+1
		sump=sump+num
	FinSi
	si num mod 5==0 Entonces
		acu=acu+1
		mul=mul*num
	FinSi
FinPara
Escribir " las suma pares de los numeros es: " , sump
Escribir " la multiplicacion de los multiplos de 5 es: " , mul
FinFuncion
//#5Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
Funcion cantidaddedigitosdeunasecuencia()
	Definir num ,c Como real
	c=0
	Escribir "Ingrese Un Numero: "
	Leer num
	Mientras num<>0 Hacer
		Mientras num<>0 Hacer
			num=trunc(num / 10)
			c=c+1
		FinMientras
		escribir "Ingrese numero: "
		Leer num
	FinMientras
	Escribir " la cantidad de digito es: " ,c
FinFuncion
//#6Mostrar El Precio, descuento, iva y pago de n trajes
Funcion totaldedescuentoivantrajes()
	Definir n,n2,cont,suma,sumaiva,sumatotal,sumare,sum,sumap Como real
	Escribir "ingrese cuantos productos compro"
	leer n
	suma=0;cont=0;sumatotal=0;sumaiva=0;sumare=0;sum=0;sumap=0 
	Mientras cont<n Hacer
		Escribir "ingrese el valor de la compra uno por uno"
		leer n2
		suma=suma+n2
		cont=cont+1
	FinMientras
	si suma > 100 Entonces
		sum=suma*0.10
		sumare=(sumare-sum)*0.12
		sumatotal=suma+sumare
		Escribir "El valor de la compra con el descuento es: ",sumatotal
	SiNo
		sumap=suma*0.12
		sumaiva=suma+sumap
		Escribir "El valor total de la compra con iva es: ",sumaiva
	FinSi
FinFuncion
//#7Dado tres numeros indicar si el segundo es el mayor
Funcion numeromayor()
	Definir n1,n2,n3 Como Entero
	Escribir "ingrese el primer numero"
	leer n1
	Escribir "ingrese el segundo numero"
	leer n2
	Escribir "ingrese el tercer numero"
	leer n3
	si (n1>n2 y n1>n3) Entonces
		Escribir "el primer numero es mayor"
	SiNo
		si(n2>n1 y n2>n3) Entonces
			Escribir "el segundo numero es mayor"
		sino
			si (n3>n1 y n3>n2) Entonces
				Escribir "el tercer numero es mayor"
			SiNo
				Escribir "los numeros son iguales"
			FinSi
		FinSi
	FinSi
FinFuncion
//#8Dado una secuencia de numeros presentar su promedio
Funcion promedio()
	Definir num, sum, pro Como real
	Definir c Como Entero
	c=0
	Mientras num>=0 Hacer
		Escribir "Ingrese Un Numero: "
		leer num
		c=c+1
		si num>=0 Entonces
			
			sum=sum+num
			pro=sum/c
		FinSi
	FinMientras
	escribir "El Promedio de ", sum, " es: " pro
FinFuncion
//#9Numeros amigos
Funcion numeroamigo()
	Definir n1,n2,sum,c Como Entero
	Escribir "ingresar 2 numeros"
	leer n1,n2
	sum=0
	c=1
	Mientras c<n1 Hacer
		si n1 mod c==0 Entonces
			sum=sum+c
		FinSi
		c=c+1
	FinMientras
	si sum==n2 Entonces
		Escribir "los numeros son amigos"
	SiNo
		Escribir "los numeros no son amigos"
	FinSi	
FinFuncion
//#10primos gemelos
Funcion primogemelo()
	Definir i1,i2,cont1,cont2,n1,n2 Como Entero
	Escribir "ingrese los numeros"
	leer n1,n2
	i1=1
	i2=1
	cont1=0
	cont2=0
	Mientras i1<= n1 Hacer
		si n1 mod i1==0
			cont1=cont1+1
		FinSi
		i1=i1+1
		Mientras i2<=n2 Hacer
			si n2 mod i2==0
				cont2=cont2+1
			FinSi
			i2=i2+1
		FinMientras
	FinMientras
	si cont1 ==2 Entonces
		si cont2==2 Entonces
		FinSi
		Escribir " los numeros: " , n1 , " y " , n2 , " son primos gemelos"
	SiNo
		Escribir " los numeros: " , n1 , " y " , n2 , " no son primos gemelos"
	FinSi
FinFuncion
//submenu cadenas
//#1Presentar un nombre caracter por caracter
funcion nombrecaracter()
Definir nombre Como Caracter
definir pos,l Como Entero
nombre=""
pos=0
l=0
Escribir "ingrese el nombre"
leer nombre
l=Longitud(nombre)-1
para pos=0 hasta l con paso 1 Hacer
	Escribir Subcadena(nombre,pos,pos) 
FinPara
FinFuncion
//#2Presentar el primero, el medio y el ultimo caracter de una frase
Funcion presentarloscaracteresquepideunafrase()
	Definir frase Como Caracter
	definir l Como Entero
	Escribir "ingrese la frase"
	leer frase
	l=Longitud(frase)
	Escribir "la primera letra de la frase es: ",Subcadena(frase,0,0)
	Escribir "la letra de la mitad de la frase es: ",Subcadena(frase,l/2,l/2)
	Escribir "la ultima letra de la frase es: ",Subcadena(frase,l-1,l-1)
FinFuncion
//#3Dado dos nombres indicar si son iguales
Funcion nombresiguales()
	Definir nom1,nom2 Como Caracter
	leer nom1,nom2
	si nom1=nom2 Entonces
		Escribir "los nombres :" , nom1, " y " , nom2 , "  son iguales " 
	SiNo
		Escribir " los nombres no son iguales"
	FinSi
FinFuncion
//#4Dadas dos frase indicar la de mayor longitud
funcion frasemayor()
	Definir frase1,frase2 Como Caracter
	Definir l1,l2 Como Entero
	Escribir "ingrese las frases"
	leer frase1,frase2 
	l1=Longitud(frase1)
	l2=Longitud(frase2)
	si l1  > l2 Entonces
		Escribir "la primera frase tiene mayor longitud"
	SiNo
		Escribir "la segunda frase tiene mayor longitud"
	FinSi
FinFuncion
//#5Indicar cuantas ,.;: hay en una cadena
Funcion indicarloquepideenunacadena()
		definir frase Como Caracter
		Definir pos,c1,c2,c3,c4,l Como Entero
		Escribir "ingrese la frase "
		leer frase
		pos=0
		c1=0
		c2=0
		c3=0
		c4=0
		l=Longitud(frase)
		para pos=0 Hasta l con paso 1 Hacer
			si Subcadena(frase,pos,pos)=","
				c1=c1+1
		    FinSi
		finpara
		para pos=0 Hasta l con paso 1 Hacer
			si Subcadena(frase,pos,pos)="."
				c2=c2+1
			FinSi
		finpara
		para pos=0 Hasta l con paso 1 Hacer
			si Subcadena(frase,pos,pos)=";"
				c3=c3+1
			FinSi
		finpara
		para pos=0 Hasta l con paso 1 Hacer
			si subcadena(frase,pos,pos)=":"
				c4=c4+1
			FinSi
		finpara
		Escribir "la frase tiene: " , c1 , " comas "
		Escribir "la frase tiene: " , c2 , " puntos "
		Escribir "la frase tiene: " , c3 , " punto y coma "
		Escribir "la frase tiene: " , c4 , " dos puntos "
FinFuncion
//#6Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion cuantasvocalesconsonantesydigitoshayenlacadena()
	Definir frase Como Caracter
	definir l,cc,cv,cd,pos Como Entero
	Escribir "ingrese la frase "
	leer frase
	pos=0
	cc=0
	cv=0
	cd=0
	l=Longitud(frase)-1
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="a" o Subcadena(frase,pos,pos)="e" o Subcadena(frase,pos,pos)="i" o subcadena(frase,pos,pos)="o" o subcadena(frase,pos,pos)="u" o subcadena(frase,pos,pos)="A" o subcadena(frase,pos,pos)="E" o subcadena(frase,pos,pos)="I" o subcadena(frase,pos,pos)="O" o subcadena(frase,pos,pos)="u"o subcadena(frase,pos,pos)="U" Entonces
			cv=cv+1
		FinSi
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="b" o Subcadena(frase,pos,pos)="c" o Subcadena(frase,pos,pos)="d" o Subcadena(frase,pos,pos)="f" o Subcadena(frase,pos,pos)="g" o Subcadena(frase,pos,pos)="h" o Subcadena(frase,pos,pos)="j" o Subcadena(frase,pos,pos)="k" o Subcadena(frase,pos,pos)="l" o Subcadena(frase,pos,pos)="m" o Subcadena(frase,pos,pos)="n" o Subcadena(frase,pos,pos)="ñ" o Subcadena(frase,pos,pos)="p" o Subcadena(frase,pos,pos)="q" o Subcadena(frase,pos,pos)="r" o Subcadena(frase,pos,pos)="s" o Subcadena(frase,pos,pos)="t" o Subcadena(frase,pos,pos)="v" o Subcadena(frase,pos,pos)="w" o Subcadena(frase,pos,pos)="x" o  Subcadena(frase,pos,pos)="y" o Subcadena(frase,pos,pos)="z" o Subcadena(frase,pos,pos)="B" o Subcadena(frase,pos,pos)="C" o Subcadena(frase,pos,pos)="D" o Subcadena(frase,pos,pos)="F" o Subcadena(frase,pos,pos)="G" o Subcadena(frase,pos,pos)="H" o Subcadena(frase,pos,pos)="J" o Subcadena(frase,pos,pos)="K" o Subcadena(frase,pos,pos)="M" o Subcadena(frase,pos,pos)="N" o Subcadena(frase,pos,pos)="Ñ" o Subcadena(frase,pos,pos)="P" o Subcadena(frase,pos,pos)="Q" o Subcadena(frase,pos,pos)="R" o Subcadena(frase,pos,pos)="S" o Subcadena(frase,pos,pos)="T" o Subcadena(frase,pos,pos)="V" o Subcadena(frase,pos,pos)="W" o Subcadena(frase,pos,pos)="X" o Subcadena(frase,pos,pos)="Y" o Subcadena(frase,pos,pos)="Z" Entonces
			cc=cc+1
		FinSi	
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)>="0" y Subcadena(frase,pos,pos)<="9" Entonces
			cd=cd+1
		FinSi
	FinPara
	Escribir " la frase tiene: " , cv , " vocales "
	Escribir " la frase tiene: " , cc , " consonantes "
	Escribir " la frase tiene: " , cd , " digitos "
FinFuncion
//#7Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion palabrasenunafrase()
	definir frase,car,carante Como Caracter
	definir pos,ce,l Como Entero
	frase=""
	ce=1
	pos=0
	l=0
	Escribir " ingrese la frase "
	leer frase
	l=Longitud(frase)-1
	para pos=0 Hasta l Con Paso 1 Hacer
		car= Subcadena(frase,pos,pos)
		carante= Subcadena(frase,pos-1,pos-1)
		Escribir car Sin Saltar
		si car<>" " y carante= " " Entonces
			ce=ce+1
		FinSi
	FinPara
	Escribir ""
	Escribir " la frase: " ,  frase , " tiene: " , ce , " palabras "
FinFuncion
//#8Presentar la suma de los digitos de una cedula
Funcion sumacedula()
	Definir n,d,c Como real
	leer n
	c=0
	Mientras n>0 Hacer
		d=n mod 10
		c=c+d
		n=trunc(n/10)
	FinMientras
	Escribir "la suma de los numeros de la cedula es: ",c 
FinFuncion
//#9Indicar si una palabra es palindroma
funcion palindroma()
	Definir palabra,inversa Como Caracter
	Definir a,b,i Como Entero
	Escribir "ingrese la palabra"
	leer palabra
	inversa="";
	b=Longitud(palabra)
	para i=b Hasta 0 Con Paso -1 Hacer
		inversa=inversa+Subcadena(palabra,i,i)
	FinPara
	Escribir inversa
	si palabra=inversa Entonces
		Escribir "la palabra: ",palabra," es palindroma"
	SiNo
		Escribir "la palabra: ",palabra," no es palindroma"
	FinSi
FinFuncion
//#10Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
Funcion posicioncaracter()
	Definir frase, letra, veri Como Caracter
	Definir a,b,i  Como Entero
    Definir lencontra Como Logico
	i=0
	Escribir "ingrese la palabra"
	leer frase
	Escribir "Ingrese la letra"
	Leer letra
	lencontra=Falso
	Mientras (i<=Longitud(frase)) Hacer
		
		si (Subcadena(frase,i,i))=letra Entonces
			lencontra=Verdadero
			b=i
		FinSi
		i=i+1
	FinMientras
	Escribir "posicion: ",b
FinFuncion
//submenu arreglo
//#1dado un arreglo cualquiera ingresarlo y presentarlo
Funcion presentararreglo()
	Definir numero,pos,l Como Entero
	Dimension numero[6]
	l=5;pos=0
	numero[0]=2
	numero[1]=4
	numero[2]=6
	numero[3]=8
	numero[4]=10
	numero[5]=12
	para pos=0 Hasta l Con Paso 1 Hacer
		Escribir numero[pos]
	FinPara
FinFuncion
//#2Presentar los numeros pares de un arreglo
Funcion numerospares()
	definir l,pos,numero Como Entero
	Dimension numero[7]
	l=6;pos=0
	numero[0]=1
	numero[1]=2
	numero[2]=3
	numero[3]=4
	numero[4]=5
	numero[5]=6
	numero[6]=8
	para pos=0 Hasta l con paso 1 Hacer
		Escribir numero[pos]
	FinPara
	Escribir "los numeros pares son"
	para pos=0 Hasta l con paso 1 Hacer
		si numero[pos] mod 2==0 Entonces
			Escribir numero[pos]
		FinSi
	FinPara
FinFuncion
//#3Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion nnegativos()
	definir pos,l,numero Como Entero
	Dimension numero[8]
	l=7;pos=0
	numero[0]=4
	numero[1]=3
	numero[2]=2
	numero[3]=1
	numero[4]=0
	numero[5]=-1
	numero[6]=-2
	numero[7]=-3
	para pos=0 Hasta l Con Paso 1 Hacer
		Escribir numero[pos]
	FinPara
	Escribir "los numeros negativos son"
	para pos=0 Hasta l con paso 1 Hacer
		si numero[pos] < 0 Entonces
			Escribir numero[pos] 
		FinSi
	FinPara
FinFuncion
//#4Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion nominicial()
	Definir cuan,pos,posi,c Como Entero
	Definir n Como Caracter
	Escribir "cuantos nombres vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres el nombre: ",posi
		leer n[pos]
		posi=posi+1
	FinPara
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "la primera letra del nombre de ",n[pos]," es: ",Subcadena(n[pos],0,0)
	FinPara
FinFuncion
//#5Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion numtotalcantitadpromedio()
		Definir cuan,pos,posi,posi1,c,n,acu,pro Como real
		Escribir "cuantos numeros vas a ingresar"
		leer cuan
		Dimension n[cuan]
		posi=1;acu=0;posi1=0;pro=1
		para pos=0 Hasta cuan-1 Con Paso 1 Hacer
			Escribir "ingres el numero: ",posi
			leer n[pos]
			acu=acu+n[pos]
			posi=posi+1
			posi1=posi1+1
		FinPara
		pro=acu/cuan
		Escribir "la suma de los numeros es:",acu
		Escribir "la cantidad de los numeros es:",posi1
		Escribir "el promedio de los numeros es: ",pro
FinFuncion
//#6Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion multi5()
	Definir numero,l,pos,c Como Entero
	Dimension numero[7]
	l=6;pos=0;c=0
	numero[0]=2
	numero[1]=4
	numero[2]=5
	numero[3]=10
	numero[4]=13
	numero[5]=15
	numero[6]=20
	para pos=0 Hasta l Con Paso 1 Hacer
		Escribir numero[pos]
	FinPara
	Escribir "los multiplos de 5 al revez son: "
	Para pos=6 Hasta 0 con paso -1 Hacer
		si numero[pos] mod 5==0  Entonces
			Escribir numero[pos]
		FinSi
	FinPara
FinFuncion
//#7Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion numprimeromedioyultimo()
	definir num,lim,i Como Entero
	dimension num[5]
	Escribir "Ingresa 5 numeros"
	para i = 0 hasta 5-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",i
		leer num[i]
	FinPara
	Escribir ""
	para i = 0 hasta 5-1 con paso 2 Hacer
		Mostrar " [ " num[i], " ] " Sin Saltar
	FinPara   
FinFuncion
//#8Dado un arreglo copiarlo en otro y presentarlo
Funcion arreglo()
	definir num,lim,i,ele,pos Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	Dimension ele[lim]
	pos=1
	Escribir "ingres los numeros del arreglo"
	para i = 0 hasta lim-1 con paso 1 Hacer
		leer num[i] 
		ele[i]=num[i]
		pos=pos+1
	FinPara
	Escribir " los numeros se han copiado con exito en otro arreglo"
	para i = 0 hasta lim-1 con paso 1 hacer 
		Mostrar ele[i] Sin Saltar
	FinPara
FinFuncion
//#9Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos
Funcion sumarreglo()
	Definir arrgl, array,sum,i,lim,pos Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension arrgl[lim]
	Dimension array[lim]
	Dimension sum[lim]
	i=0;pos=1
	Escribir "Arreglo 1"
	para i = 0 hasta lim-1 con paso 1 Hacer
		leer arrgl[i]
	FinPara
	Escribir "Arreglo 2"
	para i = 0 hasta lim-1 con paso 1 Hacer
		
		leer array[i]
	FinPara
	para i = 0 hasta lim-1 con paso 1 Hacer
		sum[i] = array[i] + arrgl[i]
	FinPara
	Escribir ""
	Escribir "La Suma: "
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar sum[i]
	FinPara
FinFuncion
//#10Dado una serie de numeros guarda en un arreglo los factoriales
Funcion factoriales()
	Definir num,i,lim,x,fact,pos Como real
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension fact[lim]
	pos=1
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numeros ",pos
		leer num
		x = num
		Mientras x > 1 Hacer
			x = x - 1
			num = num * x
		FinMientras
		fact[i] = num
		pos=pos+1
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar fact[i]," , " Sin Saltar
	FinPara	
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	menuNumeros[8] = "  9)Numeros amigos"
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	// arreglo submenu cadenas
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	// arreglo submenu arreglos
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 5 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						Dividirdosnumerosporrestas()
						Esperar 5 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						Multiplicardosnumerosporsumas()
						Esperar 5 Segundos
					"4":
						Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						SumaParesyProductosmultiplosde5()
						Esperar 5 Segundos
					"5":
						Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						cantidaddedigitosdeunasecuencia()
						Esperar 5 Segundos
					"6":
						Escribir "Mostrar El Precio, descuento, iva y pago de n trajes"
						totaldedescuentoivantrajes()
						Esperar 5 Segundos
					"7":
						Escribir "ado tres numeros indicar si el segundo es el mayor"
						numeromayor()
						Esperar 5 Segundos
					"8":
						Escribir "Dado una secuencia de numeros presentar su promedio"
						promedio()
						Esperar 5 Segundos
					"9":
						Escribir "Numeros amigos"
						numeroamigo()
						Esperar 5 Segundos
					"10":
						Escribir "primos gemelos"
						primogemelo()
						Esperar 5 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"2":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcn Hacer
					"1":
						Escribir "Presentar un nombre caracter por caracter"
						nombrecaracter()
						Esperar 5 Segundos
					"2":
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						presentarloscaracteresquepideunafrase()
						Esperar 5 Segundos
					"3":
						Escribir "Dado dos nombres indicar si son iguales"
						nombresiguales()
						Esperar 5 Segundos
					"4":
						Escribir "Dadas dos frase indicar la de mayor longitud"
						frasemayor()
						Esperar 5 Segundos
					"5":
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						indicarloquepideenunacadena()
							Esperar 5 Segundos
						"6":
							Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
							cuantasvocalesconsonantesydigitoshayenlacadena()
							Esperar 5 Segundos
						"7":
							Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
							palabrasenunafrase()
							Esperar 5 Segundos
						"8":
							Escribir "Presentar la suma de los digitos de una cedula"
							sumacedula()
							Esperar 5 Segundos
						"9":
							Escribir "Indicar si una palabra es palindroma"
							palindroma()
							Esperar 5 Segundos
						"10":
							Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
							posicioncaracter()
							Esperar 5 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				FinSegun
			FinMientras
		"3":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Arreglos",menuArreglos,11)
				Segun opcn Hacer
		"1":
			Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
			presentararreglo()
			Esperar 6 Segundos
		"2":
			Escribir "Presentar los numeros pares de un arreglo"
			numerospares()
			Esperar 6 Segundos
		"3":
			Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
			nnegativos()
			Esperar 6 Segundos
		"4":
			Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
			nominicial()
			Esperar 4 Segundos
		"5":
			Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
			numtotalcantitadpromedio()
			Esperar 4 Segundos
		"6":
			Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
			multi5()
			Esperar 6 Segundos
		"7":
			Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
			numprimeromedioyultimo()
			Esperar 4 Segundos
		"8":
			Escribir "Dado un arreglo copiarlo en otro y presentarlo"
			arreglo()
			Esperar 4 Segundos
		"9":
			Escribir "Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
			sumarreglo()
			esperar 4 Segundos
		"10":
			Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
			factoriales()
			Esperar 3 Segundos
	FinSegun
FinMientras
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
