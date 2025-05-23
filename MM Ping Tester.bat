@ECHO OFF
mode con: lines=68
ECHO Ping To MM CS2 Servers v1.0 by y1gy - May 22th 2025
ECHO =============================================================  
ECHO -AUTO PING MODE is (ENABLED)- Please wait while first pings are loading...
:top
color 07
TITLE Ping To MM CS2 Servers v1.0 by y1gy - May 22th 2025  (AUTO PING MODE)
:pads
CALL:pingtest1 146.66.155.69 155.133.250.1 146.66.155.4 185.25.182.1
CALL:pingtest2 103.28.54.3 103.10.121.1 45.121.184.1 185.25.183.163
CALL:pingtest3 146.66.156.211 146.66.180.3 155.133.227.56 155.133.241.24
CALL:pingtest4 155.133.248.37 155.133.247.1
CLS
ECHO Ping To MM CS2 Servers v1.0 by y1gy - May 22th 2025
ECHO ============================================================= 
ECHO.[EU West]
ECHO - EU West, LUX (146.66.153.12):				(%ms1%)   - Packet Loss: %pl1%   - TTL: %ttl1%
ECHO - EU West, LUX (155.133.250.1):				(%ms2%)   - Packet Loss: %pl2% - TTL: %ttl2%  
ECHO.
ECHO.[EU East]
ECHO - EU East, VIE (146.66.155.4) :			(%ms3%)   - Packet Loss: %pl3%    - TTL: %ttl3%
ECHO - EU East, VIE (146.66.155.1) :			(%ms4%)   - Packet Loss: %pl4%    - TTL: %ttl4%
ECHO.
ECHO.[SEA]
ECHO - Singapore, SG (103.28.54.3):				(%ms5%)   - Packet Loss: %pl5% - TTL: %ttl5%
ECHO - Singapore, SG (103.10.121.1):				(%ms6%)   - Packet Loss: %pl6% - TTL: %ttl6%	
ECHO - Singapore, SG (45.121.184.1):				(%ms7%)   - Packet Loss: %pl7% - TTL: %ttl7%
ECHO.
ECHO.[MiddleEast]
ECHO - UAE, Dubai (185.25.183.4):		        (%ms8%)   - Packet Loss: %pl8% - TTL: %ttl8%
ECHO.
ECHO.[Sweden]
ECHO - Sweden, SE (146.66.156.211)               	        (%ms9%)   - Packet Loss: %pl9% - TTL: %ttl9%
ECHO - Sweden, SE (146.66.180.3)               	        (%ms10%)   - Packet Loss: %pl10% - TTL: %ttl10%
ECHO.
ECHO.[Poland]
ECHO - Poland, PL (155.133.228.1)               	        (%ms11%)   - Packet Loss: %pl11% - TTL: %ttl11%
ECHO - Poland, PL (155.133.241.24)               	        (%ms12%)   - Packet Loss: %pl12% - TTL: %ttl12%
ECHO.
ECHO.[Spain]
ECHO - Spain, ES (155.133.246.1)               	        (%ms13%)   - Packet Loss: %pl13% - TTL: %ttl13%
ECHO - Spain, ES (155.133.247.1)               	        (%ms14%)   - Packet Loss: %pl14% - TTL: %ttl14%
ECHO.
ECHO ============================================================= 
ECHO -AUTO PING MODE is (ENABLED)- The pings will automatically keep refreshing.
GOTO top
 
:pingtest1
ECHO.
SET ms1=N/A
SET ms2=N/A
SET ms3=N/A
SET ms4=N/A
SET pl1=0
SET pl2=0
SET pl3=0
SET pl4=0
SET ttl1=0
SET ttl2=0
SET ttl3=0
SET ttl4=0

ECHO + Pinging (EU West)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms1=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "lost"') DO SET pl1=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "TTL"') DO SET ttl1=%%i

ECHO + Pinging (EU West)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "ms"') DO SET ms2=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "lost"') DO SET pl2=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "TTL"') DO SET ttl2=%%i

ECHO + Pinging (EU East)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "ms"') DO SET ms3=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "lost"') DO SET pl3=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "TTL"') DO SET ttl3=%%i

ECHO + Pinging (EU East)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "ms"') DO SET ms4=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "lost"') DO SET pl4=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "TTL"') DO SET ttl4=%%i

GOTO:EOF

:pingtest2
ECHO.
SET ms5=N/A
SET ms6=N/A
SET ms7=N/A
SET ms8=N/A
SET pl5=0
SET pl6=0
SET pl7=0
SET pl8=0
SET ttl5=0
SET ttl6=0
SET ttl7=0
SET ttl8=0
ECHO + Pinging (SEA)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms5=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "lost"') DO SET pl5=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "TTL"') DO SET ttl5=%%i
ECHO + Pinging (SEA)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "ms"') DO SET ms6=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "lost"') DO SET pl6=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "TTL"') DO SET ttl6=%%i
ECHO + Pinging (SEA)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "ms"') DO SET ms7=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "lost"') DO SET pl7=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "TTL"') DO SET ttl7=%%i
ECHO + Pinging (MiddleEast)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "ms"') DO SET ms8=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "lost"') DO SET pl8=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "TTL"') DO SET ttl8=%%i


GOTO:EOF

:pingtest3
ECHO.
SET ms9=N/A
SET ms10=N/A
SET ms11=N/A
SET ms12=N/A
SET pl9=0
SET pl10=0
SET pl11=0
SET pl12=0
SET ttl9=0
SET ttl10=0
SET ttl11=0
SET ttl12=0
ECHO + Pinging (Sweden)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms9=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "lost"') DO SET pl9=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "TTL"') DO SET ttl9=%%i

ECHO + Pinging (Sweden)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "ms"') DO SET ms10=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "lost"') DO SET pl10=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "TTL"') DO SET ttl10=%%i
ECHO + Pinging (Poland)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "ms"') DO SET ms11=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "lost"') DO SET pl11=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "TTL"') DO SET ttl11=%%i
ECHO + Pinging (Poland)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "ms"') DO SET ms12=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "lost"') DO SET pl12=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %4 ^| FIND "TTL"') DO SET ttl12=%%i
GOTO:EOF

:pingtest4
ECHO.
SET ms13=N/A
SET ms14=N/A
SET pl13=0
SET pl14=0
SET ttl13=0
SET ttl14=0
ECHO + Pinging (Spain)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms13=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "lost"') DO SET pl13=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "TTL"') DO SET ttl13=%%i
ECHO + Pinging (Spain)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "ms"') DO SET ms14=%%i
FOR /F "tokens=6 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "lost"') DO SET pl14=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "TTL"') DO SET ttl14=%%i
GOTO:EOF
