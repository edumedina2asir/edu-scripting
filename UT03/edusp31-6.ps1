#Combienzo creando la variable action para indicarle el programa y los argumentos que debe ejecutar.
$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-Command 'Get-WinEvent -LogName System -MaxEvents 30 | Where-Object LevelDisplayName -eq ''Error'' | Out-File C:\Logs\ErroresServidor.txt'"

#Creo la variable trigger para indicarle el desencadenador. Se ejecutará todos los días a las 7AM.
$trigger = New-ScheduledTaskTrigger -Daily -At 7:00AM

#Creo la variable prinipal para indicarle que se inicie con privilegios de adminsitrador
$principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -RunLevel Highest

#En la variable settings permito la ejecución aunque el equipo esté desenchufado en caso de que fuea un portátil y que pueda "despertar" al equipo.
$Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -WakeToRun

#Por último, registro la tarea, aqui le asigno el nombre y la información recogida en las variables anteriores.
Register-ScheduledTask -TaskName "Informe-Errores-Diario" -Action $Action -Trigger $Trigger -Principal $Principal -Settings $Settings