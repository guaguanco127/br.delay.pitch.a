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
		"openrect": [
			-350.0,
			-1043.0,
			145.0,
			153.0
		],
		"openrectmode": 0,
		"openinpresentation": 1,
		"devicewidth": 145.0,
		"description": "br.delay.pitch.a.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: built around gizmo~ (Cycling '74).",
		"boxes": [
			{
				"box": {
					"comment": "Mix Mode (Int) 0 = Thru (Off passes the dry signal), 1 = Aux (Off silences the dry signal; the repeats still ring out). Default 0",
					"id": "mm-in",
					"index": 10,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1233.0,
						115.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"activebgoncolor": [
						0.618934978328545,
						0.744701397656435,
						0.953750108255376,
						1.0
					],
					"id": "mm-text",
					"maxclass": "live.text",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 1,
					"patching_rect": [
						166.5,
						180.0,
						54.0,
						26.0
					],
					"presentation": 1,
					"presentation_rect": [
						85.5,
						9.0,
						55.0,
						26.0
					],
					"saved_attribute_attributes": {
						"activebgoncolor": {
							"expression": "themecolor.live_numbox_triangle"
						},
						"valueof": {
							"parameter_enum": [
								"val1",
								"val2"
							],
							"parameter_longname": "Mix Mode",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "Mix Mode",
							"parameter_type": 2
						}
					},
					"text": "Thru",
					"texton": "Aux",
					"varname": "Mix Mode"
				}
			},
			{
				"box": {
					"id": "st-t-mode",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						226.5,
						184.0,
						40.0,
						22.0
					],
					"text": "t i i"
				}
			},
			{
				"box": {
					"id": "mm-eq",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						247.5,
						260.0,
						33.0,
						22.0
					],
					"text": "== 0"
				}
			},
			{
				"box": {
					"id": "mm-pak",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						166.5,
						286.0,
						60.0,
						22.0
					],
					"text": "pak 1 1"
				}
			},
			{
				"box": {
					"id": "mm-expr",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						230.0,
						286.0,
						100.0,
						22.0
					],
					"text": "expr $i1 * $i2"
				}
			},
			{
				"box": {
					"id": "mm-note",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20.0,
						230.0,
						140.0,
						47.0
					],
					"text": "bypass dry = Off AND Thru (Aux: Off = dry silent)"
				}
			},
			{
				"box": {
					"id": "st-c-mode",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						2370.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0"
				}
			},
			{
				"box": {
					"id": "st-p-mode",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2370.0,
						730.0,
						98.0,
						22.0
					],
					"text": "prepend mode"
				}
			},
			{
				"box": {
					"id": "st-t-on",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						406.0,
						221.5,
						40.0,
						22.0
					],
					"text": "t i i"
				}
			},
			{
				"box": {
					"id": "st-c-on",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1250.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0"
				}
			},
			{
				"box": {
					"id": "st-p-on",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1250.0,
						730.0,
						74.0,
						22.0
					],
					"text": "prepend on"
				}
			},
			{
				"box": {
					"id": "st-t-pitch",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						566.5,
						229.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-pitch",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1410.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-pitch",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1410.0,
						730.0,
						92.5,
						22.0
					],
					"text": "prepend pitch"
				}
			},
			{
				"box": {
					"id": "st-t-delay",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						658.0,
						869.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-delay",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1570.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-delay",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1570.0,
						730.0,
						92.5,
						22.0
					],
					"text": "prepend delay"
				}
			},
			{
				"box": {
					"id": "st-t-feedback",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						916.0,
						847.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-feedback",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1730.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-feedback",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1730.0,
						730.0,
						112.0,
						22.0
					],
					"text": "prepend feedback"
				}
			},
			{
				"box": {
					"id": "st-t-drywet",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						1069.0,
						837.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-drywet",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1890.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-drywet",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1890.0,
						730.0,
						99.0,
						22.0
					],
					"text": "prepend drywet"
				}
			},
			{
				"box": {
					"id": "st-t-highpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						612.0,
						528.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-highpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						2050.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-highpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2050.0,
						730.0,
						112.0,
						22.0
					],
					"text": "prepend highpass"
				}
			},
			{
				"box": {
					"id": "st-t-lowpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						740.0,
						516.0,
						40.0,
						22.0
					],
					"text": "t f f"
				}
			},
			{
				"box": {
					"id": "st-c-lowpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						2210.0,
						700.0,
						62.0,
						22.0
					],
					"text": "change 0."
				}
			},
			{
				"box": {
					"id": "st-p-lowpass",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						2210.0,
						730.0,
						105.5,
						22.0
					],
					"text": "prepend lowpass"
				}
			},
			{
				"box": {
					"comment": "State: each setting as <name> <value> the moment it changes (on, pitch, delay, feedback, drywet, highpass, lowpass, mode)",
					"id": "st-out",
					"index": 3,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						2600.0,
						820.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "st-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1250.0,
						670.0,
						480.0,
						20.0
					],
					"text": "State outlet: control -> t -> (old path) + change -> prepend <name> -> last outlet"
				}
			},
			{
				"box": {
					"id": "obj-signature",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						103.25,
						40.0,
						520.0,
						47.0
					],
					"text": "br.delay.pitch.a.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: built around gizmo~ (Cycling '74)."
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-601",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						565.0,
						502.0,
						41.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						92.5,
						40.0,
						41.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 3.0,
							"parameter_initial": [
								40.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Highpass",
							"parameter_mmax": 1000.0,
							"parameter_mmin": 40.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Highpass",
							"parameter_type": 0,
							"parameter_unitstyle": 3
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Highpass"
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-611",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						693.0,
						490.0,
						41.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						92.5,
						92.0,
						41.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 3.0,
							"parameter_initial": [
								12000.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Lowpass",
							"parameter_mmax": 15000.0,
							"parameter_mmin": 1000.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Lowpass",
							"parameter_type": 0,
							"parameter_unitstyle": 3
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Lowpass"
				}
			},
			{
				"box": {
					"id": "obj-18",
					"linecount": 4,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						653.5,
						164.0,
						230.0,
						60.0
					],
					"text": "br.delay.pitch.abs.1.1 included a dc block into the feedback loop on 05-14-2024\n\nguaguanco127@gmail.com"
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-11",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						869.0,
						821.0,
						41.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						49.5,
						92.0,
						41.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_longname": "Feedback",
							"parameter_mmax": 1.25,
							"parameter_modmode": 0,
							"parameter_shortname": "Feedback",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Feedback"
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-15",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						611.0,
						843.0,
						41.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						49.5,
						40.0,
						41.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_initial": [
								100.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Delay",
							"parameter_mmax": 1000.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Delay",
							"parameter_type": 0,
							"parameter_unitstyle": 2
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Delay"
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-16",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						1016.0,
						811.0,
						47.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						1.0,
						92.0,
						50.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_initial": [
								100.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Dry/Wet",
							"parameter_mmax": 100.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Dry/Wet",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Dry/Wet"
				}
			},
			{
				"box": {
					"activefgdialcolor": [
						0.313725490196078,
						0.313725490196078,
						0.313725490196078,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "obj-17",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						513.5,
						203.0,
						47.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						1.0,
						40.0,
						50.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activefgdialcolor": {
							"expression": ""
						},
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_initial": [
								0.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Pitchshift",
							"parameter_mmax": 24.0,
							"parameter_mmin": -24.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Pitchshift",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Pitchshift"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						774.0,
						1075.0,
						75.0,
						20.0
					],
					"text": "Feedback"
				}
			},
			{
				"box": {
					"id": "obj-59",
					"linecount": 4,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						371.0,
						919.0,
						151.0,
						60.0
					],
					"text": "The delay has a minimum delay that is equal to the signal vector size of your patch/project "
				}
			},
			{
				"box": {
					"id": "obj-58",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
						"rect": [
							59.0,
							104.0,
							640.0,
							480.0
						],
						"boxes": [
							{
								"box": {
									"comment": "",
									"id": "obj-43",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										40.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-44",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										136.0,
										46.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-47",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										60.5,
										288.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-54",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										146.5,
										288.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "Highpass Hz (40 - 1000)",
									"id": "obj-60",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										250.0,
										40.0,
										30.0,
										22.0
									]
								}
							},
							{
								"box": {
									"comment": "Lowpass Hz (1000 - 15000)",
									"id": "obj-61",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										400.0,
										40.0,
										30.0,
										22.0
									]
								}
							},
							{
								"box": {
									"id": "obj-70",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										110.0,
										45.0,
										22.0
									],
									"text": "tanh~"
								}
							},
							{
								"box": {
									"id": "obj-71",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										136.0,
										110.0,
										45.0,
										22.0
									],
									"text": "tanh~"
								}
							},
							{
								"box": {
									"id": "obj-72",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										260.0,
										59.0,
										22.0
									],
									"text": "biquad~"
								}
							},
							{
								"box": {
									"id": "obj-73",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										136.0,
										260.0,
										59.0,
										22.0
									],
									"text": "biquad~"
								}
							},
							{
								"box": {
									"id": "obj-74",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										340.0,
										59.0,
										22.0
									],
									"text": "biquad~"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										136.0,
										340.0,
										59.0,
										22.0
									],
									"text": "biquad~"
								}
							},
							{
								"box": {
									"id": "obj-76",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										250.0,
										80.0,
										108.0,
										22.0
									],
									"text": "clip 40. 1000."
								}
							},
							{
								"box": {
									"id": "obj-77",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										250.0,
										110.0,
										80.0,
										22.0
									],
									"text": "line 40. 5"
								}
							},
							{
								"box": {
									"id": "obj-78",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 5,
									"outlettype": [
										"signal",
										"signal",
										"signal",
										"signal",
										"signal"
									],
									"patching_rect": [
										250.0,
										200.0,
										157.0,
										22.0
									],
									"text": "filtercoeff~ highpass"
								}
							},
							{
								"box": {
									"id": "obj-79",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										400.0,
										80.0,
										129.0,
										22.0
									],
									"text": "clip 1000. 15000."
								}
							},
							{
								"box": {
									"id": "obj-80",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 2,
									"outlettype": [
										"",
										"bang"
									],
									"patching_rect": [
										400.0,
										110.0,
										101.0,
										22.0
									],
									"text": "line 12000. 5"
								}
							},
							{
								"box": {
									"id": "obj-81",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 5,
									"outlettype": [
										"signal",
										"signal",
										"signal",
										"signal",
										"signal"
									],
									"patching_rect": [
										400.0,
										290.0,
										150.0,
										22.0
									],
									"text": "filtercoeff~ lowpass"
								}
							},
							{
								"box": {
									"id": "obj-82",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										560.0,
										110.0,
										80.0,
										22.0
									],
									"text": "loadmess 1"
								}
							},
							{
								"box": {
									"id": "obj-83",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										560.0,
										140.0,
										108.0,
										22.0
									],
									"text": "loadmess 0.707"
								}
							},
							{
								"box": {
									"id": "obj-84",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										330.0,
										140.0,
										87.0,
										22.0
									],
									"text": "loadmess 40"
								}
							},
							{
								"box": {
									"id": "obj-85",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										480.0,
										140.0,
										108.0,
										22.0
									],
									"text": "loadmess 12000"
								}
							},
							{
								"box": {
									"id": "obj-86",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										250.0,
										140.0,
										39.0,
										22.0
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "obj-87",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										400.0,
										140.0,
										39.0,
										22.0
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "obj-88",
									"linecount": 2,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										560.0,
										200.0,
										420.0,
										20.0
									],
									"text": "loop guard: tanh~ bounds the level; HP floor 40 Hz, LP ceiling 15 kHz always hold"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-70",
										0
									],
									"source": [
										"obj-43",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-71",
										0
									],
									"source": [
										"obj-44",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-76",
										0
									],
									"source": [
										"obj-60",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-79",
										0
									],
									"source": [
										"obj-61",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										0
									],
									"source": [
										"obj-70",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										0
									],
									"source": [
										"obj-71",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										0
									],
									"source": [
										"obj-72",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										0
									],
									"source": [
										"obj-73",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-47",
										0
									],
									"source": [
										"obj-74",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-54",
										0
									],
									"source": [
										"obj-75",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-86",
										0
									],
									"source": [
										"obj-76",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										0
									],
									"source": [
										"obj-77",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										5
									],
									"order": 1,
									"source": [
										"obj-78",
										4
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										4
									],
									"order": 1,
									"source": [
										"obj-78",
										3
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										3
									],
									"order": 1,
									"source": [
										"obj-78",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										2
									],
									"order": 1,
									"source": [
										"obj-78",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										1
									],
									"order": 1,
									"source": [
										"obj-78",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										5
									],
									"order": 0,
									"source": [
										"obj-78",
										4
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										4
									],
									"order": 0,
									"source": [
										"obj-78",
										3
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										3
									],
									"order": 0,
									"source": [
										"obj-78",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										2
									],
									"order": 0,
									"source": [
										"obj-78",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-73",
										1
									],
									"order": 0,
									"source": [
										"obj-78",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-87",
										0
									],
									"source": [
										"obj-79",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-81",
										0
									],
									"source": [
										"obj-80",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										5
									],
									"order": 1,
									"source": [
										"obj-81",
										4
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										4
									],
									"order": 1,
									"source": [
										"obj-81",
										3
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										3
									],
									"order": 1,
									"source": [
										"obj-81",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										2
									],
									"order": 1,
									"source": [
										"obj-81",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-74",
										1
									],
									"order": 1,
									"source": [
										"obj-81",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										5
									],
									"order": 0,
									"source": [
										"obj-81",
										4
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										4
									],
									"order": 0,
									"source": [
										"obj-81",
										3
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										3
									],
									"order": 0,
									"source": [
										"obj-81",
										2
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										2
									],
									"order": 0,
									"source": [
										"obj-81",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-75",
										1
									],
									"order": 0,
									"source": [
										"obj-81",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										1
									],
									"order": 1,
									"source": [
										"obj-82",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-81",
										1
									],
									"order": 0,
									"source": [
										"obj-82",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										2
									],
									"order": 1,
									"source": [
										"obj-83",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-81",
										2
									],
									"order": 0,
									"source": [
										"obj-83",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-78",
										0
									],
									"source": [
										"obj-84",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-81",
										0
									],
									"source": [
										"obj-85",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-77",
										0
									],
									"source": [
										"obj-86",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-80",
										0
									],
									"source": [
										"obj-87",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						520.0,
						629.0,
						45.0,
						22.0
					],
					"text": "p Filter"
				}
			},
			{
				"box": {
					"comment": "Feedback (Float) 0 - 1.25, 1 = infinite hold, above 1 = building (tanh-limited). Default 0",
					"id": "obj-37",
					"index": 6,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						869.0,
						777.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Delay (Float) 0 - 1000 ms. Default 100",
					"id": "obj-36",
					"index": 5,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						622.0,
						793.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						853.0,
						896.0,
						39.0,
						22.0
					],
					"text": "$1 50"
				}
			},
			{
				"box": {
					"id": "obj-34",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"bang"
					],
					"patching_rect": [
						855.0,
						932.0,
						34.0,
						22.0
					],
					"text": "line~"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						817.0,
						1008.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-32",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						757.0,
						1008.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
						"rect": [
							59.0,
							104.0,
							904.0,
							723.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-44",
									"linecount": 5,
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										221.0,
										43.0,
										258.0,
										74.0
									],
									"text": "This allows for the changing of delay times without creating clicks and pops. \n\nIs switches to the one delay while muting the other (which isn't changed) "
								}
							},
							{
								"box": {
									"id": "obj-32",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										588.0,
										549.0,
										39.0,
										22.0
									],
									"text": "$1 50"
								}
							},
							{
								"box": {
									"id": "obj-33",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										588.0,
										516.0,
										33.0,
										22.0
									],
									"text": "== 0"
								}
							},
							{
								"box": {
									"id": "obj-34",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										701.5,
										549.0,
										39.0,
										22.0
									],
									"text": "$1 50"
								}
							},
							{
								"box": {
									"id": "obj-35",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										640.0,
										593.0,
										49.0,
										22.0
									],
									"text": "tapout~"
								}
							},
							{
								"box": {
									"id": "obj-36",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										636.0,
										679.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-37",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										701.5,
										593.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-38",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										588.0,
										593.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										521.0,
										679.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-40",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										522.0,
										593.0,
										49.0,
										22.0
									],
									"text": "tapout~"
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"tapconnect"
									],
									"patching_rect": [
										522.0,
										331.0,
										72.0,
										22.0
									],
									"text": "tapin~ 1000"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-42",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										521.0,
										773.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										379.0,
										457.0,
										42.0,
										22.0
									],
									"text": "gate 2"
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										379.0,
										409.0,
										29.5,
										22.0
									],
									"text": "+ 1"
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"float",
										"bang"
									],
									"patching_rect": [
										639.0,
										180.0,
										29.5,
										22.0
									],
									"text": "t f b"
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										639.0,
										147.0,
										80.0,
										22.0
									],
									"text": "speedlim 100"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-16",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										639.0,
										73.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "obj-15",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										325.0,
										162.0,
										70.0,
										22.0
									],
									"text": "loadmess 0"
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										204.0,
										549.0,
										39.0,
										22.0
									],
									"text": "$1 50"
								}
							},
							{
								"box": {
									"id": "obj-13",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										204.0,
										516.0,
										33.0,
										22.0
									],
									"text": "== 0"
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										317.5,
										549.0,
										39.0,
										22.0
									],
									"text": "$1 50"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "toggle",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"parameter_enable": 0,
									"patching_rect": [
										325.0,
										243.0,
										24.0,
										24.0
									]
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										256.0,
										593.0,
										49.0,
										22.0
									],
									"text": "tapout~"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										252.0,
										679.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										317.5,
										593.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										204.0,
										593.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										137.0,
										679.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										138.0,
										593.0,
										49.0,
										22.0
									],
									"text": "tapout~"
								}
							},
							{
								"box": {
									"id": "obj-19",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"tapconnect"
									],
									"patching_rect": [
										138.0,
										331.0,
										72.0,
										22.0
									],
									"text": "tapin~ 1000"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-22",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										138.0,
										37.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-23",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										528.0,
										33.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-24",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										137.0,
										773.0,
										30.0,
										30.0
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-12",
										0
									],
									"midpoints": [
										334.5,
										407.5,
										327.0,
										407.5
									],
									"order": 3,
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-13",
										0
									],
									"midpoints": [
										334.5,
										391.0,
										213.5,
										391.0
									],
									"order": 4,
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-21",
										0
									],
									"midpoints": [
										334.5,
										321.5,
										388.5,
										321.5
									],
									"order": 2,
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-33",
										0
									],
									"midpoints": [
										334.5,
										391.0,
										597.5,
										391.0
									],
									"order": 1,
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-34",
										0
									],
									"midpoints": [
										334.5,
										288.5,
										711.0,
										288.5
									],
									"order": 0,
									"source": [
										"obj-11",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-6",
										0
									],
									"source": [
										"obj-12",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-14",
										0
									],
									"source": [
										"obj-13",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										0
									],
									"source": [
										"obj-14",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-11",
										0
									],
									"source": [
										"obj-15",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-17",
										0
									],
									"source": [
										"obj-16",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-20",
										0
									],
									"source": [
										"obj-17",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-3",
										0
									],
									"order": 1,
									"source": [
										"obj-19",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-9",
										0
									],
									"midpoints": [
										147.5,
										368.0,
										265.5,
										368.0
									],
									"order": 0,
									"source": [
										"obj-19",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-11",
										0
									],
									"midpoints": [
										659.0,
										222.0,
										334.5,
										222.0
									],
									"source": [
										"obj-20",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-26",
										1
									],
									"midpoints": [
										648.5,
										242.0,
										411.5,
										242.0
									],
									"source": [
										"obj-20",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-26",
										0
									],
									"source": [
										"obj-21",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-19",
										0
									],
									"source": [
										"obj-22",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-41",
										0
									],
									"source": [
										"obj-23",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-3",
										0
									],
									"midpoints": [
										388.5,
										492.5,
										147.5,
										492.5
									],
									"order": 1,
									"source": [
										"obj-26",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-35",
										0
									],
									"midpoints": [
										411.5,
										486.5,
										649.5,
										486.5
									],
									"order": 0,
									"source": [
										"obj-26",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-40",
										0
									],
									"midpoints": [
										388.5,
										535.5,
										531.5,
										535.5
									],
									"order": 0,
									"source": [
										"obj-26",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-9",
										0
									],
									"midpoints": [
										411.5,
										509.5,
										265.5,
										509.5
									],
									"order": 1,
									"source": [
										"obj-26",
										1
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										0
									],
									"source": [
										"obj-3",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-38",
										0
									],
									"source": [
										"obj-32",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-32",
										0
									],
									"source": [
										"obj-33",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-37",
										0
									],
									"source": [
										"obj-34",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-36",
										0
									],
									"source": [
										"obj-35",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-42",
										0
									],
									"source": [
										"obj-36",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-36",
										1
									],
									"source": [
										"obj-37",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-39",
										1
									],
									"source": [
										"obj-38",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-42",
										0
									],
									"source": [
										"obj-39",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-24",
										0
									],
									"source": [
										"obj-4",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-39",
										0
									],
									"source": [
										"obj-40",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-35",
										0
									],
									"midpoints": [
										531.5,
										368.0,
										649.5,
										368.0
									],
									"order": 0,
									"source": [
										"obj-41",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-40",
										0
									],
									"order": 1,
									"source": [
										"obj-41",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										1
									],
									"source": [
										"obj-5",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-7",
										1
									],
									"source": [
										"obj-6",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-24",
										0
									],
									"source": [
										"obj-7",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-7",
										0
									],
									"source": [
										"obj-9",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						533.5,
						919.0,
						49.0,
						22.0
					],
					"text": "p Delay"
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						400.0,
						164.0,
						70.0,
						22.0
					],
					"text": "loadmess 0"
				}
			},
			{
				"box": {
					"comment": "On/Off (Int) 0 = Bypass, 1 = On. Default 0",
					"id": "obj-1",
					"index": 3,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						356.0,
						134.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						166.5,
						312.0,
						39.0,
						22.0
					],
					"text": "$1 25"
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"bang"
					],
					"patching_rect": [
						164.25,
						348.0,
						34.0,
						22.0
					],
					"text": "line~"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						166.5,
						260.0,
						33.0,
						22.0
					],
					"text": "== 0"
				}
			},
			{
				"box": {
					"activebgoncolor": [
						0.618934978328545,
						0.744701397656435,
						0.953750108255376,
						1.0
					],
					"id": "obj-9",
					"maxclass": "live.text",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 1,
					"patching_rect": [
						356.0,
						210.5,
						44.0,
						33.0
					],
					"presentation": 1,
					"presentation_rect": [
						15.0,
						5.5,
						65.0,
						33.0
					],
					"saved_attribute_attributes": {
						"activebgoncolor": {
							"expression": "themecolor.live_numbox_triangle"
						},
						"valueof": {
							"parameter_enum": [
								"val1",
								"val2"
							],
							"parameter_longname": "On/Off",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "On/Off",
							"parameter_type": 2
						}
					},
					"text": "Del-Pitch-A",
					"texton": "Del-Pitch-A",
					"varname": "On/Off"
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						352.25,
						323.0,
						39.0,
						22.0
					],
					"text": "$1 25"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"bang"
					],
					"patching_rect": [
						350.0,
						359.0,
						34.0,
						22.0
					],
					"text": "line~"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						148.25,
						420.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						103.25,
						420.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						275.0,
						420.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						230.0,
						420.0,
						29.5,
						22.0
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "obj-57",
					"linecount": 5,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						638.5,
						271.0,
						150.0,
						74.0
					],
					"text": "Each step/integer represented by a float is 100 cent pitch deviation. For example: -50 is a quarter tone float. "
				}
			},
			{
				"box": {
					"id": "obj-56",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						590.0,
						648.0,
						191.0,
						47.0
					],
					"text": "The pitchshifter adds a 1024 sample latency (about 23 ms at 44.1 kHz) to all signals coming in. "
				}
			},
			{
				"box": {
					"id": "obj-55",
					"linecount": 5,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						649.5,
						398.0,
						150.0,
						74.0
					],
					"text": "The resulting float is the transposition ratio based on how many microtonal steps deviate from 0. coming in "
				}
			},
			{
				"box": {
					"comment": "Right Signal Out ",
					"id": "obj-53",
					"index": 2,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						149.25,
						1250.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Left Signal Out ",
					"id": "obj-52",
					"index": 1,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						103.25,
						1250.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Dry/Wet (Float) 0 - 100 %. Default 100",
					"id": "obj-48",
					"ignoreclick": 1,
					"index": 7,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1016.0,
						757.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Pitch Shift (Float) -24 - 24 semitones. Default 0",
					"id": "obj-51",
					"index": 4,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						523.0,
						124.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Right Signal In",
					"id": "obj-50",
					"index": 2,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						286.25,
						134.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Left Signal In",
					"id": "obj-49",
					"index": 1,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						217.25,
						134.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "obj-106",
					"maxclass": "newobj",
					"numinlets": 5,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
						"rect": [
							59.0,
							104.0,
							640.0,
							480.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-96",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										307.5,
										447.0,
										29.5,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "obj-95",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										187.5,
										447.0,
										29.5,
										22.0
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "obj-94",
									"maxclass": "newobj",
									"numinlets": 6,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50.0,
										135.0,
										90.0,
										22.0
									],
									"text": "scale 0. 1. 1. 0."
								}
							},
							{
								"box": {
									"id": "obj-92",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										59.0,
										192.0,
										39.0,
										22.0
									],
									"text": "$1 25"
								}
							},
							{
								"box": {
									"id": "obj-93",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										59.0,
										235.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-89",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										215.75,
										361.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-90",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										167.75,
										361.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-88",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										50.0,
										80.0,
										40.0,
										22.0
									],
									"text": "* 0.01"
								}
							},
							{
								"box": {
									"id": "obj-80",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										583.75,
										314.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "obj-77",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										116.0,
										192.0,
										39.0,
										22.0
									],
									"text": "$1 25"
								}
							},
							{
								"box": {
									"id": "obj-76",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										116.0,
										235.0,
										34.0,
										22.0
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "obj-72",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										535.75,
										314.0,
										29.5,
										22.0
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-99",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										167.75,
										40.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-100",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										215.75,
										40.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-101",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										50.0,
										20.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-102",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										535.75,
										40.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-103",
									"index": 5,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										583.75,
										40.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-104",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										187.5,
										529.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-105",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										307.5,
										529.0,
										30.0,
										30.0
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-89",
										0
									],
									"source": [
										"obj-100",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-88",
										0
									],
									"source": [
										"obj-101",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										0
									],
									"source": [
										"obj-102",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-80",
										0
									],
									"source": [
										"obj-103",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-95",
										1
									],
									"source": [
										"obj-72",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-72",
										1
									],
									"order": 1,
									"source": [
										"obj-76",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-80",
										1
									],
									"order": 0,
									"source": [
										"obj-76",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-76",
										0
									],
									"source": [
										"obj-77",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-96",
										1
									],
									"source": [
										"obj-80",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-77",
										0
									],
									"order": 0,
									"source": [
										"obj-88",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-94",
										0
									],
									"order": 1,
									"source": [
										"obj-88",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-96",
										0
									],
									"source": [
										"obj-89",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-95",
										0
									],
									"source": [
										"obj-90",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-93",
										0
									],
									"source": [
										"obj-92",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-89",
										1
									],
									"order": 0,
									"source": [
										"obj-93",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-90",
										1
									],
									"order": 1,
									"source": [
										"obj-93",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-92",
										0
									],
									"source": [
										"obj-94",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-104",
										0
									],
									"source": [
										"obj-95",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-105",
										0
									],
									"source": [
										"obj-96",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-90",
										0
									],
									"source": [
										"obj-99",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						252.25,
						1170.0,
						65.0,
						22.0
					],
					"text": "p Dry_Wet"
				}
			},
			{
				"box": {
					"fontname": "Lato",
					"fontsize": 13.0,
					"format": 6,
					"id": "obj-46",
					"maxclass": "flonum",
					"minimum": 0.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						604.0,
						407.0,
						85.0,
						24.0
					]
				}
			},
			{
				"box": {
					"fontname": "Lato",
					"fontsize": 13.0,
					"id": "obj-45",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						604.0,
						374.0,
						129.0,
						24.0
					],
					"text": "expr pow(2.\\, $f1/12.)"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
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
						"rect": [
							84.0,
							129.0,
							640.0,
							480.0
						],
						"boxes": [
							{
								"box": {
									"comment": "",
									"id": "obj-7",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										188.0,
										200.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-6",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										200.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "Transposition Ratio (Float), 0.25 - 2.0.",
									"id": "obj-5",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										288.0,
										20.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "Right Signal In",
									"id": "obj-4",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										188.0,
										16.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"comment": "Left Signal In",
									"id": "obj-3",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										16.0,
										30.0,
										30.0
									]
								}
							},
							{
								"box": {
									"id": "obj-2",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										188.0,
										100.0,
										112.0,
										22.0
									],
									"text": "pfft~ br.delay.pitch.pfft 1024 4"
								}
							},
							{
								"box": {
									"id": "obj-1",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										50.0,
										100.0,
										112.0,
										22.0
									],
									"text": "pfft~ br.delay.pitch.pfft 1024 4"
								}
							},
							{
								"box": {
									"comment": "mute 0/1 for both FFTs",
									"id": "obj-500",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										368.0,
										40.0,
										30.0,
										30.0
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-6",
										0
									],
									"source": [
										"obj-1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-7",
										0
									],
									"source": [
										"obj-2",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-1",
										0
									],
									"source": [
										"obj-3",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"source": [
										"obj-4",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-1",
										1
									],
									"order": 1,
									"source": [
										"obj-5",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										1
									],
									"order": 0,
									"source": [
										"obj-5",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-1",
										0
									],
									"order": 1,
									"source": [
										"obj-500",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-2",
										0
									],
									"order": 0,
									"source": [
										"obj-500",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						520.0,
						712.0,
						78.0,
						22.0
					],
					"text": "p Pitchshifter"
				}
			},
			{
				"box": {
					"angle": 270.0,
					"annotation": "br.delay.pitch.a.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: built around gizmo~ (Cycling '74).",
					"bgcolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"bordercolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"hint": "br.delay.pitch.a.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: built around gizmo~ (Cycling '74).",
					"id": "obj-25",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						951.3333333730698,
						203.0,
						128.0,
						128.0
					],
					"presentation": 1,
					"presentation_rect": [
						-5.0,
						-5.0,
						346.8783781528473,
						304.0
					],
					"proportion": 0.39,
					"rounded": 0
				}
			},
			{
				"box": {
					"comment": "Highpass (Float) 40 - 1000 Hz, loop filter. Default 40",
					"id": "obj-600",
					"index": 8,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1093.0,
						115.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Lowpass (Float) 1000 - 15000 Hz, loop filter. Default 12000",
					"id": "obj-610",
					"index": 9,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1163.0,
						115.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "obj-700",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 1,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "dsp.gen",
						"rect": [
							100.0,
							100.0,
							560.0,
							420.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										20.0,
										20.0,
										30.0,
										22.0
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80.0,
										20.0,
										30.0,
										22.0
									],
									"text": "in 2"
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										140.0,
										20.0,
										30.0,
										22.0
									],
									"text": "in 3"
								}
							},
							{
								"box": {
									"code": "// idle detector: 1 = switched off AND the loop has been silent for 1.5 s (longer than the 1 s max delay,\n// so a repeat still travelling through the delay line is never mistaken for silence)\n// in1/in2 = delay outputs L/R, in3 = on/off (1 = on)\nHistory quiet(0);\nlvl = max(abs(in1), abs(in2));\ncnt = quiet;\nif (in3 > 0.5) {\n    cnt = 0;\n} else if (lvl < 0.0001) {\n    cnt = min(cnt + 1, 10000000);\n} else {\n    cnt = 0;\n}\nquiet = cnt;\nout1 = cnt > mstosamps(1500);\n",
									"fontface": 0,
									"fontname": "<Monospaced>",
									"fontsize": 12.0,
									"id": "obj-4",
									"maxclass": "codebox",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										20.0,
										60.0,
										520.0,
										260.0
									]
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										20.0,
										340.0,
										35.0,
										22.0
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": [
										"obj-4",
										0
									],
									"source": [
										"obj-1",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										1
									],
									"source": [
										"obj-2",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-4",
										2
									],
									"source": [
										"obj-3",
										0
									]
								}
							},
							{
								"patchline": {
									"destination": [
										"obj-5",
										0
									],
									"source": [
										"obj-4",
										0
									]
								}
							}
						]
					},
					"patching_rect": [
						507.0,
						1103.0,
						190.0,
						22.0
					],
					"text": "gen~ @title br.delay.pitch.idle",
					"varname": "gen~_AA"
				}
			},
			{
				"box": {
					"id": "obj-701",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						"bang"
					],
					"patching_rect": [
						796.0,
						811.0,
						45.0,
						22.0
					],
					"text": "edge~"
				}
			},
			{
				"box": {
					"id": "obj-702",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						747.75,
						847.0,
						48.0,
						22.0
					],
					"text": "mute 1"
				}
			},
			{
				"box": {
					"id": "obj-703",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						794.5,
						847.0,
						48.0,
						22.0
					],
					"text": "mute 0"
				}
			},
			{
				"box": {
					"id": "obj-710",
					"maxclass": "newobj",
					"numinlets": 6,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						520.0,
						752.0,
						170.0,
						22.0
					],
					"text": "biquad~ 1. -1. 0. -0.999 0."
				}
			},
			{
				"box": {
					"id": "obj-711",
					"maxclass": "newobj",
					"numinlets": 6,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						590.0,
						752.0,
						170.0,
						22.0
					],
					"text": "biquad~ 1. -1. 0. -0.999 0."
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"mm-pak",
						1
					],
					"source": [
						"mm-eq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-12",
						0
					],
					"source": [
						"mm-expr",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"mm-text",
						0
					],
					"source": [
						"mm-in",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"mm-expr",
						0
					],
					"source": [
						"mm-pak",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-mode",
						0
					],
					"source": [
						"mm-text",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						0
					],
					"source": [
						"obj-1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"mm-pak",
						0
					],
					"source": [
						"obj-10",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-52",
						0
					],
					"source": [
						"obj-106",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-53",
						0
					],
					"source": [
						"obj-106",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-feedback",
						0
					],
					"source": [
						"obj-11",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-13",
						0
					],
					"source": [
						"obj-12",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						1
					],
					"order": 0,
					"source": [
						"obj-13",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-6",
						1
					],
					"order": 1,
					"source": [
						"obj-13",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						0
					],
					"source": [
						"obj-14",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-delay",
						0
					],
					"source": [
						"obj-15",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-drywet",
						0
					],
					"source": [
						"obj-16",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-pitch",
						0
					],
					"source": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-106",
						1
					],
					"midpoints": [
						239.5,
						737.5,
						273.25,
						737.5
					],
					"order": 1,
					"source": [
						"obj-2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						0
					],
					"order": 0,
					"source": [
						"obj-2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-106",
						4
					],
					"midpoints": [
						573.0,
						1062.0,
						307.75,
						1062.0
					],
					"order": 2,
					"source": [
						"obj-26",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-106",
						3
					],
					"midpoints": [
						543.0,
						1050.0,
						296.25,
						1050.0
					],
					"order": 2,
					"source": [
						"obj-26",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-32",
						0
					],
					"order": 0,
					"source": [
						"obj-26",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-33",
						0
					],
					"order": 0,
					"source": [
						"obj-26",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-700",
						1
					],
					"order": 1,
					"source": [
						"obj-26",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-700",
						0
					],
					"order": 1,
					"source": [
						"obj-26",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-710",
						0
					],
					"source": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-711",
						0
					],
					"source": [
						"obj-3",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						0
					],
					"midpoints": [
						766.5,
						1059.0,
						939.4965209960938,
						1059.0,
						939.4965209960938,
						600.0,
						529.5,
						600.0
					],
					"source": [
						"obj-32",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						1
					],
					"midpoints": [
						826.5,
						1044.0,
						931.5076293945312,
						1044.0,
						931.5076293945312,
						618.0,
						538.1666666666666,
						618.0
					],
					"source": [
						"obj-33",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-32",
						1
					],
					"order": 1,
					"source": [
						"obj-34",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-33",
						1
					],
					"order": 0,
					"source": [
						"obj-34",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-34",
						0
					],
					"source": [
						"obj-35",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-15",
						0
					],
					"source": [
						"obj-36",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-11",
						0
					],
					"source": [
						"obj-37",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-106",
						2
					],
					"midpoints": [
						284.5,
						726.5,
						284.75,
						726.5
					],
					"order": 1,
					"source": [
						"obj-4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						1
					],
					"order": 0,
					"source": [
						"obj-4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-46",
						0
					],
					"source": [
						"obj-45",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						2
					],
					"source": [
						"obj-46",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-16",
						0
					],
					"source": [
						"obj-48",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-2",
						0
					],
					"order": 0,
					"source": [
						"obj-49",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-6",
						0
					],
					"midpoints": [
						226.75,
						185.5,
						112.75,
						185.5
					],
					"order": 1,
					"source": [
						"obj-49",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-53",
						0
					],
					"source": [
						"obj-5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-4",
						0
					],
					"order": 0,
					"source": [
						"obj-50",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						0
					],
					"midpoints": [
						295.75,
						220.5,
						157.75,
						220.5
					],
					"order": 1,
					"source": [
						"obj-50",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-17",
						0
					],
					"source": [
						"obj-51",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						1
					],
					"source": [
						"obj-58",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						0
					],
					"source": [
						"obj-58",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-52",
						0
					],
					"source": [
						"obj-6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-601",
						0
					],
					"source": [
						"obj-600",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-highpass",
						0
					],
					"source": [
						"obj-601",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-611",
						0
					],
					"source": [
						"obj-610",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-lowpass",
						0
					],
					"source": [
						"obj-611",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-2",
						1
					],
					"order": 1,
					"source": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-4",
						1
					],
					"order": 0,
					"source": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-701",
						0
					],
					"midpoints": [
						516.5,
						1135.0,
						699.4400024414062,
						1135.0,
						699.4400024414062,
						796.0,
						805.5,
						796.0
					],
					"source": [
						"obj-700",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-702",
						0
					],
					"source": [
						"obj-701",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-703",
						0
					],
					"source": [
						"obj-701",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						3
					],
					"midpoints": [
						757.25,
						879.0,
						672.875,
						879.0,
						672.875,
						702.0,
						588.5,
						702.0
					],
					"source": [
						"obj-702",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-3",
						3
					],
					"midpoints": [
						804.0,
						879.0,
						696.25,
						879.0,
						696.25,
						702.0,
						588.5,
						702.0
					],
					"source": [
						"obj-703",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-26",
						0
					],
					"source": [
						"obj-710",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-26",
						1
					],
					"source": [
						"obj-711",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-7",
						0
					],
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-t-on",
						0
					],
					"source": [
						"obj-9",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-delay",
						0
					],
					"source": [
						"st-c-delay",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-drywet",
						0
					],
					"source": [
						"st-c-drywet",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-feedback",
						0
					],
					"source": [
						"st-c-feedback",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-highpass",
						0
					],
					"source": [
						"st-c-highpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-lowpass",
						0
					],
					"source": [
						"st-c-lowpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-mode",
						0
					],
					"source": [
						"st-c-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-on",
						0
					],
					"source": [
						"st-c-on",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-p-pitch",
						0
					],
					"source": [
						"st-c-pitch",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-delay",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-drywet",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-feedback",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-highpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-lowpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-on",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-out",
						0
					],
					"source": [
						"st-p-pitch",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-26",
						2
					],
					"source": [
						"st-t-delay",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-delay",
						0
					],
					"source": [
						"st-t-delay",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-106",
						0
					],
					"midpoints": [
						1099.5,
						1150.5,
						261.75,
						1150.5
					],
					"source": [
						"st-t-drywet",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-drywet",
						0
					],
					"source": [
						"st-t-drywet",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-35",
						0
					],
					"source": [
						"st-t-feedback",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-feedback",
						0
					],
					"source": [
						"st-t-feedback",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						2
					],
					"source": [
						"st-t-highpass",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-highpass",
						0
					],
					"source": [
						"st-t-highpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-58",
						3
					],
					"source": [
						"st-t-lowpass",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-lowpass",
						0
					],
					"source": [
						"st-t-lowpass",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"mm-eq",
						0
					],
					"source": [
						"st-t-mode",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-mode",
						0
					],
					"source": [
						"st-t-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-10",
						0
					],
					"order": 2,
					"source": [
						"st-t-on",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-700",
						2
					],
					"order": 0,
					"source": [
						"st-t-on",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-8",
						0
					],
					"order": 1,
					"source": [
						"st-t-on",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-on",
						0
					],
					"source": [
						"st-t-on",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-45",
						0
					],
					"source": [
						"st-t-pitch",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"st-c-pitch",
						0
					],
					"source": [
						"st-t-pitch",
						0
					]
				}
			}
		]
	}
}