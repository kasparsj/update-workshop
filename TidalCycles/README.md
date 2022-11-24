# TidalCycles

On day 1 we looked at Estuary.

## Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

[miditidal-samples](miditidal-samples)

## Installation

On day 2 we installed TidalCycles.

First try the TidalCycles install script:

`curl https://raw.githubusercontent.com/tidalcycles/tidal-bootstrap/master/tidal-bootstrap.command -sSf | sh`

In case that fails, install Haskell via GHCUP first:

`curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

Then try again running the TidalCycles script.

There is a know problem with MacOS - your user directory should not have any space characters in it (e.g. "User 1" won't work).

[Boot script (custom shortcuts and functions)](BootTidal)

## More drummachine samples

https://github.com/ritchse/tidal-drum-machines

```supercollider
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```
