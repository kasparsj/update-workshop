# SuperCollider

## Startup file

[startup.scd](startup.scd)

## DMX lighting

[dmx-lighting.scd](dmx-lighting.scd)

# TidalCycles

## Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

[miditidal-samples](miditidal-samples)

## Boot script (custom shortcuts and functions)

## Much more drummachine samples

https://github.com/ritchse/tidal-drum-machines

```supercollider 
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```

# Sensors

## Android app

[app-debug.apk](app-debug.apk)
