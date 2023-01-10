# CleAR-Sight Touch Listener #

This is the touch listener used in the [Clear-Sight prototype](https://github.com/imldresden/CleAR-Sight).

## Installation ##

1. Make sure that you have correctly installed Raspberry Pi OS.
2. Copy the files in the repository to the device, e.g., using git or scp:

    ````console
    $ scp .\prototype-transparent-tablet\touch-raspberry\* pi@XXX.XXX.XXX.XXX:~/touch-server/
    ````
3. Compile the touch listener binary, precompiled binaries are also in the repository:

    ````console
    $ gcc -o touchlistener touchlistener.c
    ````

3. Use chmod to make server.sh executable if it isn't.
4. Edit server.sh as needed, changing device name or IP address. Make sure the file has correct Unix style line endings!
5. Add server.sh to autostart:

    ````console
    $ sudo crontab -e
    
    Add the following lines:
    # automatically starts the server a few seconds after reboot
    @reboot /bin/sleep 30 ; "/home/pi/touch-server/server.sh"
    # switches power saving off for Wifi
    @reboot /sbin/iwconfig wlan0 power off
    ````