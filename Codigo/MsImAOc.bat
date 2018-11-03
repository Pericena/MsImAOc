@rem bin\windows\bat
@rem Autor Luishiño Pericena Choque
@rem Informacion:
@rem Sigueme en las redes Sociales:
@rem Blogger          https://lpericena.blogspot.com/
@rem Github            https://github.com/Pericena
@rem youtube.com  https://www.youtube.com/channel/UCELx1m-NeAdBn7mCuQ86kcw
@rem pinterest        https://es.pinterest.com/lushiopericena/
@rem twitter             https://twitter.com/LPericena
@rem linkedin         https://www.linkedin.com/in/lpericena/
@rem facebook       https://www.facebook.com/profile.php?id=100009309755063
@rem pagina facebook  https://www.facebook.com/lpericena
@rem sitio web        https://pericena.wordpress.com/
@rem vimeo         https://vimeo.com/lpericena
@rem instagram      https://www.instagram.com/lpericena/
@rem remote      https://remote.com/luishinopericena-choque
@rem google+   https://plus.google.com/u/0/114054031405340478901
@rem kiwi       https://kiwi.qa/LuishinoC
@rem App    https://apps.facebook.com/167466933725219
@rem Grupo    https://www.facebook.com/groups/122223121705126/?source_id=1506435219407506
@rem socialtools https://www.socialtools.me/index?action=demoApps&preview=1&app_id=406101
@rem teachlr    https://teachlr.com/lpericena
@rem wikipedia  https://es.wikipedia.org/wiki/Usuario:Luishi%C3%B1o_Pericena_Choque
@rem ask          https://ask.fm/Lpericena
@rem stackoverflow  https://stackoverflow.com/users/6506592/luishi%C3%B1o-pericena-choque
@rem wix https://lpericena.wixsite.com/curriculumvitae








@echo off

TITLE MsImAOc
MODE con: cols=106 lines=40
COLOR 05
if "%OS%"=="Windows_NT" @setlocal
:VERSION
set MsImAOc=Version MsImAOc v2.0
set Autor=Autor Lushino Pericena Choque
set web=https://lpericena.blogspot.com/
:::::::::OCULTAR INFORMACION EN UNA IMAGEN OPCION:::::::::::::::::::::::::::
CLS
:MENU
set /a contador=0
for %%x in (*) do (@echo %%x
    set /a contador=contador+1
)
CLS
:error

:png
set argC=0
for %%x in (%*) do Set /A argC+=1 
echo.
echo Hola  %username%  
echo.
echo.                    .   :.              
echo.            iB@:   a@   aB@:            
echo.           .Bi     2B     M@               %Autor%
echo.            @S     2@     @B                 %web%
echo.       .22:BBi     2B      XB@@@B              ¸%MsImAOc%¸    
echo.      7B77Ba    2@27@.@Z.   .:  BB      
echo.      B:      .@B; 2@ .0B0       @:  Opciones   
echo.      @0:     @2   2@    B0   .B@7     [h] Ayuda.  
echo.       :B@   8B          7B   i@       [i] Instalar WinRAR.  
echo.        MB   X@     L    7@   .B0.     [o] Ocultar archivos en la imagen. 
echo.      i@8r    BM        .@2     :@2    [c] Comprimir manualmente. 
echo.      @0       B@2.   rB@7       B2    [d] Descargar WinRAR de la pagina oficial.
echo.      :@: .2    :MB@@@B2    r@02BB     [m] volver al Menu.
echo.       i@@8M@7            .@@::7:      [x] Salir.
echo.            .@i            @7        
echo.            rB    @@MB@:  .BM  Datos:[%contador%] Carpeta:[%ArchivoImag%][%OS%][%NUMBER_OF_PROCESSORS%]Parametros:[%argC%]
echo.             2@@0@B   7@B@M7           [+]%error% [%DATE% %TIME%]
echo.                i.      .              
::echo.Directorio Actual: %CD%
set /p img=Ingrese una opcion msfconsole:[+]%=%
if %img%==m goto :menu_winrar
if %img%==h goto :help_winrar
if %img%==i goto :winrar
if %img%==o goto :archivo
if %img%==c goto :comprimir_manualmente
if %img%==x goto :exit
if %img%==d goto :descargas
if %img% GTR O echo. Error
goto error
:error
set error=%img% Error
goto Menu
:descargas
set error=%img% Descargar
echo.[ok] %PATH%
start https://www.winrar.es/descargas
goto MENU

:exit
exit
goto menu

:comprimir_manualmente
set error=%img% WinRAR
set ArchivoImag=ArchivoImag
mkdir ArchivoImag
CLS
echo.Ingrese el nombre de la imagen Ejemplo: Imagen.png
FOR %%p in (*.png) DO echo.----------------------^> %%p
FOR %%g in (*.gif) DO echo.----------------------^> %%g
FOR %%j in (*.jpg) DO echo.----------------------^> %%j

set /p im=Ingrese el nombre de la imagen msfconsole:[+]%=%
echo.Ingrese el nombre del archivo rar Ejemplo: archivo.rar
FOR %%r in (*.rar) DO echo.----------------------^> %%r
set /p rar=Ingrese el nombre del archivo rar:[+]%=%
echo.Ingrese el nuevo nombre de la imagen Ejemplo: Imagen2.png
set /p im1=Ingrese el nuevo nombre de la imagen:[+]%=%
set /p =Seleccione Enter [+]


set /p ms=Desea eliminar el archivo rar "Si[s] o No[n]"[+]%=%
if %ms%==s goto :si
if %ms%==n goto :no
:si
del %rar%
copy /b %im% + %rar% %im1%
move %im1% ./ArchivoImag

goto MENU
:no
copy /b %im% + %rar% %im1%
move %im1% ./ArchivoImag

::echo. Prueba>MsImAOc.txt
::WinRAR.exe a -pMyPassword MsImAOc.rar ArchivoComprimido.txt
goto MENU


:archivo
CLS
set error=%img% Compilando....
mkdir ArchivoImag
call WinRAR.exe a ArchivoComprimido.rar
::call zip.exe a ArchivoComprimido.zip

move ArchivoComprimido.rar ./ArchivoImag

echo.Ingrese el nombre de la imagen Ejemplo: Imagen.png
FOR %%p in (*.png) DO echo.----------------------^> %%p
FOR %%g in (*.gif) DO echo.----------------------^> %%g
FOR %%j in (*.jpg) DO echo.----------------------^> %%j


set /p imgA=Ingrese el nombre de la imagen msfconsole:[+]%=%
copy %imgA% MsImAOc-copy.png
move %imgA% ./ArchivoImag
rename MsImAOc-copy.png %imgA%


FOR %%x in (ArchivoImag/%imgA%) DO echo.----------------------^> [%%x]
FOR %%r in (ArchivoImag/*.rar) DO echo.----------------------^> [%%r]
set /p img1=Ingrese el nuevo nombre de la imagen msfconsole:[+]%=%

cd ./ArchivoImag
copy /b %imgA% + ArchivoComprimido.rar %img1%
::copy /b %imgA% + ArchivoComprimido.zip %img1%

del ArchivoComprimido.rar
set /p =Seleccione Enter [+]
cd ..
::call WinRAR.exe x MsImAOc.rar
::echo. Prueba>MsImAOc.txt
::WinRAR.exe a -pMyPassword MsImAOc.rar MsImAOc.txt
::WinRAR.exe x -pMyPassword MsImAOc.rar MsImAOc.txt
::del MsImAOc.txt
goto MENU


:menu_winrar
set error=%img% Menu
goto MENU


:winrar
cd Tools
cls
set error=%img% Instalando winrar....
echo.
FOR %%p in (*.exe) DO echo.Selecciono el programa -------^>[%%p]
call winrar-x64-560es.exe
cd ..
goto png
goto MENU


:help_winrar
cls
echo.
set error=%img% Ayuda
echo.Debe tener instalado el programa WinRAR. 
echo.Descargar nueva version https://www.winrar.es/descargas
echo.Crear un archivo nuevo con la extencion ".rar" en la carpeta ArchivoImag
echo.La imagen que desea ocultar la informacion debe estar guardada en la carpeta ArchivoImag
echo.La imagen debe tener las extencion ".jpg,.png,.gif,...."
echo.
echo.Pasos a seguir:
echo.   -^>Debe instalar WinRAR ingrese la tecla "i".
echo.   -^>Debe ingresar el nombre de la imagen junto con la extencion.
echo.   -^>Debe ingresar el nombre del archivo WinRAR junto con la extencion.
echo.   En el archivo WinRAR debe guardar toda la informacion q desea ocultar.
echo.   -^>Debe ingresar el nuevo nombre de la imagen junto con la extencion.
echo.   En la nueva imagen estara la informacion oculta , solo se puede ver si se abre con el programa WinRAR
echo.Ejemplo :[imagen.png] + [Archivo.rar] = [imagen2.png]
echo.
goto png

