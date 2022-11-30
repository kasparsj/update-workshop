# TidalCycles

On day 1 we looked at Estuary.

## Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

Here is the full list of samples supported by Estuary:

[miditidal-samples](miditidal-samples)

## Installation

On day 2 we installed TidalCycles.

[see INSTALL.md](INSTALL.md)

## More drummachine samples

If you need more drum samples, there is a huge sample library downloadable for free:

https://github.com/ritchse/tidal-drum-machines

```supercollider
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```

## Mutable Instruments synths

It is possible to control software versions of Mutable instruments synthesizers from TidalCycles. Refer to:

https://tidalcycles.org/docs/reference/mi-ugens/
