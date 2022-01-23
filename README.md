3dxdisp - 3Dconnexion SpacePilot display control library
========================================================

![logo](http://nuclear.mutantstargoat.com/sw/misc/3dxdisp-512.jpg)

3dxdisp is a very simple C library for controlling the LCD on a 3Dconnexion
SpacePilot 6-dof input device. See `example/src/example.c`, and the `3dxdisp.h`
header file, for details on how to use it.

Eventually this code will be integrated in the [free spacenav](http://spacenav.sourceforge.net)
project, but it's also useful as a standalone library, to write interesting
programs that use the otherwise pointless LCD for desktop notifications,
time/date, system monitoring, etc.

Currently 3dxdisp only works on FreeBSD systems.

License
-------
Copyright (C) 2018 John Tsiombikas <nuclear@member.fsf.org>

This program is free software. Feel free to use, modify, and/or redistribute it
under the terms of the MIT/X11 license. See LICENSE for details.

Build
-----
To be able to run the example program, or your own 3dxdisp programs, as an
unpriviledged user, the space pilot uhid device must have the appropriate
permissions. The best way to do that, is to add a new file in `/etc/devd/`
or `/usr/local/etc/devd/` with the following contents:

notify 200 {
        match "system"          "USB";
        match "subsystem"       "DEVICE";
        match "type"            "ATTACH";
        match "vendor"          "0x046d";
        match "product"         "0xc625";
        action "bin/chmod 0666 /dev/$cdev";
};
