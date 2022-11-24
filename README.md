# Live-coding workshop at Update media art festival (11.2022)

https://update.mplab.lv/

## Performance

We had problems running Troop and decided not to use it for performance.

~~We will be performing using Troop:~~

~~https://github.com/Qirky/Troop~~

~~[Download Windows executable(Download Client)](https://github.com/Qirky/Troop/releases)~~

## SuperCollider

### Startup file

[startup.scd](startup.scd)

### DMX lighting

[dmx-lighting.scd](dmx-lighting.scd)

### OSC VJ software

#### Resolume

[Resolume OSC commands](https://resolume.com/download/Manual/OSC/OSC%20list.txt)

#### OSC_VJ

Download MacOS compiled binary here:

https://github.com/kasparsj/update-workshop/releases/tag/osc_vj_alpha

Read the docs (GIT):

https://github.com/kasparsj/osc_vj

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

[Sensors](sensors)
