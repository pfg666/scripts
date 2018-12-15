@ECHO OFF
NETSH interface set interface "Ethernet" admin=DISABLE
SLEEP 5
NETSH interface set interface "Ethernet" admin=ENABLE
REM ipconfig /renew /all