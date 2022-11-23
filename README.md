# Live-coding workshop at Update media art festival (11.2022)

https://update.mplab.lv/

## SuperCollider

### Startup file

[startup.scd](startup.scd)

### DMX lighting

[dmx-lighting.scd](dmx-lighting.scd)

## TidalCycles

[Boot script (custom shortcuts and functions)](BootTidal)

### Estuary

Multi-user TidalCycles live coding online

https://estuary.mcmaster.ca/

[miditidal-samples](miditidal-samples)

### Much more drummachine samples

https://github.com/ritchse/tidal-drum-machines

```supercollider 
// inside your startup.scd add:
// change the path
~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```

## Sensors

### Android app (Sensor2OSC)

https://github.com/kasparsj/Sensor2OSC/

[v0.1.0 debug APK](app-debug.apk)

### SensorVisualizer app

Also includes Arduino (M5StickC) code for sending motion sensor data.

https://github.com/kasparsj/SensorVisualizer
