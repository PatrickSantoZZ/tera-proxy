@echo off
title TERA Proxy
cd /d "%~dp0"

if not exist .\settings\_tera-proxy_.json (
	bin\node\node.exe --use-strict bin\configurator
	cls
)

bin\node\node.exe --use-strict --harmony .
pause