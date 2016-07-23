module Sound.Tidal.MIDI.GenericMIDI where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.CustomParams

genericmidi :: ControllerShape
genericmidi = ControllerShape { controls = [

                          -- Parameters according to the midi specification
                          mCC bankselect_p 0,         -- Bank Select (Controller # 32 more commonly used)
                          mCC breath_p 2,             -- Breath Contoller
                          mCC foot_p 4,               -- Foot Controller
                          mCC portamentot_p 5,     -- Portamento Time
                          mCC volume_p 7,             -- Main Volume
                          mCC balance_p 8,            -- Balance
                          mCC midipan_p 10,               -- Pan
                          mCC effectcontrol1_p 12,    -- Effect Control 1
                          mCC effectcontrol2_p 13,    -- Effect Control 2
                          mCC generalcontroller1_p 16,
                          mCC generalcontroller2_p 17,
                          mCC generalcontroller3_p 18,
                          mCC generalcontroller4_p 19,
                          mCC sostenuto_p 66,         -- Sostenuto
                          mCC softpedal_p 67,         -- Soft Pedal
                          mCC hold2_p 69,             -- Hold 2
                          mCC variation_p 70,    -- Sound Controller 1 (default: Sound Variation)
                          mCC vcf_p 71,            -- Sound Controller 2 (default: Timbre/Harmonic Content)
                          mCC vca_p 72,           -- Sound Controller 3 (default: Release Time)
                          mCC brightness_p 74,        -- Sound Controller 5 (default: Brightness)
                          mCC portamentocontrol_p 84, -- Portamento Control
                          mCC effects1depth_p 91,	    -- Effects 1 Depth (previously External Effects Depth)
                          mCC effects2depth_p 92,	    -- Effects 2 Depth (previously Tremolo Depth)
                          mCC effects3depth_p 93,	    -- Effects 3 Depth (previously Chorus Depth)
                          mCC effects4depth_p 94,	    -- Effects 4 Depth (previously Detune Depth)
                          mCC effects5depth_p 95,	    -- Effects 5 Depth (previously Phaser Depth)
                          mCC reset_p 121,            -- Reset All Controllers
                          mCC localcontrol_p 122,     -- Local Control
                          mCC allnotesoff_p 123,      -- All Notes Off
                          mCC omnioff_p 124,          -- Omni Off
                          mCC omnion_p 125,           -- Omni On
                          mCC monoon_p 126,           -- Mono On (Poly Off)
                          mCC polyon_p 127,           -- Poly On (Mono Off)

                          -- numbered
                          mCC cc0_p 0,
                          mCC cc1_p 1,
                          mCC cc2_p 2,
                          mCC cc3_p 3,
                          mCC cc4_p 4,
                          mCC cc5_p 5,
                          mCC cc6_p 6,
                          mCC cc7_p 7,
                          mCC cc8_p 8,
                          mCC cc9_p 9,
                          mCC cc10_p 10,
                          mCC cc11_p 11,
                          mCC cc12_p 12,
                          mCC cc13_p 13,
                          mCC cc14_p 14,
                          mCC cc15_p 15,
                          mCC cc16_p 16,
                          mCC cc17_p 17,
                          mCC cc18_p 18,
                          mCC cc19_p 19,
                          mCC cc20_p 20,
                          mCC cc21_p 21,
                          mCC cc22_p 22,
                          mCC cc23_p 23,
                          mCC cc24_p 24,
                          mCC cc25_p 25,
                          mCC cc26_p 26,
                          mCC cc27_p 27,
                          mCC cc28_p 28,
                          mCC cc29_p 29,
                          mCC cc30_p 30,
                          mCC cc31_p 31,
                          mCC cc32_p 32,
                          mCC cc33_p 33,
                          mCC cc34_p 34,
                          mCC cc35_p 35,
                          mCC cc36_p 36,
                          mCC cc37_p 37,
                          mCC cc38_p 38,
                          mCC cc39_p 39,
                          mCC cc40_p 40,
                          mCC cc41_p 41,
                          mCC cc42_p 42,
                          mCC cc43_p 43,
                          mCC cc44_p 44,
                          mCC cc45_p 45,
                          mCC cc46_p 46,
                          mCC cc47_p 47,
                          mCC cc48_p 48,
                          mCC cc49_p 49,
                          mCC cc50_p 50,
                          mCC cc51_p 51,
                          mCC cc52_p 52,
                          mCC cc53_p 53,
                          mCC cc54_p 54,
                          mCC cc55_p 55,
                          mCC cc56_p 56,
                          mCC cc57_p 57,
                          mCC cc58_p 58,
                          mCC cc59_p 59,
                          mCC cc60_p 60,
                          mCC cc61_p 61,
                          mCC cc62_p 62,
                          mCC cc63_p 63,
                          mCC cc64_p 64,
                          mCC cc65_p 65,
                          mCC cc66_p 66,
                          mCC cc67_p 67,
                          mCC cc68_p 68,
                          mCC cc69_p 69,
                          mCC cc70_p 70,
                          mCC cc71_p 71,
                          mCC cc72_p 72,
                          mCC cc73_p 73,
                          mCC cc74_p 74,
                          mCC cc75_p 75,
                          mCC cc76_p 76,
                          mCC cc77_p 77,
                          mCC cc78_p 78,
                          mCC cc79_p 79,
                          mCC cc80_p 80,
                          mCC cc81_p 81,
                          mCC cc82_p 82,
                          mCC cc83_p 83,
                          mCC cc84_p 84,
                          mCC cc85_p 85,
                          mCC cc86_p 86,
                          mCC cc87_p 87,
                          mCC cc88_p 88,
                          mCC cc89_p 89,
                          mCC cc90_p 90,
                          mCC cc91_p 91,
                          mCC cc92_p 92,
                          mCC cc93_p 93,
                          mCC cc94_p 94,
                          mCC cc95_p 95,
                          mCC cc96_p 96,
                          mCC cc97_p 97,
                          mCC cc98_p 98,
                          mCC cc99_p 99,
                          mCC cc100_p 100,
                          mCC cc101_p 101,
                          mCC cc102_p 102,
                          mCC cc103_p 103,
                          mCC cc104_p 104,
                          mCC cc105_p 105,
                          mCC cc106_p 106,
                          mCC cc107_p 107,
                          mCC cc108_p 108,
                          mCC cc109_p 109,
                          mCC cc110_p 110,
                          mCC cc111_p 111,
                          mCC cc112_p 112,
                          mCC cc113_p 113,
                          mCC cc114_p 114,
                          mCC cc115_p 115,
                          mCC cc116_p 116,
                          mCC cc117_p 117,
                          mCC cc118_p 118,
                          mCC cc119_p 119,
                          mCC cc120_p 120,
                          mCC cc121_p 121,
                          mCC cc122_p 122,
                          mCC cc123_p 123,
                          mCC cc124_p 124,
                          mCC cc125_p 125,
                          mCC cc126_p 126,
                          mCC cc127_p 127
                        ],
                        latency = 0.0}

oscGenericMIDI = toShape genericmidi
