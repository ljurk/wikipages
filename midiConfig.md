| #  | input         | output               | mode |
| -  | -----         | ------               | ---- |
| 1  | airbase kick  | mixer1               |      |
| 2  | overdriveOut  | mixer2               |      |
| 3  | **er1**       | mixer3               |      |
| 4  | comp1out      | mixer4               |      |
| 5  | comp2out      | mixer5               |      |
| 6  | **ea1**       | mixer6               |      |
| 7  | **modular**   | mixer7               |      |
| 8  | **mfb503**    | mixer8               |      |
| 9  | AirbaseMainL  | mixer9               |      |
| 10 | AirbaseMainR  | mixer10              |      |
| 11 | **digitaktL** | mixer11              |      |
| 12 | **digitaktR** | mixer12              |      |
| 13 | mam fb383     | distortionIn         |      |
| 14 | distortionOut | delayIn              |      |
| 15 | delayOut      | comp1in              |      |
| 16 | filterbankOut | comp2in              |      |
| 17 | **mbase**     | overdriveIn          | thru |
| 18 | -             | compressor1sidechain | thru |
| 19 | -             | compressor2sidechain | thru |
| 20 | **#9**        | filterbankIn         |      |
| 21 | -             | filterbankFmIn       |      |
| 22 | -             | filterbankAmIn       |      |
| 23 | -             | -                    |      |

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


