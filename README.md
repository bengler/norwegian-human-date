# Norwegian Human Date

Parses a time / date object into a Norwegian human readable text.

Gir menneske-orienterte relative dato-angivelser.

I morgen heter "i morgen", i går heter "i går" og
lørdag neste uke heter "lørdag neste uke".
Onsdag 23. april 1974 derimot, heter "onsdag 23. april 1974".

## Usage

```
  NorwegianHumanDate.relative(Time.now)
  => "i dag"
```

### Options for .relative

``:now``          - What to concider as now. Default: Time.now
``:shortmonths``  - Use three character long month names. Default: false

