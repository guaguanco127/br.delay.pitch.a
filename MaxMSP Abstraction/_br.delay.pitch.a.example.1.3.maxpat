{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 139.0, 132.0, 1350.0, 800.0 ],
        "description": "_br.delay.pitch.a.example.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: built around gizmo~ (Cycling '74).",
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 887.0, 5.0, 468.0, 47.0 ],
                    "text": "_br.delay.pitch.a.example.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: built around gizmo~ (Cycling '74)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "ex-intro",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 5.0, 840.0, 47.0 ],
                    "text": "br.delay.pitch.a 1.3: pitch-shifting delay. The input is pitch shifted (gizmo~ FFT, -24 to +24 semitones), then delayed, with feedback (up to 1.25 = building), a highpass/lowpass in the loop and Dry/Wet. On/Off only gates NEW input: the repeats keep going after you switch it off. NEW in 1.3: State outlet (see the tab)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "src-h",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 60.0, 145.0, 20.0 ],
                    "text": "1. Source (one or both)"
                }
            },
            {
                "box": {
                    "id": "mic-t",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 15.0, 85.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mic-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 86.0, 110.0, 20.0 ],
                    "text": "mic / line in 1 + 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mic-m",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 115.0, 45.0, 22.0 ],
                    "text": "$1 50"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mic-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 15.0, 140.0, 43.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "adc",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 75.0, 115.0, 58.0, 22.0 ],
                    "text": "adc~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mic-L",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 15.0, 170.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mic-R",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 170.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dem-lm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 165.0, 60.0, 78.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "dem-t",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 165.0, 85.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dem-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 190.0, 86.0, 240.0, 20.0 ],
                    "text": "demo: saw plucks, 220 Hz left, 330 Hz right"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dem-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 165.0, 115.0, 70.0, 22.0 ],
                    "text": "metro 900"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dem-env",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 165.0, 140.0, 75.0, 22.0 ],
                    "text": "1 5 0. 250"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dem-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 165.0, 165.0, 43.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sawL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 115.0, 64.0, 22.0 ],
                    "text": "saw~ 220"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sawR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 115.0, 64.0, 22.0 ],
                    "text": "saw~ 330"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sawLg",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 140.0, 50.0, 22.0 ],
                    "text": "*~ 0.3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sawRg",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 140.0, 50.0, 22.0 ],
                    "text": "*~ 0.3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "demL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 195.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "demR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 320.0, 195.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sumL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 15.0, 235.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sumR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 235.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "bp",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.delay.pitch.a.1.3.maxpat",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 15.0, 422.0, 145.0, 153.0 ],
                    "varname": "br.delay.pitch.a",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "bp-c",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 89.0, 305.0, 295.0, 33.0 ],
                    "text": "br.delay.pitch.a.1.3 (bpatcher). It opens BYPASSED: turn it on."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "notes",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 422.0, 162.0, 87.0 ],
                    "text": "Keep these files together, next to your patch: br.delay.pitch.a.1.3.maxpat and br.delay.pitch.pfft.maxpat (the pitch shifter it loads)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "out-h",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 605.0, 200.0, 20.0 ],
                    "text": "2. Output (starts muted)"
                }
            },
            {
                "box": {
                    "id": "gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 15.0, 630.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "example-gain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "example-gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "gain-lm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 630.0, 92.0, 22.0 ],
                    "text": "loadmess -70"
                }
            },
            {
                "box": {
                    "id": "dac-t",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 725.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dac-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 102.0, 726.0, 90.0, 20.0 ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 780.0, 40.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1350.0, 774.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State outlet of br.delay.pitch.a",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "txt",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 496.0, 60.0 ],
                                    "text": "br.delay.pitch.a sends its state out of its LAST outlet as named messages (<name> <value>) the moment a setting changes, from the panel, an inlet, or (version b) its own randomizer. Route them by name to mirror the panel elsewhere (another UI, Mira, a preset system)."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "from",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 100.0, 200.0, 20.0 ],
                                    "text": "from the main tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "route",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 9,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 30.0, 135.0, 483.0, 22.0 ],
                                    "text": "route on pitch delay feedback drywet highpass lowpass mode"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "n-on",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-on",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 225.0, 125.0, 20.0 ],
                                    "text": "on (0 bypass, 1 on)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-pitch",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 160.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-pitch",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 160.0, 225.0, 125.0, 20.0 ],
                                    "text": "pitch (st)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-delay",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 290.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-delay",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 290.0, 225.0, 125.0, 20.0 ],
                                    "text": "delay (ms)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-feedback",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 420.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-feedback",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 420.0, 225.0, 125.0, 20.0 ],
                                    "text": "feedback"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-drywet",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 550.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-drywet",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 550.0, 225.0, 125.0, 20.0 ],
                                    "text": "drywet (%)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-highpass",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 680.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-highpass",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 680.0, 225.0, 125.0, 20.0 ],
                                    "text": "highpass (Hz)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "n-lowpass",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 810.0, 200.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-lowpass",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 810.0, 225.0, 125.0, 20.0 ],
                                    "text": "lowpass (Hz)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "unm",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 160.0, 270.0, 134.0, 20.0 ],
                                    "text": "(last outlet: unmatched)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "n-mode",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 270.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "l-mode",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 295.0, 129.0, 20.0 ],
                                    "text": "mode (0 insert, 1 gate)"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "route", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-delay", 0 ],
                                    "source": [ "route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-drywet", 0 ],
                                    "source": [ "route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-feedback", 0 ],
                                    "source": [ "route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-highpass", 0 ],
                                    "source": [ "route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-lowpass", 0 ],
                                    "source": [ "route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-mode", 0 ],
                                    "source": [ "route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-on", 0 ],
                                    "source": [ "route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n-pitch", 0 ],
                                    "source": [ "route", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 230.0, 630.0, 128.0, 22.0 ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "st-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 655.0, 330.0, 20.0 ],
                    "text": "State outlet (3rd outlet) -> see the State outlet tab"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-head",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 108.0, 157.0, 20.0 ],
                    "text": "3. Messages into the inlets"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 133.0, 149.0, 20.0 ],
                    "text": "On/Off (inlet 3)"
                }
            },
            {
                "box": {
                    "id": "m-t0",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 624.0, 133.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 161.0, 149.0, 20.0 ],
                    "text": "Pitch, semitones (inlet 4)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m1-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 161.0, 52.0, 22.0 ],
                    "text": "-12"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m1-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 161.0, 52.0, 22.0 ],
                    "text": "-5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m1-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 161.0, 52.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m1-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 798.0, 161.0, 52.0, 22.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m1-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 856.0, 161.0, 52.0, 22.0 ],
                    "text": "12"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 189.0, 149.0, 20.0 ],
                    "text": "Delay ms (inlet 5)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m2-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 189.0, 52.0, 22.0 ],
                    "text": "100"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m2-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 189.0, 52.0, 22.0 ],
                    "text": "250"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m2-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 189.0, 52.0, 22.0 ],
                    "text": "500"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m2-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 798.0, 189.0, 52.0, 22.0 ],
                    "text": "1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 217.0, 149.0, 20.0 ],
                    "text": "Feedback (inlet 6)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m3-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 217.0, 52.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m3-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 217.0, 52.0, 22.0 ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m3-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 217.0, 52.0, 22.0 ],
                    "text": "0.9"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m3-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 798.0, 217.0, 52.0, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m3-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 856.0, 217.0, 52.0, 22.0 ],
                    "text": "1.2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 245.0, 149.0, 20.0 ],
                    "text": "Dry/Wet % (inlet 7)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m4-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 245.0, 52.0, 22.0 ],
                    "text": "50"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m4-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 245.0, 52.0, 22.0 ],
                    "text": "100"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 273.0, 149.0, 20.0 ],
                    "text": "Highpass Hz (inlet 8)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m5-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 273.0, 52.0, 22.0 ],
                    "text": "40"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m5-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 273.0, 52.0, 22.0 ],
                    "text": "200"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m5-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 273.0, 52.0, 22.0 ],
                    "text": "1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-l6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 305.0, 149.0, 20.0 ],
                    "text": "Lowpass Hz (inlet 9)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m6-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 301.0, 52.0, 22.0 ],
                    "text": "1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m6-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 682.0, 301.0, 52.0, 22.0 ],
                    "text": "4000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-m6-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 740.0, 301.0, 52.0, 22.0 ],
                    "text": "12000"
                }
            },
            {
                "box": {
                    "id": "m-tmode",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 594.0, 325.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "m-lmode",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 333.0, 149.0, 20.0 ],
                    "text": "Mix Mode (inlet 10)"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "mic-L", 1 ],
                    "source": [ "adc", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mic-R", 1 ],
                    "source": [ "adc", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain", 1 ],
                    "source": [ "bp", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain", 0 ],
                    "source": [ "bp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "st", 0 ],
                    "source": [ "bp", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "dac-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dem-l", 0 ],
                    "source": [ "dem-env", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "demL", 1 ],
                    "order": 1,
                    "source": [ "dem-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "demR", 1 ],
                    "order": 0,
                    "source": [ "dem-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dem-t", 0 ],
                    "source": [ "dem-lm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dem-env", 0 ],
                    "source": [ "dem-metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dem-metro", 0 ],
                    "source": [ "dem-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumL", 1 ],
                    "source": [ "demL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumR", 1 ],
                    "source": [ "demR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "source": [ "gain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain", 0 ],
                    "source": [ "gain-lm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 3 ],
                    "midpoints": [ 633.5, 376.3487243652344, 66.5, 376.3487243652344 ],
                    "source": [ "m-m1-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 3 ],
                    "midpoints": [ 691.5, 378.165771484375, 66.5, 378.165771484375 ],
                    "source": [ "m-m1-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 3 ],
                    "midpoints": [ 749.5, 379.9691162109375, 66.5, 379.9691162109375 ],
                    "source": [ "m-m1-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 3 ],
                    "midpoints": [ 807.5, 373.99267578125, 66.5, 373.99267578125 ],
                    "source": [ "m-m1-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 3 ],
                    "midpoints": [ 865.5, 373.3032531738281, 66.5, 373.3032531738281 ],
                    "source": [ "m-m1-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 4 ],
                    "midpoints": [ 633.5, 379.75689697265625, 80.5, 379.75689697265625 ],
                    "source": [ "m-m2-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 4 ],
                    "midpoints": [ 691.5, 370.3644104003906, 80.5, 370.3644104003906 ],
                    "source": [ "m-m2-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 4 ],
                    "midpoints": [ 749.5, 374.36810302734375, 80.5, 374.36810302734375 ],
                    "source": [ "m-m2-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 4 ],
                    "midpoints": [ 807.5, 377.1537780761719, 80.5, 377.1537780761719 ],
                    "source": [ "m-m2-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 5 ],
                    "midpoints": [ 633.5, 374.75750732421875, 94.5, 374.75750732421875 ],
                    "source": [ "m-m3-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 5 ],
                    "midpoints": [ 691.5, 372.2864990234375, 94.5, 372.2864990234375 ],
                    "source": [ "m-m3-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 5 ],
                    "midpoints": [ 749.5, 373.3894348144531, 94.5, 373.3894348144531 ],
                    "source": [ "m-m3-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 5 ],
                    "midpoints": [ 807.5, 376.4608154296875, 94.5, 376.4608154296875 ],
                    "source": [ "m-m3-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 5 ],
                    "midpoints": [ 865.5, 373.5111083984375, 94.5, 373.5111083984375 ],
                    "source": [ "m-m3-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 6 ],
                    "midpoints": [ 633.5, 376.1893615722656, 108.5, 376.1893615722656 ],
                    "source": [ "m-m4-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 6 ],
                    "midpoints": [ 691.5, 373.3045654296875, 108.5, 373.3045654296875 ],
                    "source": [ "m-m4-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 7 ],
                    "midpoints": [ 633.5, 373.848388671875, 122.5, 373.848388671875 ],
                    "source": [ "m-m5-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 7 ],
                    "midpoints": [ 691.5, 373.1428527832031, 122.5, 373.1428527832031 ],
                    "source": [ "m-m5-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 7 ],
                    "midpoints": [ 749.5, 374.6398620605469, 122.5, 374.6398620605469 ],
                    "source": [ "m-m5-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 8 ],
                    "midpoints": [ 633.5, 372.5, 136.5, 372.5 ],
                    "source": [ "m-m6-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 8 ],
                    "midpoints": [ 691.5, 372.5, 136.5, 372.5 ],
                    "source": [ "m-m6-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 8 ],
                    "midpoints": [ 749.5, 372.5, 136.5, 372.5 ],
                    "source": [ "m-m6-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 2 ],
                    "midpoints": [ 633.5, 383.5388488769531, 52.5, 383.5388488769531 ],
                    "source": [ "m-t0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 9 ],
                    "midpoints": [ 603.5, 386.5, 150.5, 386.5 ],
                    "source": [ "m-tmode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumL", 0 ],
                    "source": [ "mic-L", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumR", 0 ],
                    "source": [ "mic-R", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mic-L", 0 ],
                    "order": 1,
                    "source": [ "mic-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mic-R", 0 ],
                    "order": 0,
                    "source": [ "mic-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mic-l", 0 ],
                    "source": [ "mic-m", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mic-m", 0 ],
                    "source": [ "mic-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sawLg", 0 ],
                    "source": [ "sawL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "demL", 0 ],
                    "source": [ "sawLg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sawRg", 0 ],
                    "source": [ "sawR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "demR", 0 ],
                    "source": [ "sawRg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 0 ],
                    "source": [ "sumL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bp", 1 ],
                    "source": [ "sumR", 0 ]
                }
            }
        ],
        "parameters": {
            "bp::mm-text": [ "Mix Mode", "Mix Mode", 0 ],
            "bp::obj-11": [ "Feedback", "Feedback", 0 ],
            "bp::obj-15": [ "Delay", "Delay", 0 ],
            "bp::obj-16": [ "Dry/Wet", "Dry/Wet", 0 ],
            "bp::obj-17": [ "Pitchshift", "Pitchshift", 0 ],
            "bp::obj-601": [ "Highpass", "Highpass", 0 ],
            "bp::obj-611": [ "Lowpass", "Lowpass", 0 ],
            "bp::obj-9": [ "On/Off", "On/Off", 0 ],
            "gain": [ "example-gain", "gain", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}