#!/bin/bash

pyinstaller --noconfirm --onefile --console --add-data "$3:." --add-data "$2:img/" "$1"

#pyinstaller --noconfirm --onefile --console --add-data "/home/akmot/Documents/GitHub/Pyinstaller_i386_Ubunru_12.03/linaudit_py.sh:." --add-data "/home/akmot/Documents/GitHub/Pyinstaller_i386_Ubunru_12.03/img:img/"  "/home/akmot/Documents/GitHub/Pyinstaller_i386_Ubunru_12.03/CyCLOPS.py"