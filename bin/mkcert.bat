@echo off
set OPENSSL_CONF="C:\openssl\ssl\openssl.cnf"
set RANDFILE=.rnd

openssl req -config C:\openssl\cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout D:\OpenServer\userdata\config\cert_files\server.key -x509 -days 365 -out D:\OpenServer\userdata\config\cert_files\server.crt

echo.
echo -----
echo The certificate was provided.
echo.

echo.
echo -----
echo Open Cert Manager 
echo.

echo off | clip
(
echo.|set /P= D:\OpenServer\userdata\config\cert_files\server.crt
)| clip

certlm

echo.
echo -----
echo The certificate was add to certmgr 
echo.
pause

