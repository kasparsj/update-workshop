# TidalCycles

On day 1 we looked at Estuary.

## Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

Here is the full list of samples supported by Estuary:

[miditidal-samples](miditidal-samples)

## Installation

On day 2 we installed TidalCycles.

First try the TidalCycles install script:

`curl https://raw.githubusercontent.com/tidalcycles/tidal-bootstrap/master/tidal-bootstrap.command -sSf | sh`

In case that fails, install Haskell via GHCUP first:

`curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

Then try again running the TidalCycles script.

There is a know problem with MacOS - your user directory should not have any space characters in it (e.g. "User 1" won't work).

Once the installation completes, you should open Atom and create & run a test.tidal file:

`d1 $ s "cb"`

If you get sound you can try installing our custom BootTidal script, that adds lots of shortcuts and functions:

[Boot script (custom shortcuts and functions)](BootTidal)

## More drummachine samples

If you need more drum samples, there is a huge sample library downloadable for free:

https://github.com/ritchse/tidal-drum-machines

```supercollider
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```
