https://github.com/ritchse/tidal-drum-machines

```supercollider 
// inside your startup.scd add:
	~drumMachinesDir = "/Users/kasparsj/Music/tidal-drum-machines/machines";
	~dirt.loadSoundFiles(~drumMachinesDir ++ "/*/*", namingFunction: { |x| x.basename.replace("-","")});
```
