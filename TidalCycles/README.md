# TidalCycles

[Boot script (custom shortcuts and functions)](BootTidal)

## Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

[miditidal-samples](miditidal-samples)

## More drummachine samples

https://github.com/ritchse/tidal-drum-machines

```supercollider
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```
