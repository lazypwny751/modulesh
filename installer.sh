#!/bin/bash

#    modules at any shell modules for bash script language - more than a snake
#    Copyright (C) 2021  lazypwny
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>
#    This program is distributed in the hope that it will be useful,

[ $UID != 0 ] && { echo "run it as root!" ; exit 1 ; }

case ${1} in
    [iI][nN][sS][tT][aA][lL][lL]|--[iI][nN][sS][tT][aA][lL][lL]|-[iI])
        [ ! -d /usr/local/lib/modulesh ] && mkdir /usr/local/lib/modulesh
        [ ! -d /usr/share/modulesh ] && mkdir /usr/share/modulesh
        chmod +x ./usr/bin/modulesh
        cp -r ./usr/share/modulesh/* /usr/share/modulesh
        cp -r ./usr/local/lib/modulesh/* /usr/local/lib/modulesh/ 
        cp -r ./usr/bin/modulesh /usr/bin/modulesh
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/*
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/manuals
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/manuals/*
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/local/lib/modulesh/ 
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/local/lib/modulesh/*
        echo "Installed."
    ;;
    [uU][nN][iI][nN][sS][tT][aA][lL][lL]|--[uU][nN][iI][nN][sS][tT][aA][lL][lL]|-[uU])
        [ -e /usr/bin/modulesh ] && rm /usr/bin/modulesh
        [ -d /usr/local/lib/modulesh ] && rm -rf /usr/local/lib/modulesh
        [ -d /usr/share/modulesh ] && rm -rf /usr/share/modulesh
        echo "Uninstalled."
    ;;
    [rR][eE][iI][nN][sS][tT][aA][lL][lL]|--[rR][eE][iI][nN][sS][tT][aA][lL][lL]|-[rR])
        # uninstall
        [ -e /usr/bin/modulesh ] && rm /usr/bin/modulesh
        [ -d /usr/local/lib/modulesh ] && rm -rf /usr/local/lib/modulesh
        [ -d /usr/share/modulesh ] && rm -rf /usr/share/modulesh
        # install
        [ ! -d /usr/local/lib/modulesh ] && mkdir /usr/local/lib/modulesh
        [ ! -d /usr/share/modulesh ] && mkdir /usr/share/modulesh
        chmod +x ./usr/bin/modulesh
        cp -r ./usr/share/modulesh/* /usr/share/modulesh    
        cp -r ./usr/local/lib/modulesh/* /usr/local/lib/modulesh/ 
        cp -r ./usr/bin/modulesh /usr/bin/modulesh
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/*
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/manuals
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/share/modulesh/manuals/*
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/local/lib/modulesh/ 
        chown ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /usr/local/lib/modulesh/*
        echo "Reinstalled."
    ;;
    *)
        echo -e "for install the script then type 'sudo bash ${0} --install'\n or if you want to uninstall the script then type 'sudo bash ${0} --uninstall'\n also you can make remove and install with 'sudo bash ${0} --reinstall'"
    ;;
esac
