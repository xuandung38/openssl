@echo off
cls
set OPENSSL_CONF="C:\openssl\ssl\openssl.cnf"
set RANDFILE=.rnd

set pathSSL=D:\OpenServer\userdata\config\cert_files\
set pathKey=%pathSSL%server.key
set pathCert=%pathSSL%server.crt

openssl req -config C:\openssl\cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout %pathKey% -x509 -days 365 -out %pathCert%

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
echo.|set /P= %pathCert%
)| clip

certlm

echo.
echo -----
echo The certificate was add to certmgr 
echo.
pause

