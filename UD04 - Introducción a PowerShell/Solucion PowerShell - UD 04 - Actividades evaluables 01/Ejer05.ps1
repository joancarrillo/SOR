# Solicitar nombre de usuario
$username = Read-Host "Introduzca el nombre de usuario"

# Verificar si el usuario existe. -ErrorAction SilentlyContinue no muestra el texto de error
$userExists = Get-LocalUser -Name $username -ErrorAction SilentlyContinue

# Este if se cumple si la orden de comprobar usuario devolvio algo
# (Estamos comparando DIFERENTE A NULO)
if ($null -ne $userExists) {
    Disable-LocalUser -Name $username
    Write-Host "El usuario $username ha sido deshabilitado."
} else {
    Write-Host "El usuario $username no existe."
}
