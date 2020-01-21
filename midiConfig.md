### kick(36|C1)

| #100: Tune      | #101: Pitch | #106: Attack | #102: Decay |
| --------------- | ----------- | ------------ | ----------- |
| #103: Harmonics | #105: Noise | #107: EQ     | #115: Level |

### clap(39|D#1)

| #26: Tune | #27: Attack | #28: Peak-time | #29: Decay |
| --------- | ----------- | -------------- | ---------- |
|           |             |                | #30: Level |

### hihat

Notes:

- Open: 46(A#1)
- Medium: 44(G#1)
- Closed: 42(F#1)

| #19: CH Attack | #20: CH Peak-Time | #21: CH Decay | #18: Tune  |
| -------------- | ----------------- | ------------- | ---------- |
| #22: OH Attack | #23: OH Peak-Time | #24: OH Decay | #25: Level |


## mfb 503

Notes:
- SD: 38 OR 60-71
- HH: 40,44 OR 91,93,95
- OH: 39,42 OR 90,92,94

| #17: SD Tune   | #19: SD Noise     | #19: SD Decay | #16: SD Level |
| -------------- | ----------------- | ------------- | ----------    |
| #57: HH Mix    | #59: HH Decay     | #58: OH Decay | #56: HH Level |


## modular

see: [midi2cv](https://github.com/ljurk/midi2cv)

Notes:

- channel: 2

  - G1: 0(C0)
  - G2: 1(C#0)
  - G3: 2(D0)
  - G4: 3(D#0)

- channel: 1

  - listens to all notes, outputs v/oct



| #20: cc1 | #21: cc2 | #22: cc3 | #23: cc3 |
| -------- | -------- | -------- | -------- |
|          |          |          |          |



## waldorf pulse 2

[manual](https://support.waldorfmusic.com/files/Pulse%202/Manuals/Pulse_2_Handbuch.pdf)

because the pulse2 has a lots of midi implementations I have a few tracks assigned to it to controll more than 8 values

### envelopes

| #14: VCF Attack | #15: VCF Decay | #16: VCF Sustain | #17: VCF Release |
| --------------- | -------------- | ---------------- | ---------------- |
| #83: VCA Attack | #76: VCA Decay | #77: VCA Sustain | #78: VCA Release |

### filter

| #50: cutoff   | #56: resonance | #52: env amount | #53: velocity |
| ------------- | -------------- | --------------- | ------------- |
| #51: keytrack | #74: loop      | #88: accent     | #49: type     |

### oscilators

| #45: osc1 level | #46: osc2 level | #39: osc2 pulsewidth | #47: osc3 level |
| --------------- | --------------- | -------------------- | --------------- |
| #35: osc1 pulsewidth | #38: shape | #42: osc3 semitone   | #44: osc3 shape |

### lfo & arpeggio

| #24: lfo1 speed | #25: lfo1 shape | #79: arp active | #80: arp range |
| --------------- | --------------- | --------------- | -------------- |
| #26: lfo2 speed | #27: lfo2 delay | #82: arp clock  | #85: arp swing |
