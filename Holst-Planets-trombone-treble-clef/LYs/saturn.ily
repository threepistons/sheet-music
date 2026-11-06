\version "2.24.0"

% Most of Saturn is in tenor clef, so I read it as though it were B flat treble and
% did inline transposition of just the bass clef sections.

satone = \relative c'' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key d \major
  \time 4/4
  \tempo "Adagio"
  R1*27 | 
  \mark \default \tempo "poco animato"
  R1 * 2
  gs2\p cs4. ds8 |
  ds2 cs |
  gs'4 b as fs |
  gs1 |
  
  gs,2 cs4. ds8 |
  ds2 cs |
  b4 ds cs a |
  gs4 b as fs |
  
  d'1~ |
  d2. r4 |
  R1*6 |
  
  bf2\f a |
  R1 |
  d1\mf |
  bf2\dim c | \mark \default \tempo "Tempo I"
  
  d1~\p |
  d1
  R1 * 18 \mark \default
  R1 * 3
  % Satan's clef section
  \transpose bf c'' {
    r4 gf\f_"pesante" r f |
    r4 g?\ff r fs
    r4 g\< r fs
    r4 bf\fff r a |
    r4 bf \tempo "animato" r2
    R1
    \tempo "a tempo" r4 g\fff r fs |
    r4 g r fs
    r4 bf \tempo "animato" r2 |
  }
  R1 \mark \default
  R1 * 7
  r2 d4.\fff( e8) |
  e1~
  e2 d4.(\dim e8) |
  e1~
  e2\! r |
  \tempo "L'istesso tempo" R1 *10
  \time 3/2 \mark \default R1. * 20 \mark \default R1. * 6
  fs,1.\pp ^"solo"
  b1~ b4( cs) |
  cs1.(
  b1.)
  d1.
  e1( fs2)
  a1.~
  a1.~
  a1.~
  a1.
  \mark \default R1. * 4
  d,1.~\pp
  d1.
  R1. * 8
  R1.\fermata \bar "|."
}

sattwo = \relative c'' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key d \major
  \time 4/4
  \tempo "Adagio"
  R1*27 | 
  \mark \default \tempo "poco animato"
  R1 * 2
  gs2\p gs4. gs8 |
  gs2 gs |
  e'4 e e e |
  e1 |
  
  gs,2\p gs4. gs8 |
  gs2 gs |
  R1 * 12
  bf1\mf |
  g2\dim g | \mark \default \tempo "Tempo I"
  
  a1~\p |
  a1
  R1 * 18 \mark \default
  R1 * 3
  % Satan's clef section
  \transpose bf,, c {
    r4 gf,\f_"pesante" r c |
    r4 c\ff r cs
    r4 c?\< r cs
    r4 ef\fff r e |
    r4 ef \tempo "animato" r2
    R1
    \tempo "a tempo" r4 c\fff r cs |
    r4 c? r cs
    r4 ef \tempo "animato" r2 |
  }
  R1 \mark \default
  R1 * 7
  r2 bf4.\fff( a8) |
  a1~
  a2 bf4.(\dim a8) |
  a1~
  a2\! r |
  \tempo "L'istesso tempo" R1 *10
  \time 3/2 \mark \default R1. * 20 \mark \default R1. * 6
  fs1.\pp ^"solo"
  b1~ b4( cs) |
  cs1.(
  b1.)
  d1.
  e1( fs2)
  a1.~
  a1.~
  a1.~
  a1.
  \mark \default R1. * 4
  b,1.~\pp
  b1.
  R1. * 8
  R1.\fermata \bar "|."
}
