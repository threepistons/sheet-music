\version "2.24.1"
\include "english.ly"

#(set-global-staff-size 34)

\header {
  title = "Tenor trombone clef conversion chart"
  composer = "Helen Griffiths"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

brassband = \relative c {
  \easyHeadsOn
  \key d \major
  fs2-7 gf
  fss2-6 g
  gs2-5 af
  a1-4
  as2-3 bf |
  b2-2 cf
  bs2-1 c
  cs2-7 df
  css2-6 d |
  ds2-5 ef
  e2-4 ff
  es2-3 f
  fs2 \finger "2 (7)" gf
  fss2 \finger "1 (6)" g |
  gs2-5 af
  a1-4
  as2 \finger "3 (7)" bf
  b2 \finger "2 (6)" cf
  bs2 \finger "1 (5)" c |
  cs2 \finger "4 (7)" df
  css2 \finger "3 (6)" d
  ds2 \finger "2 (5)" ef
  e2 \finger "1 (4, #7)" ff
  f2 \finger "3 (#6)" es |
  fs2 \finger "2 (7, #5)" gf
  fss2 \finger "1 (6, #4)" g
  gs2 \finger "#3 (5)" af
  a1 \finger "#2 (4)"
  as2-3 bf
  b2-2 cf
  bs2-1 c \bar "|."
}

\score {
  
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \column {Brass band}
    }
    { \clef treble \time 4/4 \brassband }
    \new Staff \with {
      instrumentName = "Tenor"
    }
    { \clef tenor \time 4/4 \transpose c bf,, \brassband }
    \new Staff \with {
      instrumentName = "Bass"
    }
    { \clef bass \time 4/4 \transpose c bf,, \brassband }
  >>
  
  \layout {}
}

