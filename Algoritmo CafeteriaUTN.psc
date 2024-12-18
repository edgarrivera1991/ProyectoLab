Algoritmo CafeUTN
    // Declaración de variables globales
    Definir opcion Como Entero
    Definir codigoProducto Como Caracter
    Definir matriz_productos Como Caracter
    Definir horaFormato Como Caracter 
    Definir nombreCajero Como Caracter
    Definir creditoTotal Como Entero
    creditoTotal <- 2000
    Definir LONG_PRODUCTOS Como Entero
    LONG_PRODUCTOS <- 10
    Dimension matriz_productos[LONG_PRODUCTOS, 3]
    Dimension cantidades[LONG_PRODUCTOS]
    LONG_INSUMOS <- 11
    Dimension codigo[LONG_INSUMOS]
    Dimension nombre[LONG_INSUMOS]
    Dimension precio[LONG_INSUMOS]
    Dimension stock[LONG_INSUMOS]
    Dimension vencimiento[LONG_INSUMOS]
    LONG_MESAS <- 10
    Dimension mesas[LONG_MESAS]
    LONG_VENTAS <- 100
    Dimension ventas_fecha[LONG_VENTAS]
    Dimension ventas_total[LONG_VENTAS]
    Dimension ventas_operacion[LONG_VENTAS]
    Dimension ventas_cantidades[LONG_VENTAS]
    Dimension ventas_productos[LONG_VENTAS]
    Dimension productosAcumulados[LONG_PRODUCTOS]
    Dimension cantidadesAcumuladas[LONG_PRODUCTOS]
    Dimension insumos(LONG_INSUMOS)
    Dimension costo(LONG_INSUMOS)
    Dimension stockProveedor(LONG_INSUMOS)
    Dimension minimo(LONG_INSUMOS)
    Dimension ticketNombre[100]   
	Dimension ticketCantidad[100] 
	Dimension ticketSubtotal[100] 
    Dimension ticketCodigo[100]
    Dimension ticketCosto[100]
	Definir numVentas Como Entero
    numVentas <- 0
	numVentasP <- 0
    Definir fechaFormato Como Cadena
    Definir nroOperacion Como Entero
    nroOperacion <- 0
	
    // Inicializar variables
    InicializarStock(codigo, nombre, precio, stock, vencimiento)
    InicializarProducto(matriz_productos)
    InicializarMesa(mesas)
    InicializarCantidades(cantidades, LONG_PRODUCTOS)
    InicializarVentas(ventas_cantidades, ventas_productos, LONG_VENTAS)
	InicializarProdAcum(productosAcumulados, cantidadesAcumuladas, LONG_PRODUCTOS)
    InicializarInsumosProveedor(insumos, costo, stockProveedor, minimo)
	
    // Llamar al menú principal
    MenuPrincipal(matriz_productos, ventas_fecha, ventas_total, ventas_operacion, ventas_productos, ventas_cantidades, mesas, codigo, nombre, stock, precio, cantidades, vencimiento, numVentas, fechaFormato, nroOperacion,creditoTotal,insumos,costo,stockproveedor,minimo,ticketCodigo,ticketNombre,ticketCantidad,ticketCosto,ticketSubtotal)
FinAlgoritmo

Funcion MenuPrincipal(matriz_productos Por Referencia, ventas_fecha Por Referencia, ventas_total Por Referencia, ventas_operacion Por Referencia, ventas_productos Por Referencia, ventas_cantidades Por Referencia, mesas Por Referencia, codigo Por Referencia, nombre Por Referencia, stock Por Referencia, precio Por Referencia, cantidades Por Referencia, vencimiento Por Referencia, numVentas Por Referencia, fechaFormato Por Referencia, nroOperacion Por Referencia,creditoTotal Por Referencia,insumos Por Referencia,costo Por Referencia,stockproveedor Por Referencia,minimo Por Referencia,ticketCodigo,ticketNombre,ticketCantidad,ticketCosto,ticketSubtotal)
    Mientras opcion <> 4 Hacer
        // Mostrar el menú de opciones
        Escribir "============================================================================================="
        Escribir "                                       _         _    _  _______  _    _                     "
        Escribir "               ____            __               | |  | | __   __ | \\ | |                    " 
        Escribir "             / ___|   __ _   / _|   ___         | |  | |   | |   |  \\| |                    "
        Escribir "            | |      / _` | | |_   / _ \\       | |  | |   | |   | . `  |                    "
        Escribir "            | |___  | (_| | |  _| |  __/        | |__| |   | |   | |\\  |                    "
        Escribir "             \\____| \\___| |_|    \\___|       \\_____/   |_|   |_| \\_|                    "
        Escribir "============================================================================================="
        Escribir "=                                                                                           ="
        Escribir "=  [1] Cafetería       [2] Cliente       [3] Proveedor       [4] Cerrar Cesión              ="
        Escribir "=                                                                                           ="
        Escribir "============================================================================================="
        Escribir "=                                                                                           ="
        Escribir "=                                                                                           ="
        Escribir "=                                                                                           ="
        Escribir "============================================================================================="
        Escribir "=                                                                                           ="
        Escribir "=            Ingrese el número de la opción que desea seleccionar:                          ="
        Escribir "=                                                                                           ="
        Escribir "============================================================================================="
		
        // Solicitar al usuario que ingrese una opción
        Leer opcion
		
        // Procesar la opción seleccionada
        Segun opcion Hacer
            1: 
                validacion_usuario()
                Esperar Tecla
                Limpiar Pantalla
                TazaDeCafe()
                Esperar Tecla
                Limpiar Pantalla
                Cafeteria(matriz_productos, ventas_fecha, ventas_total, ventas_operacion, ventas_productos, ventas_cantidades, mesas, codigo, nombre, stock, precio, cantidades, vencimiento, numVentas, fechaFormato, nroOperacion,creditoTotal)
				// Declarar variable para la opción seleccionada
                Esperar Tecla
                Limpiar Pantalla
            2: 
                validacion_usuario()
                Esperar Tecla
                Limpiar Pantalla
                creditoGanado <- Cliente(creditoTotal,matriz_productos,stock,cantidades,ventas_fecha,ventas_total,ventas_operacion,ventas_productos,ventas_cantidades,numVentas, fechaFormato, nroOperacion,creditoTotal)
                creditoTotal <- creditoGanado + creditoTotal
                Esperar Tecla
                Limpiar Pantalla
            3: 
                validacion_usuario()
                Esperar Tecla
                Limpiar Pantalla
                MenuProveedores(codigo, stock, stockProveedor, costo, insumos, minimo, indiceProducto, cantidadVenta, costoTotal, ticketCodigo, ticketNombre, ticketCantidad, ticketCosto, ticketSubtotal, numVentas,ventas_fecha)
                Esperar Tecla
                Limpiar Pantalla
            4: 
                Escribir "Saliendo del programa. ¡Hasta luego!"  // Finalizar el programa
            De Otro Modo: 
                Escribir "Opción no válida. Por favor, intente de nuevo."
        FinSegun
    Fin Mientras
FinFuncion

//////////////INICIALIZACIONES////////////////
Funcion InicializarProducto(matriz_productos)
	// Inicializar la matriz con los códigos de productos, nombres y precios
	matriz_productos(0,0) <- "CAF"    // Código del producto
	matriz_productos(0,1) <- "Café"   // Nombre del producto
	matriz_productos(0,2) <- ConvertirATexto(2100.0)   // Precio del producto
	
	matriz_productos(1,0) <- "CFL"
	matriz_productos(1,1) <- "Café con leche"
	matriz_productos(1,2) <- ConvertirATexto(2900.0)
	
	matriz_productos(2,0) <- "TE"
	matriz_productos(2,1) <- "Té"
	matriz_productos(2,2) <- ConvertirATexto(2000.0)
	
	matriz_productos(3,0) <- "CHO"
	matriz_productos(3,1) <- "Chocolatada"
	matriz_productos(3,2) <- ConvertirATexto(9000.0)
	
	matriz_productos(4,0) <- "TJQ"
	matriz_productos(4,1) <- "Tostado JyQ"
	matriz_productos(4,2) <- ConvertirATexto(4000.0)
	
	matriz_productos(5,0) <- "MED"
	matriz_productos(5,1) <- "Medialunas"
	matriz_productos(5,2) <- ConvertirATexto(1000.0)
	
	matriz_productos(6,0) <- "TOR"
	matriz_productos(6,1) <- "Porción de Torta"
	matriz_productos(6,2) <- ConvertirATexto(5200.0)
	
	matriz_productos(7,0) <- "JUG"
	matriz_productos(7,1) <- "Jugo"
	matriz_productos(7,2) <- ConvertirATexto(2500.0)
	
	matriz_productos(8,0) <- "CD1"
	matriz_productos(8,1) <- "Cafe con leche y 3 Medialunas"
	matriz_productos(8,2) <- ConvertirATexto(4500.0)
	
	matriz_productos(9,0) <- "CD2"
	matriz_productos(9,1) <- "Cafe con leche y 1 Tostado JyQ"
	matriz_productos(9,2) <- ConvertirATexto(6000.0)
FinFuncion

Funcion InicializarStock(codigo, nombre, precio, stock, vencimiento)
	// Inicializar elementos de los vectores
	codigo[0] <- "1"
	nombre[0] <- "Jugo x Litro"
	precio[0] <- 2500.0
	stock[0] <- 200
	vencimiento[0] <- "31/12/2024"
	
	codigo[1] <- "2"
	nombre[1] <- "Leche x Litro"
	precio[1] <- 1200.0
	stock[1] <- 100
	vencimiento[1] <- "31/12/2025"
	
	codigo[2] <- "3"
	nombre[2] <- "Café x Kg"
	precio[2] <- 45000.0
	stock[2] <- 100
	vencimiento[2] <- "31/12/2025"
	
	codigo[3] <- "4"
	nombre[3] <- "Chocolate en polvo por 800g"
	precio[3] <- 7300.0
	stock[3] <- 50
	vencimiento[3] <- "31/12/2026"
	
	codigo[4] <- "5"
	nombre[4] <- "Manteles individuales de Papel"
	precio[4] <- 30.0
	stock[4] <- 2000
	vencimiento[4] <- "31/12/2099"
	
	codigo[5] <- "6"
	nombre[5] <- "Servilletas de Papel"
	precio[5] <- 10.0
	stock[5] <- 10000
	vencimiento[5] <- "31/12/2099"
	
	codigo[6] <- "7"
	nombre[6] <- "Vaso descartable con tapa"
	precio[6] <- 220.0
	stock[6] <- 10000
	vencimiento[6] <- "31/12/2099"
	
	codigo[7] <- "8"
	nombre[7] <- "Medialunas"
	precio[7] <- 900.0
	stock[7] <- 72
	vencimiento[7] <- "20/12/2024"
	
	codigo[8] <- "9"
	nombre[8] <- "Tostado JyQ"
	precio[8] <- 2500.0
	stock[8] <- 50
	vencimiento[8] <- "20/12/2024"
	
	codigo[9] <- "10"
	nombre[9] <- "Porcion de torta"
	precio[9] <- 4000.0
	stock[9] <- 60
	vencimiento[9] <- "20/12/2024"
	
	codigo[10] <- "11"
	nombre[10] <- "Te"
	precio[10] <- 1000.0
	stock[10] <- 1000
	vencimiento[10] <- "31/12/2024"
FinFuncion

// Función para inicializar las mesas
Funcion InicializarMesa(mesas)
    // Inicializar todas las mesas como "disponible"
    Para numeroMesa=0 Hasta 7 Con Paso 1 Hacer
        mesas[numeroMesa] <- "disponible"
    FinPara
FinFuncion

Funcion InicializarCantidades(cantidades Por Referencia, LONG_PRODUCTOS)
    Para i <- 0 Hasta LONG_PRODUCTOS - 1 Hacer
		cantidades[i] <- 0  // Inicializamos todas las cantidades a 0
	FinPara
FinFuncion

Funcion InicializarVentas(ventas_cantidades,ventas_productos,LONG_VENTAS)
	Para i <- 0 Hasta LONG_VENTAS - 1 Hacer
		ventas_cantidades[i] <- 0
		ventas_productos[i] <- ""
	FinPara
FinFuncion

Funcion InicializarProdAcum(productosAcumulados,cantidadesAcumuladas,LONG_PRODUCTOS)
	Para i <- 0 Hasta LONG_PRODUCTOS - 1 Hacer
		productosAcumulados[k] <- ""
		cantidadesAcumuladas[k] <- 0
	FinPara
FinFuncion

Subproceso ReiniciarVenta(cantidades Por Referencia, LONG_PRODUCTOS, totalVenta Por Referencia)
    Para i <- 0 Hasta 9 Hacer
        cantidades[i] <- 0
    Fin Para
	totalVenta <- 0
Fin Subproceso

Subproceso ReiniciarVentaProveedor(ticketCantidad, ticketCodigo, ticketNombre, ticketCosto, ticketSubtotal)
    Para i <- 0 Hasta 99 - 1 Hacer
        ticketCantidad[i] <- 0  // Entero.
        ticketCodigo[i] <- ""  // Cadena.
        ticketNombre[i] <- ""  // Cadena.
        ticketCosto[i] <- 0.0  // Real.
        ticketSubtotal[i] <- 0.0  // Real.
    Fin Para
Fin Subproceso

Funcion InicializarInsumosProveedor(insumos Por Referencia, costo Por Referencia, stockProveedor Por Referencia, minimo Por Referencia)
       
    insumos(0) <- "Jugo x Litro              "
    insumos(1) <- "Leche x Litro             "
    insumos(2) <- "Café x Kg                 "
    insumos(3) <- "Chocolate polvo 800g      "
    insumos(4) <- "Manteles indiv. Papel     "
    insumos(5) <- "Servilletas de Papel      "
    insumos(6) <- "Vaso descart con tapa     "
    insumos(7) <- "Medialunas                "
    insumos(8) <- "Tostado JyQ               "
    insumos(9) <- "Porcion torta             "
    insumos(10) <- "Te                        "
    
    costo(0) <- 2000.0
    costo(1) <- 1500.0
    costo(2) <- 30000.0
    costo(3) <- 10000.0
    costo(4) <- 100.0
    costo(5) <- 150.0
    costo(6) <- 200.0
    costo(7) <- 300.0
    costo(8) <- 1500.0
    costo(9) <- 2000.0
    costo(10) <- 300.0
    
    stockProveedor(0) <- 500
    stockProveedor(1) <- 550
    stockProveedor(2) <- 200
    stockProveedor(3) <- 150
    stockProveedor(4) <- 850
    stockProveedor(5) <- 4000
    stockProveedor(6) <- 1500
    stockProveedor(7) <- 300
    stockProveedor(8) <- 250
    stockProveedor(9) <- 150
    stockProveedor(10) <- 250
    
    minimo(0) <- 50
    minimo(1) <- 50
    minimo(2) <- 30
    minimo(3) <- 30
    minimo(4) <- 200
    minimo(5) <- 400
    minimo(6) <- 500
    minimo(7) <- 100
    minimo(8) <- 100
    minimo(9) <- 100
    minimo(10) <- 50
FinFuncion
///////////////USUARIOS////////////////////////

Funcion validacion_usuario
	
	Definir usuarios, contrasenasUsuarios Como Caracter
	Dimension usuarios[6]
	Dimension contrasenasUsuarios[6]
	
	//Datos de ejemplo
	usuarios[0] = "Enzo"
	usuarios[1] = "Leonardo"
	usuarios[2] = "Edith"
	usuarios[3] = "Seba"
	usuarios[4] = "Marcos"
	usuarios[5] = "Oscar"
	contrasenasUsuarios[0] = "en"
	contrasenasUsuarios[1] = "le"
	contrasenasUsuarios[2] = "ed"
	contrasenasUsuarios[3] = "se"
	contrasenasUsuarios[4] = "ma"
	contrasenasUsuarios[5] = "os"
	
	
	Definir nombreUsuario, contrasena Como Caracter
	Definir i Como Entero
	Definir nombreCajero Como Caracter
	//Solicitar datos de ingreso
	userEncontrado <- Falso  // Bandera para saber si el usuario fue encontrado
	
	Mientras userEncontrado = Falso Hacer
		Escribir "Ingrese el nombre de usuario:"
		Leer nombreUsuario
		
		Para i = 0 Hasta 2 Hacer
			Si nombreUsuario = usuarios[i] Entonces
				userEncontrado <- Verdadero
				Escribir "Usted está registrado: ", usuarios[i]
			FinSi
		FinPara
		
		Si userEncontrado = Falso Entonces
			Escribir "Usuario incorrecto. Intente nuevamente."
		FinSi
	FinMientras
	
	
	userContrasenaEncontrado <- Falso  // Bandera para saber si el usuario fue encontrado
	
	Mientras userContrasenaEncontrado = Falso Hacer
		Escribir "Ingrese la contraseña:"
		Leer contraUsuario
		
		Para i = 0 Hasta 2 Hacer
			Si contraUsuario = contrasenasUsuarios[i] Entonces
				userContrasenaEncontrado <- Verdadero
				Escribir "Contraseña correcta"
				Escribir "Ingrese cualquier tecla"
			FinSi
		FinPara
		
		Si userContrasenaEncontrado = Falso Entonces
			Escribir "Contraseña Incorrecta. Intente nuevamente."
		FinSi
	FinMientras
	
	Para i = 0 Hasta 2 Hacer
		Si nombreUsuario = usuarios[i] y contrasena = contrasenasUsuarios[i] Entonces
			Escribir "                  Bienvenido/a:", usuarios[i]
			nombreCajero <- usuarios[i]
		FinSi
	FinPara
FinFuncion


////////////////////////////////CAFETERIA////////////////////////////////////////////


Funcion Cafeteria(matriz_productos Por Referencia, ventas_fecha Por Referencia, ventas_total Por Referencia, ventas_operacion Por Referencia, ventas_productos Por Referencia, ventas_cantidades Por Referencia, mesas Por Referencia, codigo Por Referencia, nombre Por Referencia, stock Por Referencia, precio Por Referencia, cantidades Por Referencia, vencimiento Por Referencia, numVentas Por Referencia, fechaFormato Por Referencia, nroOperacion Por Referencia,creditoTotal Por Referencia)
	// Declarar variable para la opción seleccionada
    Definir opcionLocal Como Entero
	
    Mientras opcionLocal <> 6 Hacer
        // Mostrar el menú de opciones
        Escribir "=============================================================================================="
        Escribir "|                                       Cafe UTN                                             |"
        Escribir "=============================================================================================="
        Escribir "| 1.Ver Carta         2.Vender        3.Mesas Disponibles       4.Ver Stock        5.Reportes|"
        Escribir "|                                                                                            |"
        Escribir "|                                           6. Salir                                         |"
        Escribir "=============================================================================================="
		
        // Solicitar al usuario que ingrese una opción
        Escribir "Ingrese el número de la opción que desea seleccionar:"
        Leer opcionLocal
		
        // Procesar la opción seleccionada
        Segun opcionLocal Hacer
            1:  
				Esperar Tecla
                Limpiar Pantalla
                Menu(matriz_productos)
                Esperar Tecla
                Limpiar Pantalla
            2:  
				Esperar Tecla
                Limpiar Pantalla
                Vender(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, matriz_productos, mesas, stock, cantidades, numVentas, fechaFormato, nroOperacion)
                Esperar Tecla
                Limpiar Pantalla
            3:  
				Esperar Tecla
                Limpiar Pantalla
                MostrarMesas(mesas)
                Esperar Tecla
                Limpiar Pantalla
            4: 
                Esperar Tecla
                Limpiar Pantalla
				MostrarStock(codigo, nombre, precio, stock, vencimiento)
                Esperar Tecla
                Limpiar Pantalla
            5: 
				Esperar Tecla
                Limpiar Pantalla
                MostrarReporteVentas(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, numVentas, cantidades)
                Esperar Tecla
                Limpiar Pantalla
            6: 
                Escribir "Salir de la opción Restaurante"  // Salir del Restaurante
            De Otro Modo: 
                Escribir "Opción no válida. Por favor, intente de nuevo."
        FinSegun
    Fin Mientras
FinFuncion


Funcion Vender(ventas_fecha Por Referencia, ventas_total Por Referencia, ventas_operacion Por Referencia, ventas_cantidades Por Referencia, ventas_productos Por Referencia, matriz_productos Por Referencia, mesas Por Referencia, stock Por Referencia, cantidades Por Referencia, numVentas Por Referencia, fechaFormato Por Referencia, nroOperacion Por Referencia)
    Definir numeroMesa, cantidad, totalVenta, totalProducto Como Entero
    Definir codigoProducto, seguir Como Caracter
    Definir finalizarVenta, codigoValido, stockSuficiente Como Logico
    Definir indiceProducto, LONG_CANTIDADES Como Entero
    
    LONG_CANTIDADES <- 10
    totalVenta <- 0
    finalizarVenta <- Falso
  //  nroOperacion <- nroOperacion + 1  // Incrementar el número de operación
    
    // Verificar que LONG_CANTIDADES sea válido
    Si LONG_CANTIDADES <= 0 Entonces
        Escribir "Error crítico: LONG_CANTIDADES no es válido. No se puede continuar."
	FinSi

// Seleccionar mesa disponible
numeroMesa <- SeleccionarMesaDisponible(mesas)

Mientras No finalizarVenta Hacer
	// Validación del código del producto
	codigoValido <- Falso
	Mientras No codigoValido Hacer
		Escribir "Ingresa el código del producto:"
		Menu(matriz_productos)
		Leer codigoProducto
		VerificarCódigoProducto(matriz_productos, codigoProducto, indiceProducto, codigoValido)
		Si No codigoValido Entonces
			Escribir "Producto no encontrado. Por favor, ingresa un código válido."
		FinSi
	FinMientras
	
	// Solicitar cantidad y verificar stock
	stockSuficiente <- Falso
	Mientras No stockSuficiente Hacer
		Escribir "Ingrese la cantidad que desea comprar: "
		Leer cantidad
		VerificarStock(indiceProducto, cantidad, stock, stockSuficiente)
		Si No stockSuficiente Entonces
			Escribir "No se puede completar la venta por falta de stock."
		FinSi
	FinMientras
	
	// Calcular total del producto y actualizar datos
	CalcularTotalProducto(matriz_productos, indiceProducto, cantidad, totalProducto)
	totalVenta <- totalVenta + totalProducto
	cantidades[indiceProducto] <- cantidades[indiceProducto] + cantidad
	ActualizarStock(indiceProducto, cantidad, stock)
	Escribir "Total a pagar por ", cantidad, " unidades: $", totalProducto
	
	// Preguntar si desea agregar otro producto
	Escribir "¿Deseas agregar otro producto? (S/N)"
	Leer seguir
	Si seguir = "N" o seguir = "n" Entonces
		finalizarVenta <- Verdadero
		Esperar Tecla
		Limpiar Pantalla
		Escribir "Generando ticket de venta..."
		Esperar Tecla
		Limpiar Pantalla
		GenerarTicketVenta(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, numeroMesa, matriz_productos, cantidades)
		GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades, matriz_productos,numVentas, fechaFormato,nroOperacion)
		// Reiniciar datos para la siguiente venta
		//Escribir "Reiniciando datos de la venta..."
		ReiniciarVenta(cantidades, LONG_CANTIDADES, totalVenta)
	FinSi
FinMientras
FinFuncion

Funcion TazaDeCafe
	
	Escribir "                              (  )   (   )  )"
	Escribir "                               ) (   )  (  ("
	Escribir "                               ( )  (    ) )"
	Escribir "                               _____________"
	Escribir "                               <_____________> ___"
	Escribir "                              |             |/ _ \\"
	Escribir "                              |               | | |"
	Escribir "                              |               |_| |"
	Escribir "                           ___|             |\\___/"
	Escribir "                         /    \\___________/    \\"
	Escribir "                          \\_____________________/"
	
	// Espacio en blanco entre la taza y el texto
	Escribir ""
	Escribir ""
	
	Escribir "                                   _         _    _  _______  _    _ "
	Escribir "          ____            __     /_/        | |  | | __   __ | \\ | |" 
	Escribir "         / ___|   __ _   / _|   ___         | |  | |   | |   |  \\| |"
	Escribir "        | |      / _` | | |_   / _ \\       | |  | |   | |   | . `  |"
	Escribir "        | |___  | (_| | |  _| |  __/        | |__| |   | |   | |\\  |"
	Escribir "         \\____| \\___| |_|    \\___|       \\_____/   |_|   |_| \\_|"
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "                             Ingrese cualquier tecla"
FinFuncion

Funcion Menu(matriz_productos)
	// Definir la matriz para almacenar códigos, nombres y precios
	Definir productoFormateado,precioFormateado, linea Como Caracter
	Definir i,j,espacioCodproducto, espacioProducto,espacioPrecio Como Entero
	
	// Dibujar el menú de la cafetería
	Escribir "=============================================================================================="         
	Escribir "|                                      Menú  Café UTN                                        |"
	Escribir "=============================================================================================="
	Escribir "|         CodProducto     | Producto                         | Precio                        |"
	Escribir "----------------------------------------------------------------------------------------------"
	Escribir "|   CAFÉS                                                                                    |"
	Escribir "----------------------------------------------------------------------------------------------"
	Para i <- 0 Hasta 3 Con Paso 1 Hacer
		// Formatear la cadena del producto y el precio para asegurar alineación
		codproductoFormateado <- matriz_productos(i, 0)
		productoFormateado <- matriz_productos(i, 1)
		precioFormateado <- Concatenar("$",matriz_productos(i, 2))
		
		// Ajustar el espacio del producto
		espacioCodproducto <- 25 - Longitud(codproductoFormateado)
		espacioProducto <- 35 - Longitud(productoFormateado)
		espacioPrecio <- 28 - Longitud(precioFormateado)
		
		// Crear la línea del menú
		linea <- "|" + codproductoFormateado
		Para j <- 1 Hasta espacioCodproducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "|" + productoFormateado
		Para j <- 1 Hasta espacioProducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "| " + precioFormateado
		Para j <- 1 Hasta espacioPrecio Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + " |"
		Escribir linea
	FinPara
	
	Escribir "----------------------------------------------------------------------------------------------"
	Escribir "|   PARA ACOMPAÑAR EL CAFÉ                                                                   |"
	Escribir "----------------------------------------------------------------------------------------------"
	Para i <- 4 Hasta 7 Con Paso 1 Hacer
		// Formatear la cadena del producto y el precio para asegurar alineación
		codproductoFormateado <- matriz_productos(i, 0)
		productoFormateado <- matriz_productos(i, 1)
		precioFormateado <- Concatenar("$",matriz_productos(i, 2))
		
		// Ajustar el espacio del producto
		espacioCodproducto <- 25 - Longitud(codproductoFormateado)
		espacioProducto <- 35 - Longitud(productoFormateado)
		espacioPrecio <- 28 - Longitud(precioFormateado)
		
		// Crear la línea del menú
		linea <- "|" + codproductoFormateado
		Para j <- 1 Hasta espacioCodproducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "|" + productoFormateado
		Para j <- 1 Hasta espacioProducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "| " + precioFormateado
		Para j <- 1 Hasta espacioPrecio Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + " |"
		Escribir linea
	FinPara
	
	Escribir "----------------------------------------------------------------------------------------------"
	Escribir "|   COMBOS DESAYUNOS                                                                         |"
	Escribir "----------------------------------------------------------------------------------------------"
	Para i <- 8 Hasta 9 Con Paso 1 Hacer
		// Formatear la cadena del producto y el precio para asegurar alineación
		codproductoFormateado <- matriz_productos[i, 0]
		productoFormateado <- matriz_productos[i, 1]
		precioFormateado <- Concatenar("$",matriz_productos[i, 2])
		
		// Ajustar el espacio del producto
		espacioCodproducto <- 25 - Longitud(codproductoFormateado)
		espacioProducto <- 35 - Longitud(productoFormateado)
		espacioPrecio <- 28 - Longitud(precioFormateado)
		
		// Crear la línea del menú
		linea <- "|" + codproductoFormateado
		Para j <- 1 Hasta espacioCodproducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "|" + productoFormateado
		Para j <- 1 Hasta espacioProducto Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + "| " + precioFormateado
		Para j <- 1 Hasta espacioPrecio Hacer
			linea <- linea + " "
		FinPara
		linea <- linea + " |"
		// Imprimir la línea del menú
		Escribir linea
	FinPara
	
	Escribir "=============================================================================================="
FinFuncion


// Función que muestra gráficamente las mesas
Funcion MostrarMesas(mesas)
    Escribir "              ESTADO DE LAS MESAS:"
    Escribir ""
	
    // Primera fila (Mesas 1 a 4)
    Escribir "      +---+     +---+     +---+     +---+"
    Escribir "      ", VerEstadoMesa(mesas[0]), "     ", VerEstadoMesa(mesas[1]), "     ", VerEstadoMesa(mesas[2]), "     ", VerEstadoMesa(mesas[3])
    Escribir "      +---+     +---+     +---+     +---+"
    Escribir "     Mesa 1     Mesa 2     Mesa 3     Mesa 4"
    Escribir ""
	
    // Segunda fila (Mesas 5 y 6)
    Escribir " +---+                                   +---+"
    Escribir " ", VerEstadoMesa(mesas[4]), "                                   ", VerEstadoMesa(mesas[5]), "  "
    Escribir " +---+                                   +---+"
    Escribir "Mesa 5                                   Mesa 6"
    Escribir ""
	
    // Tercera fila (Mesas 7 a 10)
    Escribir "      +---+     +---+     +---+     +---+"
    Escribir "      ", VerEstadoMesa(mesas[6]), "     ", VerEstadoMesa(mesas[7]), "     ", VerEstadoMesa(mesas[8]), "     ", VerEstadoMesa(mesas[9])
    Escribir "      +---+     +---+     +---+     +---+"
    Escribir "     Mesa 7    Mesa 8     Mesa 9    Mesa 10"
    Escribir ""
FinFuncion

// Función auxiliar para verificar el estado de una mesa
Funcion estado <- VerEstadoMesa(mesa)
    Si mesa = "ocupada" Entonces
        estado <- "| X |"
    Sino
        estado <- "|   |"
    FinSi
FinFuncion

SubProceso VerificarCódigoProducto(matriz_productos Por Referencia, codigoProducto Por Referencia, indiceProducto Por Referencia, codigoValido Por Referencia)
    Definir i Como Entero
    indiceProducto <- -1
    codigoValido <- Falso
    Para i <- 0 Hasta 9 Hacer
        Si matriz_productos[i, 0] = codigoProducto Entonces
            indiceProducto <- i
            codigoValido <- Verdadero
        FinSi
    FinPara
FinSubProceso

SubProceso VerificarStock(indiceProducto Por Referencia, cantidad Por Referencia, stock Por Referencia, stockSuficiente Por Referencia)
    stockSuficiente <- Verdadero
    Segun indiceProducto Hacer
        0: // Café
            Si stock[2] < (cantidad * 0.1) o stock[4] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
        1: // Café con leche
            Si stock[1] < (cantidad * 0.1) o stock[2] < (cantidad * 0.1) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
		3: // Chocolatada
            Si stock[1] < (cantidad * 0.2) o stock[3] < (cantidad * 0.05) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
        4: // Tostado Jamón y queso
            Si stock[8] < (cantidad * 2.0) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
        5: // Medialunas
            Si stock[7] < (cantidad * 1.0) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
        6: // Porción de Torta
            Si stock[9] < (cantidad * 1.0) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
        7: // Jugo
            Si stock[0] < (cantidad * 0.25) o stock[5] < (cantidad * 2.0) Entonces
                stockSuficiente <- Falso
            FinSi
    FinSegun
FinSubProceso

SubProceso CalcularTotalProducto(matriz_productos Por Referencia, indiceProducto Por Referencia, cantidad Por Referencia, totalProducto Por Referencia)
    Definir precioProducto Como Real
    precioProducto <- ConvertirANumero(matriz_productos[indiceProducto, 2])
    totalProducto <- precioProducto * cantidad
FinSubProceso

// Función para seleccionar una mesa disponible
Funcion numeroMesa <- SeleccionarMesaDisponible(mesas)
    Definir numeroMesa Como Entero
    Definir mesaValida Como Logico
    mesaValida <- Falso  // Inicialmente asumimos que la mesa no es válida
	
    Mientras No mesaValida Hacer
        Escribir "Selecciona una mesa disponible (1 a 10):"
        Leer numeroMesa
		
        // Verificar que el número ingresado esté en el rango correcto
        Si numeroMesa < 1 o numeroMesa > 10 Entonces
            Escribir "Número de mesa no válido. Debe estar entre 1 y 10."
        Sino
            // Verificar si la mesa seleccionada está ocupada
            Si mesas[numeroMesa - 1] = "ocupada" Entonces
                Escribir "La mesa ", numeroMesa, " está ocupada. Selecciona otra mesa."
            Sino
                Escribir "Mesa ", numeroMesa, " seleccionada con éxito."
                mesas[numeroMesa - 1] <- "ocupada"  // Marcar la mesa como ocupada
                mesaValida <- Verdadero  // La mesa es válida y disponible
            FinSi
        FinSi
    FinMientras
	
FinFuncion

  
SubProceso ActualizarStock(indiceProducto Por Referencia, cantidad Por Referencia, stock Por Referencia)
    Segun indiceProducto Hacer
        0: // Café
            stock[2] <- stock[2] - (cantidad * 0.1)
            stock[4] <- stock[4] - (cantidad * 2.0)
        1: // Café con leche
            stock[1] <- stock[1] - (cantidad * 0.1)
            stock[2] <- stock[2] - (cantidad * 0.1)
            stock[5] <- stock[5] - (cantidad * 2.0)
		2: // Té
			stock[10] <- stock[10] - (cantidad * 1.0)
			stock[5] <- stock[5] - (cantidad *2.0)
		3: // Chocolatada
			stock[1] <- stock[1] - (cantidad *0.2)
			stock[3] <- stock[3] - (cantidad *0.05)
			stock[5] <- stock[5] - (cantidad *2.0)
		4: // Tostado Jamón y queso
			stock[8] <- stock[8] - (cantidad *2.0)
			stock[5) <- stock[5] - (cantidad *2.0)
		5: // Medialunas
			stock[7] <- stock[7] - (cantidad *1.0)
			stock[5] <- stock[5] - (cantidad *2.0)
		6: // Porción de Torta
			stock[9] <- stock[9] - (cantidad *1.0)
			stock[5] <- stock[5] - (cantidad *2.0)
		7: // Jugo
			stock[0] <- stocK[0] - (cantidad *0.25)
			stock[5] <- stock[5] - (cantidad *2.0)
	Fin Segun
FinSubProceso

Funcion MostrarStock(codigo, nombre, precio, stock, vencimiento)
    Definir i Como Entero
    Definir codigoAjustado, nombreAjustado, precioAjustado, stockAjustado, vencimientoAjustado Como Cadena
    
    Escribir "=================================================================================="
    Escribir "                              Stock Actualizado Cafe UTN"
    Escribir "=================================================================================="
    Escribir "| Código | Nombre del Producto                | Precio  | Stock  | Vencimiento    |"
    Escribir "----------------------------------------------------------------------------------"
    
    Para i <- 0 Hasta 10 Hacer
        codigoAjustado <- codigo[i] + Subcadena("       ", Longitud(codigo[i]) + 1, 7)
        nombreAjustado <- nombre[i] + Subcadena("                                   ", Longitud(nombre[i]) + 1, 35)
        precioAjustado <- "$" + ConvertirATexto(precio[i]) + Subcadena("       ", Longitud(ConvertirATexto(precio[i])) + 1, 7)
        stockAjustado <- ConvertirATexto(stock[i]) + Subcadena("       ", Longitud(ConvertirATexto(stock[i])) + 1, 6)
        vencimientoAjustado <- vencimiento[i] + Subcadena("               ", Longitud(vencimiento[i]) + 1, 15)
        
        Escribir "| ", codigoAjustado, " | ", nombreAjustado, " | ", precioAjustado, " | ", stockAjustado, " | ", vencimientoAjustado, " |"
    FinPara
    
    Escribir "=================================================================================="
FinFuncion

// Función para convertir los segundos en formato HH:MM:SS
Funcion horaFormato <- ConvertirHora(horaFormato)
	Definir horas, minutos, segundos Como Entero
	
    // Extraer horas, minutos y segundos
    horas = TRUNC(HoraActual() / 10000)
    minutos = TRUNC(HoraActual() / 100) MOD 100
    segundos = HoraActual() MOD 100
    
	// Convertir horas, minutos y segundos a texto con dos dígitos
    Si horas < 10 Entonces
        horaFormato = "0" + ConvertirATexto(horas) + ":"
    Sino
        horaFormato = ConvertirATexto(horas) + ":"
    FinSi
    
    Si minutos < 10 Entonces
        horaFormato = horaFormato + "0" + ConvertirATexto(minutos) + ":"
    Sino
        horaFormato = horaFormato + ConvertirATexto(minutos) + ":"
    FinSi
    
    Si segundos < 10 Entonces
        horaFormato = horaFormato + "0" + ConvertirATexto(segundos)
    Sino
        horaFormato = horaFormato + ConvertirATexto(segundos)
    FinSi
    
FinFuncion

Funcion fechaFormato <- ConvertirFecha(fechaFormato)
	Definir anio, mes, dia Como Entero
   	
    // Extraer año, mes y dia
    anio = TRUNC(FechaActual() / 10000)
    mes = TRUNC(FechaActual() / 100) MOD 100
    dia = FechaActual() MOD 100
    
	// Convertir mes y dia a texto con dos dígitos
	
    Si dia < 10 Entonces
        fechaFormato = fechaFormato + "0" + ConvertirATexto(dia)+ "/"
    Sino
        fechaFormato = fechaFormato + ConvertirATexto(dia)+ "/"
    FinSi
	Si mes < 10 Entonces
        fechaFormato = fechaFormato + "0" + ConvertirATexto(mes) + "/"
    Sino
        fechaFormato = fechaFormato + ConvertirATexto(mes) + "/"
    FinSi
	Si anio > 10 Entonces
	    fechaFormato =fechaFormato + ConvertirATexto(anio)   
    FinSi
FinFuncion

// Función principal para generar el ticket de venta
Funcion GenerarTicketVenta(ventas_fecha Por Referencia, ventas_total Por Referencia, ventas_operacion Por Referencia,ventas_cantidades Por Referencia, ventas_productos Por Referencia, numeroMesa, matriz_productos, cantidades Por Referencia)
    Definir totalFinal, subtotal, iva Como Real
    Definir fechaFormato, horaFormato Como Cadena
    Definir nroOperacion Como Entero
    
    // Generar número de operación aleatorio de 6 dígitos
    nroOperacion <- Aleatorio(100000, 999999)

    // Obtener la hora actual en formato HH:MM:SS
    horaFormato = ConvertirHora(horaFormato)  
	fechaFormato= ConvertirFecha(fechaFormato)  
	
    Escribir "=========================================================="
    Escribir "                    *** Café UTN ***"
    Escribir "=========================================================="
    Escribir "Fecha: ", fechaFormato "                   Hora: ", horaFormato
    Escribir "Mesa: ", numeroMesa, "                     Nro. Operacion: ", nroOperacion
    Escribir "----------------------------------------------------------"
    Escribir "CANT.     DESCRIPCIÓN                P/U      TOTAL"
    Escribir "----------------------------------------------------------"
	// Verificar que el índice 'i' esté dentro del rango válido
	subtotal <- 0
	totalVenta <- 0
	Para i <- 0 Hasta 9 Hacer
        Si cantidades[i] > 0 Entonces
			// Calcula el total sin formatear
			cantidadTexto <- ConvertirATexto(cantidades[i])
			productoTexto <- matriz_productos[i, 1]
			precioUnitario <- ConvertirANumero(matriz_productos[i, 2])
			totalProducto <- precioUnitario * cantidades[i]
			Subtotal<-subtotal + totalProducto
			
			// Genera las cadenas para el precio y el total con el símbolo $
			precioTexto <- "$" + ConvertirATexto(precioUnitario)
			totalTexto <- "$" + ConvertirATexto(totalProducto)
			
			// Ajusta el texto para alineación en el ticket
			cantidadAjustada <- cantidadTexto + Subcadena("          ", Longitud(cantidadTexto) + 1, 10)
			productoAjustado <- productoTexto + Subcadena("                            ", Longitud(productoTexto) + 1, 28)
			precioAjustado <- precioTexto + Subcadena("          ", Longitud(precioTexto) + 1, 10)
			totalAjustado <- totalTexto + Subcadena("               ", Longitud(totalTexto) + 1, 15)
			
			// Imprime la línea formateada en el ticket
			Escribir cantidadAjustada, productoAjustado, precioAjustado, totalAjustado
		FinSi
    FinPara
    // Calcular y mostrar subtotal, IVA y total
	iva <- subtotal * 0.21
    totalVenta <- subtotal + iva
    Escribir "-----------------------------------------------------------"
    Escribir "                               SUBTOTAL:     $", subtotal
	Escribir "                               IVA (21%):    $", iva
	Escribir "-----------------------------------------------------------"
    Escribir "                               TOTAL:        $", totalVenta
    Escribir "==========================================================="
    Escribir "     ¡Gracias por su compra! Que tenga un buen día."
    Escribir "==========================================================="
FinFuncion

// Guardar la venta
Funcion GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades Por Referencia, matriz_productos Por Referencia,numVentas Por Referencia, fechaFormato Por Referencia,nroOperacion Por Referencia)
    LONG_VENTAS <- 100
    LONG_PRODUCTOS <- 10
    Definir totalVenta, ventaConIva Como Real
    totalVenta <- 0
	
    Si numVentas < 0 Entonces
        Escribir "Error: numVentas no está inicializado correctamente."
	FinSi
	
    Si numVentas >= LONG_VENTAS - 1 Entonces
        Escribir "Error: No hay espacio para más ventas."
    Sino
        // Guardar productos y calcular total
        Para i <- 0 Hasta LONG_PRODUCTOS - 1 Hacer
            Si cantidades[i] > 0 Entonces
                //Escribir "Guardando producto: ", matriz_productos[i, 1], " - Cantidad: ", cantidades[i]
                ventas_productos[numVentas * LONG_PRODUCTOS + i] <- matriz_productos[i, 1]
                ventas_cantidades[numVentas * LONG_PRODUCTOS + i] <- cantidades[i]
                totalVenta <- totalVenta + (cantidades[i] * ConvertirANumero(matriz_productos[i, 2]))
            FinSi
        FinPara
		
        // Guardar venta solo si hay productos
        Si totalVenta > 0 Entonces
            ventaConIva <- totalVenta + totalVenta * 0.21
            ventas_total[numVentas] <- ventaConIva
            ventas_fecha[numVentas] <- ConvertirFecha(fechaFormato)
            ventas_operacion[numVentas] <- nroOperacion
            // Incrementar número de ventas
            numVentas <- numVentas + 1
		FinSi
    FinSi
FinFuncion

Funcion MostrarReporteVentas(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, numVentas,cantidades)
	Definir opcion como entero
	Mientras opcion <> 4 Hacer
		Esperar Tecla
		Limpiar Pantalla
		// Mostrar el menú de opciones
		Escribir "=============================================================================================="               
		Escribir "|                                      REPORTES DE VENTAS                                    |"
		Escribir "=============================================================================================="
		Escribir "| 1.Ventas Por Fecha                2.Productos Vendidos             3. Detallados de Venta  |"
		Escribir "|                                                                                            |"
		Escribir "|                                           4. Salir                                         |"
		Escribir "=============================================================================================="
		
		// Solicitar al usuario que ingrese una opción
		Escribir "Ingrese el número de la opción que desea seleccionar:"
		Leer opcion
		
		// Procesar la opción seleccionada
		Segun opcion Hacer
			1:  
				Esperar Tecla
				Limpiar Pantalla
				GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades, matriz_productos,numVentas, fechaFormato,nroOperacion)
				ReporteVentasPorFecha(ventas_fecha, ventas_total, numVentas, fechaFormato)
				Esperar Tecla
				Limpiar Pantalla
			2:  
				Esperar Tecla
				Limpiar Pantalla
				GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades, matriz_productos,numVentas, fechaFormato,nroOperacion)
				ReporteProductosVendidos(ventas_productos, ventas_cantidades, num_ventas)
				Esperar Tecla
				Limpiar Pantalla
			3:  
				Esperar Tecla
				Limpiar Pantalla
				GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades, matriz_productos,numVentas, fechaFormato,nroOperacion)
				ReporteDetalladoVentas(ventas_fecha, ventas_total, ventas_productos, ventas_cantidades, numVentas)
				Esperar Tecla
				Limpiar Pantalla
				
			4: 
				Escribir "Salir de Reportes"  // Salir de Reportes
			De Otro Modo: 
				Escribir "Opción no válida. Por favor, intente de nuevo."
		FinSegun
		
	Fin Mientras
FinFuncion

	
Funcion ReporteVentasPorFecha(ventas_fecha, ventas_total, numVentas Por Referencia, fechaFormato)
    Definir i Como Entero
    Definir totalVentasFecha Como Real
    totalVentasFecha <- 0
    
    Escribir "==================================================================="
    Escribir "            Reporte de Ventas para la Fecha: ", ConvertirFecha(fechaFormato)
    Escribir "==================================================================="
    Escribir "        Venta #    |                    Total                      "
    Escribir "-------------------------------------------------------------------"
    
    Si numVentas <= 0 Entonces
        Escribir "No hay ventas registradas."
    SiNo
        Para i <- 0 Hasta numVentas - 1 Hacer
            Si ventas_fecha[i] = ConvertirFecha(fechaFormato) Entonces
                Escribir "          #", i + 1, "       |                     $", ventas_total[i], "                  "
                totalVentasFecha <- totalVentasFecha + ventas_total[i]
            FinSi
        FinPara
    FinSi
    
    Si totalVentasFecha = 0 Entonces
        Escribir "No hay ventas registradas para esta fecha."
    SiNo
        Escribir "==================================================================="
        Escribir "Total de Ventas para esta fecha:         $", totalVentasFecha
    FinSi
    Escribir "==================================================================="
FinFuncion

Funcion ReporteDetalladoVentas(ventas_fecha, ventas_total, ventas_productos, ventas_cantidades, numVentas Por Referencia)
    Definir i, j Como Entero
    
    Escribir "==================================================================="
    Escribir "                      Reporte Detallado de Ventas                 "
    Escribir "==================================================================="
    Escribir "| Ventas #    |   Fecha de Venta           |       Total          |"
    Escribir "==================================================================="
    
    Si numVentas = 0 Entonces
        Escribir "No hay ventas registradas."
    SiNo
        Para i <- 0 Hasta numVentas - 1 Hacer
            Escribir "|      #", i + 1, "     |    ", ventas_fecha[i], "              | $", ventas_total[i], "               |"
            Escribir "-------------------------------------------------------------------"
            Escribir "| Productos:"
            Para j <- 0 Hasta 9 Hacer  // Ajustar el límite del bucle
                Si ventas_cantidades[i * 10 + j] > 0 Entonces
                    Escribir "| ", ventas_productos[i * 10 + j], " | Cantidad: ", ventas_cantidades[i * 10 + j]
                FinSi
            FinPara
            Escribir "==================================================================="
        FinPara
    FinSi
FinFuncion

Funcion ReporteProductosVendidos(ventas_productos, ventas_cantidades, numVentas Por Referencia)
    Definir i, j, k Como Entero
    Definir productoEncontrado Como Logico
    Dimension productosAcumulados[10] 
    Dimension cantidadesAcumuladas[10]
    Definir totalProductosAcumulados Como Entero
    
    totalProductosAcumulados <- 0
    
    Escribir "==================================================================="
    Escribir "              Reporte de Productos Vendidos " , ConvertirFecha(fechaFormato)    
    Escribir "==================================================================="
    Escribir "        Producto                    |    Cantidad Vendida                      "
	Escribir "-------------------------------------------------------------------"
    Para i <- 0 Hasta 9 Hacer
        Para j <- 0 Hasta 9 Hacer
            Si ventas_cantidades[i * 10 + j] > 0 Entonces
                productoEncontrado <- Falso
                Para k <- 0 Hasta 9 Hacer
                    Si productosAcumulados[k] = ventas_productos[i * 10 + j] Entonces
                        cantidadesAcumuladas[k] <- cantidadesAcumuladas[k] + ventas_cantidades[i * 10 + j]
                        productoEncontrado <- Verdadero
                    FinSi
                FinPara
                Si No productoEncontrado Entonces
                    productosAcumulados[totalProductosAcumulados] <- ventas_productos[i * 10 + j]
                    cantidadesAcumuladas[totalProductosAcumulados] <- ventas_cantidades[i * 10 + j]
                    totalProductosAcumulados <- totalProductosAcumulados + 1
                FinSi
            FinSi
        FinPara
    FinPara
    
    Si totalProductosAcumulados = 0 Entonces
        Escribir "No hay productos vendidos registrados."
    SiNo
        Para i <- 0 Hasta totalProductosAcumulados - 1 Hacer
			// Calcula el total sin formatear
			cantidadTexto <- ConvertirATexto(cantidadesAcumuladas[i])
			productoTexto <- productosAcumulados[i]
			// Ajusta el texto para alineación en el ticket
			cantidadAjustada <- cantidadTexto + Subcadena("       ", Longitud(cantidadTexto) + 1, 15)
			productoAjustado <- productoTexto + Subcadena("                                     |      ", Longitud(productoTexto) + 1, 50)
            //Escribir "Producto: ", productosAcumulados[i], "           | Cantidad: ", cantidadesAcumuladas[i]
			Escribir productoAjustado,cantidadAjustada
        FinPara
    FinSi
    
    Escribir "==================================================================="
FinFuncion

///////////////JUEGOS////////////////////////////

Funcion creditoGanado <- Cliente(creditoTotal Por Referencia,matriz_productos Por Referencia,stock Por Referencia,cantidades Por Referencia,ventas_fecha Por Referencia,ventas_total Por Referencia,ventas_operacion Por Referencia,ventas_productos Por Referencia,ventas_cantidades Por Referencia,numVentas Por Referencia, fechaFormato Por Referencia, nroOperacion Por Referencia,creditoTotal Por Referencia)

    Definir seguir Como Caracter
    Definir op, creditoGanado Como Entero
    
    seguir <- "S" // Inicializar para entrar al bucle
    Mientras seguir = "S" Hacer
		Escribir "=============================================================================================="               
		Escribir "|                                      CLIENTES                                              |"
		Escribir "=============================================================================================="
		Escribir "| 1.Jugar X Credito            2.Ver Credito Disponible              3.Realizar Compra       |"
		Escribir "|                                                                                            |"
		Escribir "|                                           4. Salir                                         |"
		Escribir "=============================================================================================="
		
		 
        Escribir "Ingrese el número de la opción que desea seleccionar:"
        Leer op
        Esperar Tecla
		Limpiar Pantalla
        Segun op Hacer
            1: 
                // Recibe como argumento el credito y guarda el valor de lo que se ganó
                JugarXCredito(creditoTotal,creditoGanado) 
                   
                Escribir "¿Quieres seguir jugando? (S para seguir, cualquier otra tecla para salir)"
                Leer seguir
                Si seguir <> "S" Entonces
                    // Vuelve al menú principal
                    seguir <- "S" // Reinicia para que vuelva a mostrar el menú
                FinSi
				Esperar Tecla
				Limpiar Pantalla
            2: //creditoTotal <- creditoGanado + creditoTotal
               CreditoDisponible(creditoTotal) 
				Esperar Tecla
				Limpiar Pantalla
			3: 
				CompraCliente(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, matriz_productos,stock, cantidades, numVentas, fechaFormato, nroOperacion,creditoTotal)
				Esperar Tecla
				Limpiar Pantalla
			4: 
				Escribir "Salir de la opción Cliente"  
                Escribir "Tu crédito total es: $", creditoTotal  // Mostrar crédito total al salir
                seguir <- "N"  // Cambiar para salir del bucle
            De Otro Modo: 				
                Escribir "Opción no válida. Por favor, intente de nuevo."
        Fin Segun
	Fin Mientras
Fin Funcion

Funcion JugarXCredito(creditoTotal Por Referencia, creditoGanado Por Referencia)
    creditoGanado <- 0
	// Inicializar para entrar al bucle
    Mientras juego <>4 Hacer
		// Al final de cada juego, calculas el crédito ganado:
		Escribir "=============================================================================================="               
		Escribir "|                                      JUGAR X CREDITO                                       |"
		Escribir "=============================================================================================="
		Escribir "| 1.Numero al Azar            2.Piedra, papel o tijera              3.Suma de dados          |"
		Escribir "|                                                                                            |"
		Escribir "|                                           4. Salir                                         |"
		Escribir "=============================================================================================="
		
		Escribir "Elige un juego:"
		Leer juego
		
		Segun juego Hacer
			1: 
				NumeroalAzar(creditoGanado,creditoTotal)
				Esperar 500 milisegundos
				Limpiar Pantalla
			2: 
				PiedraPapeloTijera(creditoGanado,creditoTotal)
				Esperar 500 milisegundos
				Limpiar Pantalla
			3:
				SumadeDados(creditoGanado,creditoTotal)
				Esperar 500 milisegundos
				Limpiar Pantalla
			4:
				Escribir "Salir"
			De Otro Modo:
				Escribir "Opción no válida"
		Fin Segun
	FinMientras
	
	Escribir "Tiene un crédito total de: $", creditoTotal
Fin Funcion

Funcion Adivina
	Escribir"                 ___  ___   ____  __ __  ____  ____    ___ "
	Escribir"                /    |   \  |   ||  |  ||    ||    \ /    |"
	Escribir"               |  o  |    \  | | |  |  | |  | |  _  |  o  |"
	Escribir"               |     |  D  | | | |  |  | |  | |  |  |     |"
	Escribir"               |  _  |     | | | |  :  | |  | |  |  |  _  |"
	Escribir"               |  |  |     | | |  \   /  |  | |  |  |  |  |"
	Escribir"               |__|__|_____||____| \_/  |____||__|__|__|__|"
FinFuncion

Funcion el
	Escribir"                              ___  _"     
	Escribir"                             /   _]| |"    
	Escribir"                            /   [_ | |"    
	Escribir"                           |    _]| |___ "
	Escribir"                           |   [_ |     |"
	Escribir"                           |     ||     |"
	Escribir"                           |_____||_____|"
	
FinFuncion

Funcion numer
	Escribir"                  ____   __ __ ___ ___   ___   ____   ___"  
	Escribir"                 |    \ |  | ||   |   | /  _] |    \ /   \ "
	Escribir"                 |  _  ||  | || _   _ |/   [_ |  D  )     |"
	Escribir"                 |  |  ||  | ||  \_/  ||    _]|    /|  O  |"
	Escribir"                 |  |  ||  : ||   |   ||   [_ |    \|     |"
	Escribir"                 |  |  ||    ||   |   ||     ||  .  \     |"
	Escribir"                 |__|__|\__,_||___|___||_____||__|\_|\___/ "
	
FinFuncion

Funcion AEN1
	Escribir"      __    "
	Escribir"     /  |   "
	Escribir"     `| |   "
	Escribir"      | |   "
	Escribir"     _| |_  "
	Escribir"     \___/  "
	
	
FinFuncion

Funcion AEN2
	Escribir"      ___    "  
	Escribir"     |__ \   " 
    Escribir"        ) |  "
	Escribir"       / /   "
	Escribir"      / /_   "
	Escribir"     |____|  "
	
	
FinFuncion

Funcion AEN3
	Escribir"     _____   " 
	Escribir"     \__  \  "
	Escribir"       /  /  "
	Escribir"      _\  \  "
	Escribir"     /____/  "
FinFuncion

Funcion AEN4
	Escribir"     _  _    "  
	Escribir"    | || |   "  
	Escribir"    | || |_  "
	Escribir"    |__   _| "
    Escribir"       | |   "  
    Escribir"       |_|   " 
	
	
FinFuncion

Funcion AEN5
	Escribir"     _____  " 
	Escribir"    | ____| "
	Escribir"    | |__   " 
	Escribir"    |___ \  "
	Escribir"    ___)  | "
	Escribir"    |____/  "
FinFuncion
Funcion NumeroalAzar(creditoGanado Por Referencia,creditoTotal Por Referencia)
    Limpiar Pantalla
	Para ii<-3 con paso -1 hasta 0 hacer
		Adivina
		el
		numer
		Subrayado
		Escribir "                              REGLAMENTO       "
		Subrayado
		Escribir "         En este juego, deberás ingresar un número."
		Escribir "Si la máquina elige el mismo número que tú, ganarás un premio."
		Escribir " "
		Escribir "Estás listo/a?   ",ii
		Si ii = 0 Entonces
			Escribir "YA!!"
			Escribir" "
			Escribir"Presione cualquier tecla para continuar."
			Esperar tecla
		FinSi
		esperar 1 Segundos
		limpiar pantalla
		
		
		
	FinPara
	Escribir "             Ingrese un número del 1 al 5:"	
	Leer jugador
	
	Escribir "Elegiste el número: "
	Segun jugador Hacer
		1: 
			AEN1
		2: 
			AEN2
		3: 
			AEN3
		4: 
			AEN4
		5: 
			AEN5
		De Otro Modo:
			Limpiar Pantalla
			Subrayado
			Escribir "                   ¡NÚMERO NO VÀLIDO!       "
			Subrayado
			Escribir "           El número ingresado es incorrecto."
			Escribir "     Por favor, ingrese un número del 1 al 5:"
			Leer jugador
	FinSegun
	Esperar 2 segundo
	
    computadora <- Aleatorio(1, 5)
	Escribir " "
	Escribir "La computadora eligió el número: ", computadora
	Segun computadora Hacer
		1: 
			AEN1
		2: 
			AEN2
		3: 
			AEN3
		4: 
			AEN4
		5: 
			AEN5
		De Otro Modo:
			Escribir "El número ingresado es incorrecto."
			Escribir "Por favor, ingrese un número del 1 al 5."
	FinSegun
	Esperar 2 segundos
    Si jugador = computadora Entonces
        Limpiar Pantalla
        creditoGanado <- 500
		creditoTotal<-creditoTotal + creditoGanado
		Subrayado
        Felicitaciones
        Subrayado
        Escribir "            ********************************"
        Escribir "            * ¡FELICITACIONES!             *"
        Escribir "            * Ha acertado el número.       *"
        Escribir "            * Usted ha ganado: " ,créditoGanado, ".*"
        Escribir "            ********************************"
        
		Escribir "Tiene un crédito total de: $", creditoTotal
		Esperar 1 Segundos
	SiNo
        Limpiar Pantalla
        Subrayado
        GameOver
		Subrayado
        Escribir "              La computadora eligió el número ", computadora
        Escribir "              El número ingresado no coincide."
        Escribir "                    ¡Gracias por participar!"
		Subrayado
		Escribir "              Presione cualquier tecla para continuar."
		Esperar tecla
    Fin Si
Fin Funcion


Funcion TituloPPT
	TituloPiedra
	TituloPapel
	TituloTijera
FinFuncion


Funcion TituloPiedra
	Escribir "                          __________.__           .___                                    "             
	Escribir "                          \______   \__| ____   __| _/___________                         "
	Escribir "                           |     ___/  |/ __ \ / __ |\_  __ \__  \                        "
	Escribir "                           |    |   |  \  ___// /_/ | |  | \// __ \_                      "
	Escribir "                           |____|   |__|\___  >____ | |__|  (____  /                      "
	Escribir "                                            \/     \/            \/                       "
FinFuncion

Funcion TituloPapel
	Escribir "                     __________                      .__                        "
	Escribir "                     \______   \_____  ______   ____ |  |                       "
	Escribir "                      |     ___/\__  \ \____ \_/ __ \|  |                       "
	Escribir "                      |    |     / __ \|  |_> >  ___/|  |__                     "
	Escribir "                      |____|    (____  /   __/ \___  >____/                     "
	Escribir "                                     \/__|        \/                            "
FinFuncion

Funcion TituloTijera
	Escribir"                       ___________.__     __			                            "
	Escribir"                       \__    ___/|__|   |__| ________________                     "
	Escribir"                         |    |   |  |   |  |/ __ \_  __ \__  \	                    "
	Escribir"                         |    |   |  |   |  \  ___/|  | \// __ \_                  "
	Escribir"                         |____|   |__/\__|  |\___  >__|  (____  /                  "
	Escribir"                                     \______|    \/           \/                   "
FinFuncion

Funcion Piedra
	Escribir"                                         -------                           "
	Escribir"                                          ---'   "____)                "
	Escribir"                                             (_____)                   "
	Escribir"                                             (_____)                   "
	Escribir"                                             (____)                    "
	Escribir"                                      ---.__(___)                      "
FinFuncion


Funcion Papel
	Escribir"                                 _______                               "
	Escribir"                                  ---'   "____)____                     "
	Escribir"                                         ______)                        "
	Escribir"                                          _______)                      "
	Escribir"                                         _______)                       "
	Escribir"                              ---.__________)                           "
FinFuncion

Funcion Tijera
	Escribir"                             _______                                   "
	Escribir"                             ---'   "____)____                         "
	Escribir"                                     ______)                           "
	Escribir"                                 __________)                           "
	Escribir"                                 (____)                                "
	Escribir"                          ---.__(___)                                  "
FinFuncion
Funcion AnimacionEmpate
	Limpiar Pantalla
	AnimacionUno
	Esperar 1 segundo
	Limpiar Pantalla
	AnimacionDos
FinFuncion
Funcion AnimacionUno
	Escribir"            $$$$$$$$\                                    $$\                  "              
	Escribir"            $$  _____|                                   $$ |                 "
	Escribir"            $$ |      $$$$$$\$$$$\   $$$$$$\   $$$$$$\ $$$$$$\    $$$$$$\     "
	Escribir"            $$$$$\    $$  _$$  _$$\ $$  __$$\  \____$$\\_$$  _|  $$  __$$\    "
	Escribir"            $$  __|   $$ / $$ / $$ |$$ /  $$ | $$$$$$$ | $$ |    $$$$$$$$ |   "
	Escribir"            $$ |      $$ | $$ | $$ |$$ |  $$ |$$  __$$ | $$ |$$\ $$   ____|   "
	Escribir"            $$$$$$$$\ $$ | $$ | $$ |$$$$$$$  |\$$$$$$$ | \$$$$  |\$$$$$$$\    "
	Escribir"            \________|\__| \__| \__|$$  ____/  \_______|  \____/  \_______|   "
	Escribir"                                    $$ |                                      "
	Escribir"                                    $$ |                                      "
	Escribir"                                    \__|                                      "
FinFuncion 
Funcion AnimacionDos
	Escribir"           /$$$$$$$$                                    /$$                   "
	Escribir"          | $$_____/                                   | $$                   "
	Escribir"          | $$       /$$$$$$/$$$$   /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$     "
	Escribir"          | $$$$$   | $$_  $$_  $$ /$$__  $$ |____  $$|_  $$_/   /$$__  $$    "
	Escribir"          | $$__/   | $$ \ $$ \ $$| $$  \ $$  /$$$$$$$  | $$    | $$$$$$$$    "
	Escribir"          | $$      | $$ | $$ | $$| $$  | $$ /$$__  $$  | $$ /$$| $$_____/    "
	Escribir"          | $$$$$$$$| $$ | $$ | $$| $$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$$    "
	Escribir"          |________/|__/ |__/ |__/| $$____/  \_______/   \___/   \_______/    "
	Escribir"                                  | $$                                        "                                    
	Escribir"                                  | $$                                        "                         
	Escribir"                                  |__/                                        "
FinFuncion


Funcion SubrayadoGO
	Escribir"|??????????????????????????????????????????????????????????????????????????????????????????????????|"
FinFuncion

Funcion GameOver
	//Subrayado
	Escribir" "
	Escribir "|??????|   |?????|  |???|    |???| |???????|     |??????|   |??|    |??| |???????| |??????|  "
	Escribir"|??|       |??| |??| |????|  |????| |??|        |??|    |??| |??|    |??| |??|      |??|   |??| "
	Escribir"|??| |???| |???????| |??||????||??| |?????|     |??|    |??| |??|    |??| |?????|   |??????|  "
	Escribir"|??|  |??| |??| |??| |??| |??| |??| |??|        |??|    |??|  |??|  |??|  |??|      |??|  |??| "
	Escribir" |??????|  |??| |??| |??|      |??| |???????|     |??????|      |????|    |???????| |??|   |??| "
	Escribir" "
//	Subrayado
FinFuncion

Funcion Felicitaciones
	Escribir":.|######|::::::|###|:::: |##|::: |##|::::|###|:::::.|######|::|########|.|########|:|####|:"
	Escribir"|##|..::|##|::.|##||##|:::|###|:: |##|:::|##||##|::.|##|.:.|##|:..|##|..:.|##|.....::|####|:"
	Escribir"|##|:::..::::.|##|:.|##|::|####|: |##|::|##|:.|##|:.|##|.::..::::.|##|.::.|##|.::::::|####|:"
	Escribir"|##|::|####|:|##|:::.|##|:|##||##||##|:|##|:::.|##|:.|######|.:::.|##|.::.|######|::::|##|::"
	Escribir"|##|.::.|##|:|##########|:|##|. |####|:|##########|::......|##|::.|##|.::.|##|...:::::..:::."
	Escribir"|##|.::.|##|:|##|....|##|:|##|:. |###|:|##|....|##|:|##|::.|##|.:.|##|.::.|##|.:::::.|####|:"
	Escribir":.|######|:::|##|::::|##|:|##|::. |##|:|##|::::|##|:.|######|.::..|##|.::.|########|.|####|:"																
	Esperar 1 Segundos
	Limpiar Pantalla
FinFuncion
Funcion Subrayado
	Escribir "=============================================================================================="   
FinFuncion

Funcion AnimacionSumaDados
	Limpiar Pantalla
	Dados
	Esperar 500 Milisegundos
	Limpiar Pantalla
	SumaDados
	Esperar 2 segundos
FinFuncion

Funcion SumaDados
	
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"	
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@  _______ __ @ __ __ @ __ _______  @@@@  ______@ _______  @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ |       |  | |  |  |_|  |   _   | @@@@ |      ||       | @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ |  _____|  | |  |       |  |_|  | @@@@ |  _    |    ___| @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ | |_____|  |_|  |       |       | @@@@ | |@|   |   |___  @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ |_____  |       |       |       | @@@@ | |_|   |    ___| @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ _____|  |       |  |_|  |   _   | @@@@ |       |   |___  @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@ |_______|_______|__|@|__|__|@|__| @@@@ |______||_______| @@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         .,@@@@,.@@@@@#. ...@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,     .@@@#,.@@@@@(........ ....@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       /@@@(/........   ........../@@@"
	Escribir"@@@@@@@@@@@@@           /@@@@@@@@@@@@@@@@(..       ... .  ...........,@@@,...,@@"
	Escribir"@@@@@@@@@@     .@@@&.          @@@@@@@@@@*.@%         . ......(@@@,.*@@@@@/...#@"
	Escribir"@@@@@@@@      .@@@@(#.       ..   ..@@@@@@..@,.      ..@@@@,.*@@@@@@..,,,.....,@"
	Escribir"@@@@@@      ........     ..@@@@#@.....,@@@,@.,..     .(@@@@@*...,,............,#"
	Escribir"@@@@@      (@@@@@&.      ..@@@@@#.......@@@&%,,,.      .,,,.......... .....,,,,("
	Escribir"@@@@      .,@@@@@..    ...,,..........,,,@@@,,,,@,...................,,,**//***@"
	Escribir"@@@     ..%#,...     ..,@@@@@@.. ....,*&(@@@@****@,............,,***//@@@@//**@@"
	Escribir"@@     .@@@&@@...    ...(@@@@,......,*@(@@@@@@/@/*,,.....,,,/#@@(((##(/////*@@@@"
	Escribir"@@      .@@@@.. . ...,@@@,.........,/@(%@@@@@@@(@**,,,,,**%@&/(@@&((@@@(#@@@@@@@"
	Escribir"@                 ..@@@@@@%.......,(##@@@@@@@@@@@(**,***///(@@(/////@@@@@@@@@@@@"
	Escribir"@*.....          ....*@@@,......,,(%(&@@@@@@@@@@@@@(////(%(((@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@   ______  _______ ______  _______ _______ @@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  |      ||   _   |      ||       |       | @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  |  _    |  |_|  |  _    |   _   |  _____| @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  | |@|   |       | |@|   |  |@|  | |_____  @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  | |_|   |       | |_|   |  |_|  |_____  | @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  |       |   _   |       |       |_____| | @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@  |______||__|@|__|______||_______|_______| @@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
FinFuncion
Funcion Dados
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"	
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&           @@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            ..@@@..  /@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         .,@@@@,.@@@@@#. ...@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,     .@@@#,.@@@@@(........ ....@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       /@@@(/........   ........../@@@"
	Escribir"@@@@@@@@@@@@@           /@@@@@@@@@@@@@@@@(..       ... .  ...........,@@@,...,@@"
	Escribir"@@@@@@@@@@     .@@@&.          @@@@@@@@@@*.@%         . ......(@@@,.*@@@@@/...#@"
	Escribir"@@@@@@@@      .@@@@(#.       ..   ..@@@@@@..@,.      ..@@@@,.*@@@@@@..,,,.....,@"
	Escribir"@@@@@@      ........     ..@@@@#@.....,@@@,@.,..     .(@@@@@*...,,............,#"
	Escribir"@@@@@      (@@@@@&.      ..@@@@@#.......@@@&%,,,.      .,,,.......... .....,,,,("
	Escribir"@@@@      .,@@@@@..    ...,,..........,,,@@@,,,,@,...................,,,**//***@"
	Escribir"@@@     ..%#,...     ..,@@@@@@.. ....,*&(@@@@****@,............,,***//@@@@//**@@"
	Escribir"@@     .@@@&@@...    ...(@@@@,......,*@(@@@@@@/@/*,,.....,,,/#@@(((##(/////*@@@@"
	Escribir"@@      .@@@@.. . ...,@@@,.........,/@(%@@@@@@@(@**,,,,,**%@&/(@@&((@@@(#@@@@@@@"
	Escribir"@                 ..@@@@@@%.......,(##@@@@@@@@@@@(**,***///(@@(/////@@@@@@@@@@@@"
	Escribir"@*.....          ....*@@@,......,,(%(&@@@@@@@@@@@@@(////(%(((@@@@@@@@@@@@@@@@@@@"
	Escribir"@@,.,*@@,.....    .............,*@###@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@,,,,,&@%,,,,..............,*&(%#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@*@@@*,,,,,*@@&,,,......**(@#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@*/*,,,,**,*@/,,,,,*/(#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@*,*/@@@*,,,***/#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@(((@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	Escribir"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
FinFuncion
Funcion ElegirCPPT
	Escribir "=============================================================================================="               
	Escribir "|                                 La computadora eligió:                                     |"
	Escribir "=============================================================================================="
FinFuncion


//Funcion ElegirJPPT
//Escribir "               =============================="
//Escribir "                El jugador",leernombre," eligió:"
//Escribir "               =============================="
//FinFuncion	



Funcion PiedraPapeloTijera(creditoGanado Por Referencia, creditoTotal Por Referencia)
	
    Definir jugador, computadora, contCompu, contCliente Como Entero
    Definir nombre Como Cadena
    contCompu <- 0
    contCliente <- 0
    creditoGanado <- 0
	Limpiar Pantalla
	Para ii<-3 con paso -1 hasta 0 hacer
		TituloPPT
		Subrayado
		Escribir "                            REGLAMENTO"
		Subrayado
		Escribir "                     La tijera le gana al papel, el papel a la piedra y la piedra a la tijera."
		Escribir "                     El mejor de tres gana."
		Escribir " "
		Escribir "Estás listo/a?   ",ii
		Si ii = 0 Entonces
			Escribir "YA!!"
			Escribir" "
			Escribir"Presione cualquier tecla para continuar."
			Esperar tecla
		FinSi
		esperar 1 Segundos
		limpiar pantalla
	FinPara
	Esperar 1 Segundos
	Limpiar Pantalla
	Escribir "                     Por favor, ingresa tu nombre: "
    Leer nombre
	
	
	
    Mientras contCompu < 3 y contCliente < 3 Hacer
        Escribir "               Escoja una opción: 1 para piedra, 2 para papel, 3 para tijera"
        Leer jugador
		
        Si jugador < 1 o jugador > 3 Entonces
            Escribir "El número ingresado es incorrecto. Por favor, ingrese un número del 1 al 3."
        SiNo
            computadora <- Aleatorio(1, 3)
            Escribir "               El jugador elige..."
            Esperar 2 Segundos
            Segun jugador Hacer
				1:
					Limpiar Pantalla
					Subrayado
					Escribir "                    El jugador",nombre," eligió:"
					Subrayado
					TituloPiedra
					Piedra
					
				2:
					Limpiar Pantalla
					Subrayado
					Escribir "                    El jugador",nombre," eligió:"
					Subrayado
					TituloPapel
					Papel
					
				3:
					Limpiar Pantalla
					Subrayado
					Escribir "                   El jugador",nombre," eligió:"
					Subrayado
					TituloTijera
					Tijera
					
			FinSegun
			Esperar 1 Segundos
            Escribir "La computadora elige..."
            Esperar 1 Segundos
            Segun computadora Hacer
				1:
					Limpiar Pantalla
					ElegirCPPT
					TituloPiedra
					Piedra
				2:
					Limpiar Pantalla
					ElegirCPPT
					TituloPapel
					Papel
				3:
					Limpiar Pantalla
					ElegirCPPT
					TituloTijera
					Tijera
			FinSegun
			
            Si jugador = computadora Entonces
				Limpiar pantalla
				Subrayado
                AnimacionEmpate
				Subrayado
            SiNo
                Si jugador = 1 y computadora = 2 o jugador = 2 y computadora = 3 o jugador = 3 y computadora = 1 Entonces
                    Subrayado
					Escribir "                 Punto para la computadora"
					Subrayado
                    contCompu <- contCompu + 1
                SiNo
					Subrayado
                    Escribir "                     Punto para ", nombre
					Subrayado
                    contCliente <- contCliente + 1
                FinSi
            FinSi
			
            Escribir "Contador ", nombre, " : ", contCliente
            Escribir "Contador computadora: ", contCompu
        FinSi
    Fin Mientras
	
    Si contCliente > contCompu Entonces
		Limpiar Pantalla
		Felicitaciones
		Subrayado
		Escribir "                      ¡¡FELICITACIONES!!"
		Escribir "                         ¡¡GANASTE!!"
		Subrayado
		Escribir "       FELICITACIONES ", nombre, ". GANASTE 1000 CREDITOS POR EL JUEGO!!"
		creditoGanado <- 1000
		creditoTotal<-creditoTotal + creditoGanado
		Escribir "Tiene un crédito total de: $", creditoTotal
		Escribir""
		Escribir"Presione cualquier tecla para continuar."
		Esperar tecla
	SiNo
		Limpiar Pantalla
		GameOver
		Subrayado
		Escribir "             Esta vez ganó la computadora"
		Escribir "              Mejor suerte la próxima vez"
		Subrayado
		Escribir""
		Escribir"Presione cualquier tecla para continuar."
		Esperar tecla
	FinSi
FinFuncion

Funcion SumadeDados(creditoGanado Por Referencia,creditoTotal Por Referencia)
	Definir dado1, dado2, suma Como Entero
	
	AnimacionSumaDados
	Limpiar Pantalla
	Para ii<-3 con paso -1 hasta 0 hacer
		Subrayado
		Escribir "                            REGLAMENTO"
		Subrayado
		Escribir "      Si la suma de los dados da 7 u 11, ganarás un premio."
		Escribir ""
		Escribir "      Presione una tecla para lanzar los dados."
		Escribir " "
		Escribir "Estás listo/a?   ",ii
		Si ii = 0 Entonces
			Escribir "YA!!"
			Escribir" "
			Escribir"Presione cualquier tecla para continuar."
			
		FinSi
		Esperar 1 segundo	
		Limpiar Pantalla
		
	FinPara
	Escribir"Presione cualquier tecla para continuar."
	Leer jugador
	
	dado1 <- Aleatorio(1, 6)
	dado2 <- Aleatorio(1, 6)
	Borrar Pantalla
	Subrayado
	Escribir "          Lanzando los dados..."
	Subrayado
	Escribir" "
	Escribir "          Dado 1: ", dado1
	Escribir "          Dado 2: ", dado2
	Escribir" "
	
	Esperar 1 segundo
	
	suma <- dado1 + dado2
	
	Escribir "              Lanzaste un ", dado1, " y un ", dado2
	Escribir "              La suma es ", suma
	Esperar 1 segundos
	Escribir " "
	Escribir "                  Los dados:"
	Escribir "                  Dado 1: "
	MostrarDado(dado1)
	Escribir "                  Dado 2: "
	MostrarDado(dado2)
	Esperar 1 segundos
	Limpiar Pantalla
	Si suma = 7 O suma = 11 Entonces
		Felicitaciones
		Limpiar pantalla
		Esperar 200 milisegundos
		Felicitaciones
		Esperar 200 milisegundos
		Subrayado
		Escribir "               1000 CREDITOS."
		Subrayado
		creditoGanado <- 1000
		creditoTotal<-creditoTotal + creditoGanado
		
		Escribir "Tiene un crédito total de: $", creditoTotal
		Escribir""
		Escribir"Presione cualquier tecla para continuar." 
		Esperar tecla
	SiNo
		Limpiar Pantalla
		GameOver
		Limpiar Pantalla
		GameOver
		Escribir" "
		Escribir "                Lo siento, perdiste. Intenta de nuevo."
		creditoGanado <- 0
		Escribir"Presione cualquier tecla para continuar."
		Esperar tecla
	FinSi
FinFuncion


Funcion MostrarDado(dado)
    Segun dado Hacer
        1:
            Escribir "               --------"
            Escribir "              |         |"
            Escribir "              |    *    |"
            Escribir "              |         |"
            Escribir "               --------"
        2:
            Escribir "               --------"
            Escribir "              |  *      |"
            Escribir "              |         |"
            Escribir "              |      *  |"
            Escribir "               --------"
        3:
            Escribir "               --------"
            Escribir "              |  *      |"
            Escribir "              |    *    |"
            Escribir "              |      *  |"
            Escribir "               --------"
        4:
            Escribir "               --------"
            Escribir "              |  *   *  |"
            Escribir "              |         |"
            Escribir "              |  *   *  |"
            Escribir "               --------"
        5:
            Escribir "               --------"
            Escribir "              |  *   *  |"
            Escribir "              |    *    |"
            Escribir "              |  *   *  |"
            Escribir "               --------"
        6:
            Escribir "               --------"
            Escribir "              |  *   *  |"
            Escribir "              |  *   *  |"
            Escribir "              |  *   *  |"
            Escribir "               --------"
    FinSegun
FinFuncion

Funcion CreditoDisponible(creditoTotal)
	Escribir ""
    Escribir "Tu crédito es de: $", creditoTotal
	Escribir ""
Fin Funcion

Funcion CompraCliente(ventas_fecha Por Referencia, ventas_total Por Referencia, ventas_operacion Por Referencia,	ventas_cantidades Por Referencia, ventas_productos Por Referencia,matriz_productos Por Referencia, stock Por Referencia, cantidades Por Referencia,numVentas Por Referencia, fechaFormato Por Referencia, nroOperacion Por Referencia,creditoTotal Por Referencia)
    Definir cantidad, totalVenta, totalProducto Como Entero
    Definir codigoProducto, seguir Como Caracter
    Definir finalizarVenta, codigoValido, stockSuficiente, creditoSuficiente Como Logico
    Definir indiceProducto, LONG_CANTIDADES Como Entero
	
    // Inicializar variables
    LONG_CANTIDADES <- 10
    totalVenta <- 0
    finalizarVenta <- Falso
   	
    Mientras No finalizarVenta Hacer
        // Validación del código del producto
        codigoValido <- Falso
        Mientras No codigoValido Hacer
            Escribir "Ingresa el código del producto:"
            Menu(matriz_productos)  // Mostrar menú de productos
            Leer codigoProducto
            VerificarCódigoProducto(matriz_productos, codigoProducto, indiceProducto, codigoValido)
            Si No codigoValido Entonces
                Escribir "Producto no encontrado. Por favor, ingresa un código válido."
            FinSi
        FinMientras
		
        // Solicitar cantidad y verificar stock
        stockSuficiente <- Falso
        Mientras No stockSuficiente Hacer
            Escribir "Ingrese la cantidad que desea comprar: "
            Leer cantidad
            VerificarStock(indiceProducto, cantidad, stock, stockSuficiente)
            Si No stockSuficiente Entonces
                Escribir "No se puede completar la venta por falta de stock."
            FinSi
        FinMientras
		
        // Calcular total del producto
        CalcularTotalProducto(matriz_productos, indiceProducto, cantidad, totalProducto)
		
        // Verificar crédito suficiente antes de procesar la compra
        creditoSuficiente <- totalProducto <= creditoTotal
        Si creditoSuficiente Entonces
            totalVenta <- totalVenta + totalProducto
            cantidades[indiceProducto] <- cantidades[indiceProducto] + cantidad
            ActualizarStock(indiceProducto, cantidad, stock)
            creditoTotal <- creditoTotal - totalProducto  // Descontar el crédito
            Escribir "Total a pagar por ", cantidad, " unidades: $", totalProducto
            Escribir "Crédito restante: $", creditoTotal
        Sino
            Escribir "No tienes suficiente crédito para comprar este producto."
            Escribir "Monto faltante: $", totalProducto - creditoTotal
        FinSi
		
        // Preguntar si desea agregar otro producto
        Escribir "¿Deseas agregar otro producto? (S/N)"
        Leer seguir
        Si seguir = "N" o seguir = "n" Entonces
            finalizarVenta <- Verdadero
            Si totalVenta > 0 Entonces
                Escribir "Generando ticket de venta..."
				Esperar Tecla
				Limpiar Pantalla
				GenerarTicketVenta(ventas_fecha, ventas_total, ventas_operacion, ventas_cantidades, ventas_productos, numeroMesa, matriz_productos, cantidades)
                GuardarVenta(ventas_productos, ventas_cantidades, ventas_fecha, ventas_total, ventas_operacion,	cantidades, matriz_productos,numVentas, fechaFormato,nroOperacion)
                // Reiniciar datos para la siguiente venta
                ReiniciarVenta(cantidades, LONG_CANTIDADES, totalVenta)
            Sino
                Escribir "No se realizó ninguna compra válida."
            FinSi
        FinSi
    FinMientras
FinFuncion


/////////////////////PROVEEDORES/////////////////////

Funcion MenuProveedores(codigo, stock, stockProveedor, costo, insumos, minimo, indiceProducto, cantidadVenta, costoTotal, ticketCodigo, ticketNombre Por Referencia, ticketCantidad Por Referencia, ticketCosto, ticketSubtotal Por Referencia, numVentasP, ventas_fecha)
    // Declarar variable para la opción seleccionada
    Definir opcion Como Entero
    
    Mientras opcion <> 3 Hacer
        // Mostrar el menú de opciones
        Escribir "=============================================================================================="
        Escribir "|                                       PROVEEDORES                                          |"
        Escribir "=============================================================================================="
        Escribir "|      1.Ver Stock                                                2.Vender a Cafeteria       |"
        Escribir "|                                                                                            |"
        Escribir "|                                      3. Salir                                              |"
        Escribir "=============================================================================================="
        
        // Solicitar al usuario que ingrese una opción
        Escribir "Ingrese el número de la opción que desea seleccionar:"
        Leer opcion
        
        // Procesar la opción seleccionada
        Segun opcion Hacer
            1: 
                Limpiar Pantalla
                MostrarProductos(codigo, insumos, stockProveedor, costo)
                Esperar Tecla
                Limpiar Pantalla
            2: 
                Limpiar Pantalla
                VentaProveedores(codigo, stock, insumos, stockProveedor,costo,minimo,ticketCodigo,ticketNombre,ticketCantidad,ticketCosto,ticketSubtotal)
                Esperar Tecla
                Limpiar Pantalla
            3: 
                Limpiar Pantalla
				Escribir "Salir de Proveedores"  // Salir de Proveedores
            De Otro Modo: 
                Escribir "Opción no válida. Por favor, intente de nuevo."
        FinSegun
        
    Fin Mientras
FinFuncion

Funcion VentaProveedores(codigo, stock, insumos, stockProveedor,costo,minimo,ticketCodigo,ticketNombre,ticketCantidad,ticketCosto,ticketSubtotal)
	
    Definir i, cantidad, orden Como Entero
    Definir importe, total, costoTotal Como Real
    Definir codigoProducto, opcion Como Caracter
    Definir indiceProducto, cantidadVenta, stockInicial, numVentasP Como Entero
    
    InicializarInsumosProveedor(insumos, costo, stockProveedor, minimo)
    
    totalVentaP <- 0
    costoTotal <- 0
    numVentasP <- 0
    
    Repetir
        MostrarProductos(codigo, insumos, stockProveedor, costo)
        
        Escribir "Ingrese el código del producto que desea comprar: "
        Leer codigoProducto
        
        ValidarCodigoProducto(codigo, codigoProducto,indiceProducto)
        Esperar Tecla
		Limpiar Pantalla
        Si indiceProducto = -1 Entonces
            Escribir "Código de producto no válido."
        SiNo
            Escribir "Ingrese la cantidad a comprar del producto ", insumos[indiceProducto], ":"
            Leer cantidadVenta
            
            Si cantidadVenta <= stockProveedor[indiceProducto] Entonces
                RealizarVenta(codigo, stock, stockProveedor, costo, insumos, indiceProducto, cantidadVenta, costoTotal, ticketCodigo, ticketNombre, ticketCantidad, ticketCosto, ticketSubtotal, numVentasP)
            SiNo
                Escribir "No hay suficiente stock en el proveedor para completar la compra."
            FinSi
        FinSi
        
        Escribir "¿Desea continuar comprando? Ingrese C para continuar o S para salir: "
        Leer opcion
    Hasta Que opcion = "S"
    Esperar Tecla
	Limpiar Pantalla
	Si cantidadVenta >0 Entonces
		GenerarTicketVentaProv(ticketCodigo, ticketNombre, ticketCantidad, ticketCosto, ticketSubtotal, numVentasP)
	FinSi
FinFuncion

SubProceso MostrarProductos(codigo, insumos, stockProveedor, costo)
	Definir i Como Entero
    Definir codigoAjustado, nombreAjustado, precioAjustado, stockAjustado Como Cadena
    
	Escribir"================================================================================"
    Escribir "                                  Productos disponibles"
	Escribir"================================================================================"
    Escribir "| Código | Nombre del Insumo                |     Precio     |      Stock     |"
    Escribir "-------------------------------------------------------------------------------"
	
	Para i <- 0 Hasta 10 Hacer
        codigoAjustado <- codigo[i] + Subcadena("       ", Longitud(codigo[i]) + 1, 7)
        nombreAjustado <- insumos[i] + Subcadena("                                 ", Longitud(insumos[i]) + 1, 33)
        precioAjustado <- "    $" + ConvertirATexto(costo[i]) + Subcadena("             ", Longitud(ConvertirATexto(costo[i])) + 1, 9)
        stockAjustado <-"      "+ ConvertirATexto(stockProveedor[i]) + Subcadena("         ", Longitud(ConvertirATexto(stockProveedor[i])) + 1, 8)
		Escribir "| ", codigoAjustado, " | ", nombreAjustado, " | ", precioAjustado, " | ", stockAjustado, " | "
    FinPara
    
    Escribir "================================================================================" 
FinSubProceso

SubProceso ValidarCodigoProducto(codigo Por Referencia, codigoProducto, indiceProducto Por Referencia)
    Definir i Como Entero
    Definir encontrado Como Logico
    encontrado <- Falso
    indiceProducto <- -1
	
    // Recorrer el arreglo de códigos para buscar el producto
    Para i <- 0 Hasta 10 Hacer
        Si codigo[i] = codigoProducto Entonces
            indiceProducto <- i
            encontrado <- Verdadero
        FinSi
    FinPara
	
    Si No encontrado Entonces
        Escribir "ValidarCodigoProducto: Producto no encontrado."
    FinSi
FinSubProceso

SubProceso RealizarVenta(codigo, stock, stockProveedor, costo, insumos, indiceProducto, cantidadVenta, costoTotal Por Referencia, ticketCodigo Por Referencia, ticketNombre Por Referencia, ticketCantidad Por Referencia, ticketCosto Por Referencia, ticketSubtotal Por Referencia, numVentasP Por Referencia)
    stockInicial <- stock[indiceProducto]
    stock[indiceProducto] <- stock[indiceProducto] + cantidadVenta
    stockProveedor[indiceProducto] <- stockProveedor[indiceProducto] - cantidadVenta
    costoTotal <- cantidadVenta * costo[indiceProducto]
    
    ticketCodigo[numVentasP] <- codigo[indiceProducto]
    ticketNombre[numVentasP] <- insumos[indiceProducto]
    ticketCantidad[numVentasP] <- cantidadVenta
    ticketCosto[numVentasP] <- costo[indiceProducto]
    ticketSubtotal[numVentasP] <- costoTotal
    numVentasP <- numVentasP + 1
    
    Escribir "Compra realizada con éxito."
FinSubProceso


SubProceso GenerarTicketVentaProv(ticketCodigo, ticketNombre, ticketCantidad, ticketCosto, ticketSubtotal, numVentasP Por Referencia)
    Definir totalFinal, subtotal, iva Como Real
    Definir fechaFormato, horaFormato Como Cadena
    Definir nroOperacion Como Entero
    
    nroOperacion <- Aleatorio(100000, 999999)  // Generar número de operación aleatorio
    
    // Obtener la hora y fecha actual en formato HH:MM:SS y dd/mm/yyyy
    horaFormato = ConvertirHora(horaFormato)
    fechaFormato = ConvertirFecha(fechaFormato)
    
    Escribir "=========================================================="
    Escribir "                    ***Ticket Proveedor***"
    Escribir "=========================================================="
    Escribir "Fecha: ", fechaFormato, "                     Hora: ", horaFormato
    Escribir "Empresa:  Café UTN                 Nro. Operación: ", nroOperacion
	Escribir "CUIT:30-56712389-1          Dirección: Av.Triunvirato 3174"
    Escribir "----------------------------------------------------------"
    Escribir "CANT.     DESCRIPCIÓN                P/U      TOTAL"
    Escribir "----------------------------------------------------------"
    
    // Inicializamos el subtotal
    subtotal <- 0
    totalVenta <- 0
    
    // Recorrer todos los productos de esta venta
    Para i <- 0 Hasta numVentasP - 1 Hacer
        Si ticketCantidad[i] > 0 Entonces
            // Calcular el total de esa venta
            cantidadTexto <- ConvertirATexto(ticketCantidad[i])
            productoTexto <- ticketNombre[i]
            precioUnitario <- ticketCosto[i]
            totalProducto <- ticketSubtotal[i]
            subtotal <- subtotal + totalProducto
            
            // Formatear los valores a mostrar en el ticket
            precioTexto <- "$" + ConvertirATexto(precioUnitario)
            totalTexto <- "$" + ConvertirATexto(totalProducto)
            
            // Ajustar para alineación
            cantidadAjustada <- cantidadTexto + Subcadena("          ", Longitud(cantidadTexto) + 1, 10)
            productoAjustado <- productoTexto + Subcadena("                            ", Longitud(productoTexto) + 1, 28)
            precioAjustado <- precioTexto + Subcadena("          ", Longitud(precioTexto) + 1, 10)
            totalAjustado <- totalTexto + Subcadena("               ", Longitud(totalTexto) + 1, 15)
            
            // Imprimir la línea de ese producto en el ticket
            Escribir cantidadAjustada, productoAjustado, precioAjustado, totalAjustado
        FinSi
    FinPara
    
    // Calcular y mostrar el subtotal, IVA y total de la venta
    iva <- subtotal * 0.21
    totalVenta <- subtotal + iva
    Escribir "-----------------------------------------------------------"
    Escribir "                               SUBTOTAL:     $", subtotal
    Escribir "                               IVA (21%):    $", iva
    Escribir "-----------------------------------------------------------"
    Escribir "                               TOTAL:        $", totalVenta
    Escribir "==========================================================="
    Escribir "     ¡Gracias por su compra! Que tenga un buen día."
    Escribir "==========================================================="
FinSubProceso

SubProceso BuscarIndiceProducto(codigo Por Referencia, codigoBuscado, indiceProducto Por Referencia, encontrado Por Referencia)
    Definir i Como Entero
    encontrado <- Falso
    indiceProducto <- -1
	
    Para i <- 0 Hasta LONG_INSUMOS - 1 Hacer
        Si codigo[i] = codigoBuscado Entonces
            indiceProducto <- i
            encontrado <- Verdadero
		FinSi
	FinPara
	
	Si No encontrado Entonces
	Escribir "Producto no encontrado"
	FinSi
FinSubProceso

