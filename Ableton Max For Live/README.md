# Ableton Max for Live device: br.delay.pitch.a.1.2  

By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 

Repository for br.delay.pitch.a.1.2 (version a), with all related files, can be found here: [https://github.com/guaguanco127/br.delay.pitch.a](https://github.com/guaguanco127/br.delay.pitch.a)  
Version b (same sound plus just-intonation steps and Rand / Auto / Onset randomizing): [https://github.com/guaguanco127/br.delay.pitch.b](https://github.com/guaguanco127/br.delay.pitch.b)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)  

Version 1.2 was updated with Max 9. Earlier versions were created with Max/MSP 8.5.6. 

## Table of Contents 

[What's New in 1.2](#whats-new-in-12)  
[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Version History](#Version)  

## What's New in 1.2

- **Much lower CPU.** The spectral pitch shifter switches itself off completely once the effect is off and the repeats have died away, and wakes instantly when you turn it back on. About 1% CPU at rest.
- **Half the latency.** The pitch shifter now adds about 23 ms instead of 46 ms, so the repeats land closer to the Delay time.
- **Cleaner highs.** Partials shifted above the top of the audio range are dropped instead of folding back down as metallic, out-of-tune tones -- which mattered here, since every repeat is shifted again.
- **Warm, runaway-proof loop.** The feedback loop has a soft saturator, so repeats can never explode. Feedback now goes up to 1.25: 1.0 holds the loop forever, above 1.0 it builds into a saturated wash.
- **New Highpass and Lowpass controls** for the feedback loop (never below 40 Hz, never above 15 kHz), smooth and accurate at any setting.
- **Self-contained.** No third-party or Max example files are needed; the pitch-shifting FFT patch "br.delay.pitch.pfft" ships in each folder.
- **Starts bypassed** when loaded. Turning it off only stops new sound entering the loop -- the repeats keep going and ring out.

## <a name="About"></a>About

This is a delay-based Max/MSP abstraction, and Ableton Max for Live device that places a pitch-shifter inside the delay line, so every repeat is shifted again -- climbing or falling with each pass. The feedback loop is protected by a soft saturator and by a high pass and low pass filter, so pitch-shifted repeats can never build up too high, too low or too loud.

Only works as an abstraction or a device. External objects and RNBO not available yet. An important file is included in each folder called "br.delay.pitch.pfft.maxpat". Keep it in the same folder as the abstraction or device -- they will not work without it.

**On/Off:** Turns the effect on, or bypasses new input. The default is bypass. Turning it off only stops new sound entering the delay; the repeats already in the loop keep going and ring out (or hold, at Feedback 1.0 or above). Dry/Wet still works while it is off.
  
**Pitchshift:** Pitch-shift factor in semitones, -24 to 24. The default is 0. Microtonal pitch-shifting is possible by using numbers in between integers. For example, -0.50 is pitch-shifted down by a quarter tone. The pitch-shifter adds a latency of 1024 samples (about 23 ms at 44,100 Hz).

**Delay Time:** Delay time in ms, between 0 and 1000 ms. The default is 100 ms. The actual delay is the prescribed time plus the pitch-shifter's latency. The shortest possible delay is one signal vector plus that latency: for example, with a vector size of 256 samples (about 5.8 ms at 44,100 Hz), the shortest delay is about 29 ms.
  
**Feedback:** The amount of signal fed back into the delay line, between 0 and 1.25. The default is 0. At 1.0 the repeats hold forever; above 1.0 they build until the loop's soft saturator holds them, giving a dense, driven wash.

**Dry/Wet:** The amount of dry and wet signal between 0 and 100. The default is 100.  

**Highpass:** High pass filter in the feedback loop, between 40 Hz and 1,000 Hz. The default is 40 Hz. It never goes below 40 Hz, so low frequencies can never build up.

**Lowpass:** Low pass filter in the feedback loop, between 1,000 Hz and 15,000 Hz. The default is 12,000 Hz. It never goes above 15 kHz, so high frequencies can never build up.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have the Ableton Live Suite installed in your computer. Make sure Ableton is turned off while installing. 

2. For Macintosh:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects  
Copy and paste br.delay.pitch.a.1.2.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Also, copy and paste the file called br.delay.pitch.pfft.maxpat into the same folder. If this file is already there, then there is no reason to copy and paste it. **The device will not work without this file.**
  
5. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

6. Either double click on the device, or drag/drop it onto the track where you wish to use it.

## <a name="Version"></a>Version History  

Version 1.2 lowered CPU (the pitch-shifter switches off once off and silent), halved the pitch-shifter latency (1024 samples), removed foldover aliasing, added a soft saturator plus Highpass/Lowpass controls to the feedback loop, raised Feedback to 1.25, made it self-contained, and starts bypassed. The DC blocker now sits after the pitch-shifter.  
Version 1.1 included a dc block into the feedback line on 05-14-2024.
