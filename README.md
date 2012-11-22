# Norwegian Human Date

Parses a time / date object into a human readable Norwegian text.

Tomorrow's dates will be "i morgen". Yesterdays timestamps will
be "i går". April 24th, 1974 however, will be "onsdag 23. april 1974".

## Usage

```
  NorwegianHumanDate.relative(Time.now)
  => "i dag"
```

### Options for .relative

``:today``          - What to concider as today. Default: Time.now

``:shortmonths``    - Use three character long month names. Default: false

``:absolute_date``  - Always use full dates. Default: false
