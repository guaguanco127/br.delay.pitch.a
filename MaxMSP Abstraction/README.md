# Max/MSP Abstraction: br.delay.pitch.a.1.4  

By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 

Repository for br.delay.pitch.a.1.4 (version a), with all related files, can be found here: [https://github.com/guaguanco127/br.delay.pitch.a](https://github.com/guaguanco127/br.delay.pitch.a)  
Version b (same sound plus just-intonation steps and Rand / Auto / Onset randomizing): [https://github.com/guaguanco127/br.delay.pitch.b](https://github.com/guaguanco127/br.delay.pitch.b)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)  

Versions 1.2 through 1.4 were updated with Max 9. Earlier versions were created with Max/MSP 8.5.6. 

## Table of Contents 

[What's New in 1.4](#whats-new-in-14)  
[What's New in 1.3](#whats-new-in-13)  
[What's New in 1.2](#whats-new-in-12)  
[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Version History](#Version) 

## What's New in 1.4

- **Mix Mode is now "Thru" / "Aux" (was "Insert" / "Gate").** "Thru" (0) lets the dry sound pass while the effect is off; "Aux" (1) is silent until you turn it on, for use on a send/return. Only the names changed: the numbers, the default and the sound are exactly as in 1.3, so 1.4 swaps in without rewiring.

## What's New in 1.3

- **Insert / Gate (Mix Mode):** a new switch for what happens to the dry sound while the effect is off. Insert (the default) passes it, exactly like 1.2; Gate silences it, so only the repeats ring out.
- **State outlet** (abstraction only): a new last outlet sends every setting as a named message the moment it changes (`on`, `pitch`, `delay`, `feedback`, `drywet`, `highpass`, `lowpass`, `mode`). See [State outlet](https://github.com/guaguanco127/br.delay.pitch.a/tree/main/MaxMSP%20Abstraction#State).
- Inlets 1-9 and the L/R outlets are unchanged; Mix Mode is the new last inlet (10). So 1.3 swaps in for 1.2 without rewiring.
- **New example patch:** _br.delay.pitch.a.example.1.3 with a demo source, messages into every inlet and a State outlet tab.
- The controls have readable names (On/Off, Pitchshift, Delay, Feedback, Dry/Wet, Highpass, Lowpass, Mix Mode), so presets and pattr show them clearly.

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

**Mix Mode (Thru / Aux):** What happens to your dry sound while the effect is off. Thru (the default) lets the dry sound pass through, as before. Aux silences it, so only the repeats already in the loop ring out. While the effect is on, Mix Mode changes nothing.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.delay.pitch.a.1.4.maxpat inside of the same folder as the Max patch you are using.      

3. Also, copy and paste the file called br.delay.pitch.pfft.maxpat into the same folder. If this file is already there, then there is no reason to copy and paste it. **The abstraction will not work without this file.**

4. In the Max patch you are using, create an object called br.delay.pitch.a.1.4 

5. Alternatively, you could also create this inside of a bpatcher object and use all of the preset UI objects featured inside the abstraction. To do this, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the br.delay.pitch.a.1.4.maxpat located within the same folder as your project. 

## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. The first two outlets are the left and right outputs; the third is the State outlet.

Every control has its own inlet. Sending a value to an inlet moves its on-screen control too, so the display always matches the sound. Hover over an inlet in Max to see the same information.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left audio in | Signal | | |
| 2 | Right audio in | Signal | | |
| 3 | On/Off | Int | 0 = Bypass, 1 = On | 0 |
| 4 | Pitch Shift | Float | -24 - 24 semitones | 0 |
| 5 | Delay | Float | 0 - 1000 ms | 100 |
| 6 | Feedback | Float | 0 - 1.25, 1 = infinite hold, above 1 = building (tanh-limited) | 0 |
| 7 | Dry/Wet | Float | 0 - 100 % | 100 |
| 8 | Highpass | Float | 40 - 1000 Hz, loop filter | 40 |
| 9 | Lowpass | Float | 1000 - 15000 Hz, loop filter | 12000 |
| 10 | Mix Mode | Int | 0 = Thru (Off passes the dry signal), 1 = Aux (Off silences the dry signal; the repeats still ring out) | 0 |

**Upgrading from 1.1:** inlets 1-7 are unchanged, but On/Off now defaults to 0 (bypass) and Feedback now reaches 1.25. Inlets 8 (Highpass) and 9 (Lowpass) are new.

| Outlet | Output | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | State | Messages: `<name> <value>` (see [State outlet](#State)) |

Double click on the object and you can see inside of the object. This way you can study how it was built. 

## <a name="State"></a>State outlet

The last outlet sends the current settings as named messages the moment they change, for example `delay 250.`, `on 1`, `drywet 50.`. Clicking a control, numbers into the inlets and preset recalls all show up; repeats are filtered out. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route on pitch delay feedback drywet highpass lowpass mode], not by position, so your patch keeps working if a later version adds controls.

| Name | Control | Values |
|---|---|---|
| on | On/Off | 0 = Bypass, 1 = On |
| pitch | Pitchshift | -24 - 24 semitones |
| delay | Delay | 0 - 1000 ms |
| feedback | Feedback | 0 - 1.25 |
| drywet | Dry/Wet | 0 - 100 % |
| highpass | Highpass | 40 - 1000 Hz |
| lowpass | Lowpass | 1000 - 15000 Hz |
| mode | Mix Mode | 0 = Thru, 1 = Aux |

## <a name="Example"></a>Example Patch

Open _br.delay.pitch.a.example.1.4.maxpat (keep it in the same folder as the abstraction and br.delay.pitch.pfft.maxpat). Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **Source:** the demo saw plucks (220 Hz left, 330 Hz right) start when the patch opens; turn on the mic / line in 1 + 2 toggle to use your own sound.
- **Delay-Pitch:** it opens bypassed, so turn it on on the panel (or with the On/Off toggle), then try the pitch, delay and feedback messages.
- **Mix Mode:** turn the effect off with a tail ringing and compare Thru (dry keeps playing) with Aux (only the repeats).
- **State outlet tab:** the numbers follow every setting as you change it on the panel or with the messages.

## <a name="Version"></a>Version History  

Version 1.4 (10-09-2026) renamed Mix Mode to Thru / Aux.  
Version 1.3 (10-09-2026) added Insert / Gate (Mix Mode), a State outlet and an example patch to the abstraction, and readable control names.  
Version 1.2 lowered CPU (the pitch-shifter switches off once off and silent), halved the pitch-shifter latency (1024 samples), removed foldover aliasing, added a soft saturator plus Highpass/Lowpass controls to the feedback loop, raised Feedback to 1.25, made it self-contained, and starts bypassed. The DC blocker now sits after the pitch-shifter.  
Version 1.1 included a dc block into the feedback line on 05-14-2024.

## <a name="Credits"></a>Credits

Built around gizmo~ (Cycling '74).
