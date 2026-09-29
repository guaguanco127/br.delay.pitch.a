# Ableton Max for Live device: br.delay.pitch.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.pitch, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.pitch](https://github.com/guaguanco127/br.delay.pitch)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max/MSP version 8.5.6. and RNBO 1.2.3

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Version History](#Version)   
  

## <a name="About"></a>About

This is a delay-based Max/MSP abstraction, and Ableton Max for Live device that introduces a pitch-shifter in the delay line. A low pass and high pass filter is included to prevent extreme build up of high and low frequencies within the feedback line. 

Only works as an abstraction or a device. External objects and RNBO not available yet.  

**On/Off:** Turn the effect on or bypass
  
**Pitchshift:** Pitch-shift Factor in steps. -24. to 24. Default 0. Microtonal pitchshifting is possible by using numbers in between integers. For example, -0.50 is pitch-shifted down by a quarter tone. This portion of the effect introduces a latency of 2048 samples. 

**Delay Time:** Delay time in ms. Between 0. and 1000 ms. It is important to note that the lowest possible delay time is actually the signal vector size in samples. For example, if the vector size is set to 256 samples (Which is approximately 5.8 ms at 44,100 sample rate) combined with the latency of the pitch-shifter  (Which is approximately 46.43 at 44,100 sample rate) then the shortest delay would be approximately 52.23 ms. Regardless of the perscribed ms delay time, this will be the resulting minimum delay. If the delay time is set to be above 5.8 ms, then the delay time will be the perscribed time plusthe latency of the pitch-shifter. 
  
**Feedback:** The amount of signal that is fed back into the delay line. The range is between 0 and 0.99 

**Dry/Wet:** The amount of dry and wet signal between 0. and 100. The default is 100.



## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have the Ableton Live Suite installed in your computer. This was tested on version 11. Make sure Ableton is turned off while installing. 

2. For Macintosh:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects  
Copy and paste br.delay.pitch.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double click on the device, or drag/drop it onto the track where you wish to use it.    

## <a name="Version"></a>Version History 

br.delay.pitch.1.1 included a dc block into the feedback loop on 05-14-2024
    



 





