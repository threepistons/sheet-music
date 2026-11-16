\version "2.24.0"

% This whole movement is in bass clef, so I wrote it in at-pitch and
% transposed in the part-rendering file.

nepone = \relative c {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key c \major
  \time 3,2 5/4
  \tempo "Andante"
  r2. r2 \omit Staff.MeasureGrouping
  r2. r2
  r2. c'2~\pp
  c2. r2
  R1*5/4*9 | \mark \default R1*5/4*8
  gs2.\pp~gs2~ |
  gs2. e2 |
  gs2.~ gs2 \mark \default
  R1*5/4*10 \mark \default
  gs2. e2 |
  gs2. e2 |
  ef2.~ ef2
  fs2.~ fs2
  R1*5/4*5
  bf,2.~bf2 \mark \default
  R1*5/4*3
  gs'2.~ gs2~
  gs2.~ gs2 \mark \default \tempo "Allegretto"
  R1*5/4*20 \mark \default
  R1*5/4*15
  r2 e4~ e2~ |
  e2.~ e2~
  e2.~ e2
  R1*5/4*14 \bar "|."
}

neptwo = \relative c {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key c \major
  \time 3,2 5/4
  \tempo "Andante"
  r2. r2 \omit Staff.MeasureGrouping
  r2. r2
  r2. e2~\pp
  e2. r2
  R1*5/4*9 | \mark \default R1*5/4*8
  ds2.\pp~ ds2~ |
  ds2. b2 |
  ds2.~ ds2 \mark \default
  R1*5/4*10 \mark \default
  ds2. b2
  ds2. b2 |
  bf2.~ bf2
  fs2.~ fs2
  R1*5/4*5
  bf,2.~-"pedal in 1st" bf2 \mark \default
  R1*5/4*3
  ds'2.~ ds2~
  ds2.~ ds2 \mark \default \tempo "Allegretto"
  R1*5/4*20 \mark \default
  R1*5/4*15
  r2 b4~ b2~ |
  b2.~ b2~
  b2.~ b2
  R1*5/4*14 \bar "|."
 \bar "|."
}
