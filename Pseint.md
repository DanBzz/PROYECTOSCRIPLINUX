# PSEINT

<p>
PSeInt es un software educativo que permite a los usuarios aprender programación en pseudocódigo. Es una herramienta útil para aquellos que desean aprender programación o mejorar sus habilidades de programación.
</p>

<p>
El pseudocódigo es un lenguaje de programación que se utiliza para describir los algoritmos. Es un lenguaje que se utiliza para describir los pasos que se deben seguir para resolver un problema, sin preocuparse por la sintaxis específica del lenguaje de programación que se utilizará para implementar el algoritmo.
</p>

<p>
Con PSeInt, los usuarios pueden escribir algoritmos en pseudocódigo y luego ejecutarlos para ver cómo se comporta el programa. Además, PSeInt proporciona herramientas para analizar el algoritmo y detectar posibles errores o problemas.
</p>

</p>
PSeInt es una herramienta útil para aquellos que desean aprender programación, ya que les permite desarrollar habilidades en pseudocódigo antes de avanzar a un lenguaje de programación real. Además, es una herramienta útil para los programadores experimentados, ya que les permite desarrollar algoritmos más complejos y depurarlos en un entorno seguro y controlado.
</p>

#EJEMPLO VECTOR

- SIMULACION DE UNA BASE DE DATOS CON VECTORES
<pre>
<code>
Algoritmo Vector_Datos
	Definir vcodigo, vnombre como Caracter
	Definir vedad como entero 
	Definir Vestatura Como real
	
	Definir p Como Real
	Definir posicion Como entero
	
	Dimension vcodigo[5], vnombre[5], vedad[5], vestatura[5]
	//SIMULACIÓN DE UNA BASE DE DATOS(TABLA)
	vcodigo[1] = "A1"
	vcodigo[2] = "A2"
	vcodigo[3] = "A3"
	vcodigo[4] = "A4"
	vcodigo[5] = "A5"
	
	vnombre[1] = "carlos"
	vnombre[2] = "daniel"
	vnombre[3] = "roberto"
	vnombre[4] = "lucia"
	vnombre[5] = "carmen"

	vedad[1] = 23
	vedad[2] = 25
	vedad[3] = 24
	vedad[4] = 29
	vedad[5] = 22
	
	vestatura[1] = 1.61
	vestatura[2] = 1.60
	vestatura[3] = 1.70
	vestatura[4] = 1.80
	vestatura[5] = 1.63
	
	
	Repetir
		Escribir "1.PEDIR INFORMACION DE UNA ALUMNO CON SU CODIGO"
		Escribir "2.MOSTRAR EL PROMEDIO DE EDAD DE TODOS LOS ALUMNOS"
		Escribir "3.CAMBIAR EL NOMBRE DE UN ALUMNO DADO SU CODIGO"
		Leer opcion 
		Segun opcion Hacer
			"1"://PREGUNTA1: PEDIR INFORMACION DE UNA ALUMNO CON SU CODIGO 
				Escribir  "Ingrese el codigo del alumno"
				Leer codigo 
				
				//BUSCAR 
				encontre = Falso
				Para i<- 1 Hasta 5 Con Paso 1 Hacer
					Si vcodigo[i] = codigo  Entonces
						Escribir "Nombre   ", vnombre[i]
						Escribir "Edas   ", vedad[i]
						Escribir "Estatura  ", vestatura[i]
						encontre = Verdadero
					FinSi
				Fin Para
				si encontre = Falso Entonces 
					Escribir "CODIGO INCORRECTO"
				Fin si
			"2"://PREGUNTA2: MOSTRAR EL PROMEDIO DE EDAD DE TODOS LOS ALUMNOS 
				s = 0
				Para i<- 1 Hasta 5 Con Paso 1 Hacer
					s = s + vedad[i]
				FinPara
				p = s/5
				Escribir "Promedio:  ", p
			"3": //PREGUNTA3: CAMBIAR EL NOMBRE DE UN ALUMNO DADO SU CODIGO
				Escribir "Inserte codigo"
				leer codigo
				Para i<- 1 Hasta 5 Con Paso 1 Hacer
					si vcodigo[i] = codigo entonces 
						encontre = Verdadero
						posicion = i
					FinSi
				FinPara
				si encontre = Falso Entonces 
					Escribir "CODIGO INCORRECTO"
				sino 
					Escribir "Ingrese Nombre Nuevo"
					leer nombrenuevo
					vnombre[posicion] = nombrenuevo
					Escribir "Cambio correcto:  ", vnombre[posicion]
				FinSi
			De Otro Modo:
				EscribIr " OPNCION CORRECTA"
		Fin Segun
	Hasta Que Falso

FinAlgoritmo
</code>
</pre>

# ANEXO 1: VIDEO YOUTUBE 

<p align="center">
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"_blank">
     <img src="https://i.ytimg.com/vi/d_xDOLVZDcM/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCGVOy-C79y7-ZpAva2gm6XJY9Nmg" alt="Expresiones Regulares" width="400" height="300" border="10" /></a>
  <a href="https://www.youtube.com/watch?v=d_xDOLVZDcM"></a>
</p>