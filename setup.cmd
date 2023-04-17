@echo off
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: Setup Theme
echo %ESC%[92mSetting up VSCode Theme...%ESC%[0m
call %~dp0\scripts\setup-theme.cmd

:: Setup Extensions
echo %ESC%[92mSetting up VSCode Extensions...%ESC%[0m
call %~dp0\scripts\setup-extensions.cmd

:: Setup Settings
echo %ESC%[92mSetting up VSCode Settings...%ESC%[0m
call %~dp0\scripts\setup-settings.cmd

:: Done
echo %ESC%[95mDone! Restart VSCode to complete the installation.%ESC%[0m
pause