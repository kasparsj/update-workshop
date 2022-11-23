# SuperCollider

## DMX lighting

[dmx-lighting.scd](dmx-lighting.scd)

# TidalCycles

## Much more drummachine samples

https://github.com/ritchse/tidal-drum-machines

```supercollider 
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```
