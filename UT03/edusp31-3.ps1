#Declaro la variable eventos para guardar la información que buscamos.
$eventos = Get-WinEvent -ListLog * | Where-Object RecordCount -GT 0

#Declaro la variable opción vacía para que al entrar al menú no haya ninguna seleccionada.
$opcion = " "

#Abro un while en el que la condición es: "Mientras $opcion no sea 0, repite esto"
while ($opcion -ne "0") {

#Para imprimir el menú uso foreach. Declaro la variable i como contador para asignarle un número a cada tipo de evento.
$i = 1
foreach ($log in $eventos) {
#Hago que en cada línea se muestre el valor de i, antes del nombre del tipo de evento. Luego se le suma una unidad a "i" para continuar con la lista numerada.
    Write-Host "$i. $($log.LogName)"
    $i++

}

#Al final del menú indico que la opción 0 es para salir del script.
Write-Host "0. Salir"
Write-host " "

#Pido la opción como "int" a través de la terminal.
$opcion = [int](Read-Host "Elige una opción")
Write-Host " "

#Para decidir que hacer según la opción que recibo uso if. Primero verifico si la opción es 0. Si lo es, muestro un mensaje que indica que sales del script.
if ($opcion -eq "0") {

    Write-Host "Saliendo del script"

#Por otro lado si la opción es mayor o igual a 1 y menor o igual al número máximo de eventos, hace lo que explico en el siguiente comentario.
} elseif ($opcion -ge 1 -and $opcion -le $eventos.Count) {

#Recojo la información de la opción elegida de manera que en la variable eventos, al empezar desde 0 en su array, se le reste 1 a la opción elegida por el usuario.
    $opcionelegida = $eventos[$opcion - 1]
#Muestro el total de eventos
    Write-Host "Total de eventos: $($opcionelegida.RecordCount)"
#Muestro los 12 últimos registros del tipo de evento seleccionado.
    Get-WinEvent -LogName $opcionelegida.LogName -MaxEvents 12

#Si no se elige la opción 0 o una que entre en el rango anterior mostrará el mensaje de que la opción no es válida.
} else {

    Write-Host "Opción elegida no válida"

}

Write-Host " "

}