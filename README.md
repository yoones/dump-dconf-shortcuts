I wrote this script to backup my current shortcuts for future debian fresh installations.

It dumps both regular and custom shortcuts. This script's output can later be given to bash.

Save shortcuts:
``$ ./dump-dconf-shortcuts.sh > my_shortcuts``

Load them back on another machine:
``$ bash < my_shortcuts``
