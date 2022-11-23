// https://github.com/kasparsj/DMXQuark
// Quarks.install("https://github.com/kasparsj/DMXQuark.git")

~buf = DmxBuffer();
~buf.addDevice(OlaOsc());

// experiment changing the buffer directly
~buf.set(0, 255);
~buf.set(1, 255);
~buf.set(2, 255);
~buf.set(3, 255);
~buf.set(4, 255);
~buf.set(5, 255);
~buf.set(9, 255);
~buf.set(10, 127);
~buf.set(11, 255);
~buf.set(12, 255);

// reset the while buffer
512.do { |i|
	~buf.set(i, 0);
}

// load rainstar fixture library
DmxFixture.loadLibrary("rainstar");

// create a project
~dmx = DmxPatcher(\test);
~dmx.addFixture(DmxFixture(\rainstar_120_led_sharpy_beam_21, ~buf, 9), [\heads]);

// create a player
~player = DmxPlayer.default;

// run move_circle chase
PdmxChase(\move_circle, \group, \heads, \speed, 0.1).play;

// stop all chases
~player.stopAll;

(
// change color wheel every 5 seconds
AppClock.clear;
~player.stopAll;
{
	inf.do {
		PdmxScene(\group, \heads, \color_wheel, 255.rand).play;
		5.wait;
	}
}.fork;
)

// add "change_color" sound/synth to TidalCycles to control the lights on the beat
~dirt.soundLibrary.addSynth(\change_color, (play: {
	PdmxScene(\group, \heads, \color_wheel, 255.rand).play;
}));