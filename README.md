tmux bindings to replicate XMonad
=================================

For tmux version 1.8.x. This has not been tested with newer versions of tmux and may require alterations to the configuration file to be compatible with any version greater than 1.8.x.

How to install
--------------
I have not written an automated build yet for the entire system. Currently, you
can build the modifier program - used to detect modifier key states on their
own - by entering the `src/` directory and running `make`. The binary for your
architecture should be found within the _build_ directory within your
architecture's directory.

You should move the modifier program into location reachable by your path such
as `/usr/local/bin` and then copy the configuration file found in `src/conf/`
to either your home directory as `.tmux.conf` or your global location for
tmux configuration files. In many Linux systems, this would be `/etc/tmux.conf`
while on FreeBSD, it would be `/usr/local/etc/tmux.conf`.

Current status (Mac OS X)
-------------------------
* Mac OS X (10.6+) is supported except for the following:
    * Mod-Shift-Tab does not work (working on capturing the input)
    * Mod-Shift-/ does not work (working on capturing the input)
    * gmrun/dmenu are not tested (and probably do not work), although key
      bindings do attempt to execute the programs
* Mouse support is available in terminal applications that support it
    * Mac's default Terminal.app does not support mouse interaction
    * [iTerm2](http://www.iterm2.com) was used to test the bindings and does
      support mouse interaction

Current status (Linux)
----------------------
* Key combinations using Return (Enter), Space, and Tab do not work as no
  capture program has been written to get modifier key states
* Other bindings work (from brief testing)

Current status (BSD)
--------------------
* Key combinations using Return (Enter), Space, and Tab do not work as no
  capture program has been written to get modifier key states
* Other bindings work (from brief testing)

Unsupported default operations
------------------------------
* Mod-n (resizing to correct size)
* Mod-t (pushing a floating window back into the tiling)
* Mod-, (increment the number of tiles in the master area)
* Mod-. (decrement the number of tiles in the master area)
* Mod-{w,e,r} (switch to physical/Xinerama screens 1, 2, or 3)
* Mod-Shift-{w,e,r} (move tile to screen 1, 2, or 3)
* Mod-button1 (set the tile to floating mode and move by dragging)
* Mod-button2 (raise the tile to the top of the stack)
* Mod-button3 (set the pane to floating mode and resize by dragging)

_Please see the documentation in the doc/ directory for more information._

