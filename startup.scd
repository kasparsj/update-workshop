(
// configure the sound server: here you could add hardware specific options
// see http://doc.sccode.org/Classes/ServerOptions.html
s.options.numBuffers = 1024 * 256; // increase this if you need to load more samples
s.options.numWireBufs = 1024; // increase if you get "exception in GraphDef_Recv: exceeded number of interconnect buffers." message
s.options.memSize = 8192 * 256; // increase this if you get "alloc failed" messages
s.options.maxNodes = 1024 * 32; // increase this if you are getting drop outs and the message "too many nodes"
s.options.numOutputBusChannels = 2; // set this to your hardware output channel size, if necessary
s.recSampleFormat = "int24";
s.recHeaderFormat="wav";
s.options.numInputBusChannels = 2;
//s.options.numInputBusChannels = 8;
s.latency = 0.3; // increase this if you get "late" messages

// boot the server and start SuperDirt
s.waitForBoot {
	// TBD
};
)
