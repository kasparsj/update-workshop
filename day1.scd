// hello world
// events
(\instrument: "sosSnare", amp: 1).play

// hello world 2
// sintezators
x = { SinOsc.ar(SinOsc.ar(1/2).range(100, 800))*0.5 }.play;
y = { WhiteNoise.ar()*0.5 }.play;
z = { Crackle.ar()*0.5 }.play;

x.free;
y.free;

{ Impulse.ar(1, 0.0, 0.5, 0) }.play


// vienmēr:
// "cmd+." kill all
// "cmd+d" help

Quarks.install("SCLOrkSynths")
SCLOrkSynths.gui

(
TempoClock.default.tempo = 2;
Pbindef( \sosKick1,
	\instrument, "sosKick",
	\amp, Pseq([1, 0, 1, 0], inf)
).play;
Pbindef( \sosSnare1,
	\instrument, "sosSnare",
	\amp, Pseq([0, 1, 0, 1], inf)
).play;
Pbindef( \sosHats1,
	\instrument, "hihat1",
	\dur, 1/2,
	\amp, Pseq([1, 1, 1, 1], inf)
).play;
)

(
Pbindef( \cs80leadMH,
	\instrument, "cs80leadMH",
	\ctranspose, 3,
	\dur, Pseq([4, 2, 3, 7, Rest(5/2), 5/2, 3/4, 9/4], inf) * 0.85,
	\amp, 0.5,
	\octave, Pwhite(1, 5, inf),
	\legato, 1,
	\degree, Pseq([0, 1, -2, -3, \rest, 0, 1, 3], inf)
).play;
);

https://estuary.mcmaster.ca/
