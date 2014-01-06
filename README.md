tmux bindings to replicate XMonad
=================================

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

Current status (BSD)
--------------------
* Key combinations using Return (Enter), Space, and Tab do not work as no
  capture program has been written to get modifier key states

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

