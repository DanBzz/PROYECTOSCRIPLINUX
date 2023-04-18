# EJEMPLOS SCRIPT 

- <strong>Ejemplo 0001:</strong> Determinar si 2 es mayor que 3. Usar corchete simple

	<pre> <code>
	if [ 2 -gt 1 ]
	then 
	   echo "2 es mayor que 1"
	else 
	   echo "2 no es mayor que 1"
	fi;

	RESULTADO:
	2 es mayor que 1
	</code></pre>


- <strong>Ejemplo 0002: </strong>Determinar si 2 es distinto que 3. Usar corchete simple

	<pre> <code>
	if [[ 2 -ne 3 ]]
	then 
	   echo "2 es distinto a 3"
	else 
	   echo "2 es igual a 3"
	fi;

	RESULTADO:
	2 es dintinto a 3
	</code></pre>


- <strong>Ejemplo 0003:</strong> Determinar si 4 estra entre 3 y 5. Usar corchete doble.

	<pre> <code>
	if [[ 4 -gt 3 && 4 -lt 5 ]]
	then 
	   echo "4 esta entre 3 y 5"
	else 
	   echo "4 no esta entre 3 y 5"
	fi;

	RESULTADO:
	4 esta entre 3 y 5
	</code></pre>

- <strong>Ejemplo 0004:</strong> Determinar si 4 esta entre 3 y 5. Usar corchete simple.

	<pre> <code>
	if [ 4 -gt 3 -a -lt 5 ]
	then 
	   echo "4 esta entre 3 y 5"
	else 
	   echo "4 no esta entre 3 y 5"
	fi;



	RESULTADO:
	4 no esta entre 3 y 5
	</code></pre>

- <strong>Ejemplo 0005:</strong>Determinar si 2 es distinto que 3. Usar corchete doble.

	<pre> <code>
	if [[ 2 -ne 3 ]]
	then 
	   echo "2 es mayor que 3"
	else 
	   echo "2 no es mayor que 3"
	fi;


	RESULTADO:
	2 es mayor que 3
	</code></pre>

- <strong>Ejemplo 0006:</strong>Crear una variable que llamaremos edad y le asignaremos un valor de 15,
luego imprimeremos el contenido de la variable en pantalla.

	<pre> <code>
	edad=15 
	echo $edad


	RESULTADO:
	5
	</code></pre>
- <strong>Ejemplo 0007</strong>

	<pre> <code>
	mensaje="Hola mundo"
		echo $mensaje
	mensaje=5.5
		echo $mensaje
	mensaje=8
		echo $mensaje


	RESULTADO:
	Hola mundo 
	5.5
	8
	</code></pre>
- <strong>Ejemplo 0008</strong>

	<pre> <code>
	mensaje="Hola mundo"
		echo $mensaje
	readonly mensaje
	mensaje='Cambo de texto'
		echo $mensaje


	RESULTADO:
	Hola mundo
	ejemplos.sh: line 6: mensaje: readonly variable
	</code></pre>
- <strong>Ejemplo 0009</strong>

	<pre> <code>
	echo "Nombre del script: $0"
	echo "Parámetros1 : $1"
	echo "Parámetros2 : $2"
	echo "Valores de los parámetros: $@"
	echo "Valores de los parámetros: $#"
	echo "Total parámetros: $#"
	echo $?


	RESULTADO:
	sh ejemplos.sh hola mundo
	Nombre del script: ejemplos.sh
	Parámetros1 : hola
	Parámetros2 : mundo
	Valores de los parámetros: hola mundo
	Valores de los parámetros: 2
	Total parámetros: 2
	0
	</code></pre>
- <strong>Ejemplo 0010.</strong> Mostrar mensajes en la patalla se usa el comando echo
	
	<pre> <code>
	echo Hoy como estas
	edad=20
	echo Creo que tienes $edad años 
	echo -e "Esta \nfrase \nse \nmostrará \npalabra \npor \npalabra \nen \nuna \nlínea \ndistinta \ncada \npalabra"
	echo -e "Suprimir lo que viene a continuación \cel salto de línea"
	echo Imprimir todos los ficheros y carpetas a modo comando ls
	echo *
	echo Imprimir todos los ficheros de un formato en concreto 
	echo *.sh
	echo "Esta frase se direcciona a un archivo donde queda grabado" > salvar.txt
	echo "Esto que sigue se añade al archivo" >> salvar.txt
	echo -n "Omitimos el salto de línea"


	RESULTADO:
	$ sh ejemplos.sh hola mundo
	Hoy como estas
	Creo que tienes 20 años
	Esta
	frase
	se
	mostrará
	palabra
	por
	palabra
	en
	una
	línea
	distinta
	cada
	palabra
	Suprimir lo que viene a continuación Imprimir todos los ficheros y carpetas a modo comando ls
	Nuevo documento de texto.txt Pseint.md SCRIPT.md ejemplos.sh inicio.sh
	Imprimir todos los ficheros de un formato en concreto
	ejemplos.sh inicio.sh
	Omitimos el salto de línea
	Archivo salvar.txt : Esta frase se direcciona a un archivo donde queda grabado
	Esto que sigue se añade al archivo
	</code></pre>	
- <strong>Ejemplo 00011.</strong> Unicode
	
	<pre> <code>
		echo -e "\u2622"
		echo -e "\U1f41e"

	
	RESULTADO:
	☢
	🐞
	</code></pre>
- <strong>Ejemplo 0012:</strong> Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable.

	<pre> <code>
	nombre1="Luis"
	nombre2="luis"
	if [[ $nombre1 = $nombre2 ]]
	then 
		echo Son iguales
	else 
		echo Son distintos 
	fi;


	RESULTADO:
	Son distintos 
	</code></pre>	
- <strong>Ejemplo 0013:</strong> Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles
	
	<pre> <code>
	if [[ Luis =  luis ]]
	then 
	   echo Son iguales
	else 
	   echo Son distintos
	fi;

	
	RESULTADO:
	Son distintos
	</code></pre>	
- <strong>Ejemplo 0014:</strong> Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

	<pre> <code>
	if [[ 'Luis estas bien' =  'Luis estas bien' ]]
	then 
	   echo Son iguales
	else 
	   echo Son distintos
	fi;

	
	RESULTADO:
	Son iguales
	</code></pre>	
- <strong>Ejemplo 0015:</strong>Si la cadena va incluir variables emplear apostrofe doble.

	<pre> <code>
	edad=15
	if [[ "Tengo $edad años" =  'Tengo 15 años' ]]
	then 
	   echo Son iguales
	else 
	   echo Son distintos
	fi;

	
	RESULTADO:
	Son iguales
	</code></pre>	
- <strong>Ejemplo 0016:</strong>Hacer un bucle form para iterar sobre valores simples, siendo estos valores cadenas simples.
	
	<pre> <code>
	for var in Primero Segundo Tercero Cuarto Quinto; do 
		echo Número $var 
	done

	
	RESULTADO:
	Número Primero
	Número Segundo
	Número Tercero
	Número Cuarto
	Número Quinto
	</code></pre>
- <strong>Ejemplo 0017:</strong> Hacer un bucle for para iterar sobre valores simples, siendo estos valores numeros.
	
	<pre> <code>
	for var in 1 2 3 4 5; do 
		echo Número $var 
	done

	
	RESULTADO:
	Número 1
	Número 2
	Número 3
	Número 4
	Número 5
	</code></pre>
	
- <strong>Ejemplo 0018:</strong> Hacer un bucle for para iterar sobre valores complejos, siendo estos valores palabras o frases.

	<pre> <code>
	for var in Primero "El Segundo" "El Tercero" "El Quinto soy yo"; do 
		echo Esto es: $var
	done

	
	RESULTADO:
	Esto es: Primero
	Esto es: El Segundo
	Esto es: El Tercero
	Esto es: El Quinto soy yo
	</code></pre>	
- <strong>Ejemplo 0019:</strong> Hacer un blucle for para mostrar el contenido de un archivo.	

	<pre> <code>
	miarchivo="walter.txt"
	for var in $(cat $miarchivo);do 
		echo "$var"
	done

	
	RESULTADO:
	$ sh ejemplos.sh
	Hola
	esto
	esta
	en
	un
	archivo
	</code></pre>	
- <strong>Ejemplo 0020:</strong>Hacer un blucle for para leer un archivo, pero que considere el carácter de nueva línea como un separador en lugar de espacios.

	<pre> <code>
	miarchivo="C:\Proyectoscriptlinux"
	IFS=$'\n'
	for var in $(cat $miarchivo); do
		echo "$var"
	done

	
	RESULTADO:
	cat: 'C:\Proyectoscriptlinux': Is a directory

	</code></pre>	
- <strong>Ejemplo 0021:</strong> Hacer un bucle for para leer un archivo pero que considere el carácter punto y coma como separador.
	
	<pre> <code>
	miarchivo="walter21.txt"
	IFS=$';'
	for var in $(cat $miarchivo); do
		echo "$var"
	done

	
	RESULTADO:
	Luis
	Ruiz
	Roncal
	24
	1.74
	</code></pre>
- <strong>Ejemplo 0022:</strong> Mostrar el directorio actual y el usuario que se ha logueado en el sistema. El simbolo # al inicio de una línea es para mostrar comentarios de una línea dentro del script, el comando echo es para mostrar mensajes en la pantalla, el comando pwd muestra el directorio actual y el comando whoami es para mostrar el usuario que se ha logueado en el sistema.

	<pre> <code>
		echo "El directorio actual es:"
	pwd
		echo "El usuario logueado es:"
	whoami

	
	RESULTADO:
	El directorio actual es:
	/c/Proyectoscriptlinux
	El usuario logueado es:
	Curso Tarde
	</code></pre>
- <strong>Ejemplo 0023:</strong> Hacer un script que muestre el mensaje “El usuario NombreUsuario esta trabajando”. Con > nul anulamos la salida del comando para que no se muestre en pantalla.

	<pre> <code>
	echo FORMA 1
	if whoami > nul; then
		echo "El usuario $USER esta trabajando"
	fi
	echo FORMA 2
	USER=`whoami`
	if whoami; then 
		echo "El usuario $USER esta trabajando"
	fi

	
	RESULTADO:
	FORMA 1
	El usuario  esta trabajando
	FORMA 2
	Curso Tarde
	El usuario Curso Tarde esta trabajando
	</code></pre>
	
- <strong>Ejemplo 0024:</strong> Hacer un script que verifique si un usuario existe o no existe

	<pre> <code>
	usuario=walter
	if grep $usuario /etc/passwod > nul; 
	then
		echo "El usuario $usuario existe"
	else 
		echo "El usuario $usuario no existe" 
	fi

	
	RESULTADO:
	grep: /etc/passwod: No such file or directory
	El usuario walter no existe
	</code></pre>
- <strong>Ejemplo 0025:</strong> Hacer un script que verifique si el usuario logueado puede crear un archivo
	
	<pre> <code>
	touch /root/prueba
	if [ $? -eq 0 ];
	then 
		echo "Se ha creado el fichero"
	else
		echo "No se ha creado el fichero"
	fi

	
	RESULTADO:
	touch: cannot touch 'C:Proyectoscriptlinux/prueba': No such file or directory
	No se ha creado el fichero
	</code></pre>	
- <strong>Ejemplo 0026:</strong> Script que verifica si el usuario logueado puede crear un archivo
 
	<pre> <code>
	touch /root/prueba
	touch prueba
	if [ $? -eq 0 ];
	then 
		echo "Se ha creado el fichero"
	else
		echo "No se ha creado el fichero"
	fi

	
	RESULTADO:
	Se ha creado el fichero
	</code></pre>
- <strong>Ejemplo 0027:</strong> Comprobar si puedo ingresar a mi carpeta personal de trabajo.

	<pre> <code>
	clear
	micarpeta=C:\Proyectoscriptlinux\daniel
	if [ -d $micarpeta ];
	then
		echo "Carpeta $micarpeta existe"
	cd $micarpeta
	pwd
	ls
	else
		echo "No hay archivos o directorios $micarpeta"
	fi

	RESULTADO:
	No hay archivos o directorios C:Proyectoscriptlinuxdaniel
	</code></pre>
		
- <strong>Ejemplo 0028:</strong> Verificar si una variable tiene valor o no. Con –n busca un valor mayor que cero

	<pre> <code>
	clear
	variable="Hola"
	if [ -n $varible ];
	then
		echo "Tiene una logitud mayor que cero"
	else
		echo "Tiene una logitud de cero"
	fi

	
	RESULTADO:
	Tiene una logitud mayor que cero
	</code></pre>

