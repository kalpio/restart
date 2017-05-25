@echo off

rem     Przykładowy skrypt restartujący nasłuchy.
rem
rem     Autor: Piotr Kalina

echo******************************************
echo.
echo Nasłuchy (uruchomione za pomocą Progress)
echo.
echo******************************************

taskkill /F /IM prowin32.exe


echo******************************************
echo.
echo Program uruchomieniowy Novum
echo.
echo******************************************

taskkill /F /IM Starter.exe

echo******************************************
echo.
echo Enigma
echo.
echo******************************************

taskkill /F /IM Enigma.exe


echo******************************************
echo.
echo Killer
echo.
echo******************************************
taskkill /F /IM Killer.exe


rem     Aby pomyślnie wyłączyć Web Service należy oknu nadać nazwę. W tym celu np. dla zastrzeżeń:
rem     w pliku startup.bat dla w katalogu Tomcat zastrzeżeń dodajemy na początku pliku (np. po @echo off) linijkę
rem     title webservice_dz
rem     
rem     Będziemy mieli np.
rem     
rem     @echo off
rem     title webservice_dz
rem
rem     W ten sposób ustawimy dla okna konsoli, która uruchamia nasłuch własny tytuł.
rem     Pomoże to w odszukaniu i zamknięciu tego okna w przypadku uruchomienia skryptu.

echo******************************************
echo.
echo Web Service
echo.
echo******************************************

taskkill /F /IM cmd.exe /FI "WINDOWTITLE eq webservice_dz*" /T

echo******************************************
echo.
echo Tuba2Serwer
echo.
echo******************************************

taskkill /F /IM Tuba2Serwer.exe


rem     echo***********************************************************
rem     echo.
rem     echo Mapowanie dysku (jeśli wymagane do uruchomienia aplikacji)
rem     echo.
rem     echo***********************************************************

rem     net use X: /DELETE /Y
rem     net use X: \\<DRIVE_IP>


rem     echo******************************************************
rem     echo.
rem     echo Odczekanie 15 s wykorzystując aplikację Novum abSleep
rem     echo.
rem     echo******************************************************

rem     call C:\Apps\abSleep.exe 15


rem     echo*************************
rem     echo.
rem     echo Uruchomienie Tuba2Serwer
rem     echo.
rem     echo*************************

rem     C:
rem     cd \path\to\Tuba2Serwer_config
rem     start X:\path\to\Tuba2Serwer_app\Tuba2Serwer.exe


rem     echo******************************************************
rem     echo.
rem     echo Odczekanie 15 s wykorzystując aplikację Novum abSleep
rem     echo.
rem     echo******************************************************

rem     call C:\Apps\abSleep 15


rem     echo********************************************
rem     echo.
rem     echo Uruchomienie nasłuchów (MAK, ZADANIA, itp.)
rem     echo.
rem     echo********************************************

rem     X:
rem     cd \path\to\noe\system\start
rem     start Starter.exe /F c:\Progress\openedge\bin\prowin32.exe /P -pf X:\path\to\NOE\system\ini\mak.pf -ininame X:\path\to\noe\system\ini\noe.ini ...


rem     echo******************************************************
rem     echo.
rem     echo Uruchomienie usługi tomcat (np. zastrzeżenia)
rem     echo.
rem     echo******************************************************

rem     D:
rem     cd \path\to\tomcat\ZastrzezeniaSGB\bin
rem     start D:\path\to\tomcat\ZastrzezeniaSGB\bin\startup.bat
