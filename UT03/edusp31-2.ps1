param([DateTime]$fechainicio, [DateTime]$fechafin)

Write-Host "Eventos de Inicio de Sesión:"

$eventos = Get-WinEvent -FilterHashtable @{ LogName = 'Security'; ID = 4624; StartTime = $fechainicio; EndTime = $fechafin } |
Where-Object { $_.Properties[5].Value -ne 'SYSTEM' } |
Select-Object TimeCreated, @{N='Usuario'; E={$_.Properties[5].Value}}

foreach ($e in $eventos) {

    $fecha = $e.TimeCreated
    $usuario = $e.Usuario
    Write-Host "Fecha: $fecha - Usuario: $usuario"

}