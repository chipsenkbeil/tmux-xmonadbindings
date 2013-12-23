tmux XMonad keybindings
=======================

A tmux configuration file that provides "XMonad" keybindings.

Issues
------

tmux has limited support for Shift-<KEY> bindings. From what I have seen in
the current source (trunk of 2013-12-23), it only handles cases like function
keys, arrow keys, numbers, and a few others.

Keys like return (enter) and tab combined with shift are not detected; so, this
causes some issues for XMonad key combinations like Mod-Shift-Return for
creating a new terminal pane.

Furthermore, attempting to remove the prefix and using 
`bind-key -n <KEYS> <COMMAND>` causes more combinations to fail as instances
like `C-Enter` are not detected.

Differences
-----------

As a result of these issues, the following bindings need to be changed, which
causes this to be much less "XMonad" like.

1. Shift is not reliable for all cases; so, all bindings using shift are
   altered in the same way so they can be remembered more easily.

