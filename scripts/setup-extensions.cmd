@echo off
@setlocal enableextensions enabledelayedexpansion
for /f "delims=" %%i in (%~dp0\..\.vscode\extensions.json) do (
    set extension=%%i
    set extension=!extension: =!
    if "x!extension:~-1!"=="x," (
        set extension=!extension:~1,-2!
        call "%LocalAppData%\Programs\Microsoft VS Code\bin\code.cmd" --install-extension !extension! --force
    )
)
endlocal