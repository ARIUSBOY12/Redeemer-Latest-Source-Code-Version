@echo off
setlocal

where python >nul 2>nul || (
    echo Error: Python is not installed. Please install Python and try again.
    pause
    exit /b 1
)

where pip >nul 2>nul || (
    echo Error: pip is not installed. Please install pip and try again.
    pause
    exit /b 1
)

cls
color 0A

pip list

set "packages=colorama pystyle pymem psutil requests flask customtkinter Pillow pysimplegui Image win10toast winotify"

pip install --upgrade --upgrade-strategy eager %packages%
echo Done!
cls
python ui.py

cls

