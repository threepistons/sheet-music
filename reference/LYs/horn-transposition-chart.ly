\version "2.24.1"
\include "english.ly"

#(set-global-staff-size 34)

\header {
  title = "Horn transposition chart"
  composer = "Helen Griffiths"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

concert = \relative c' {
  \easyHeadsOn
  \key c \major
  c1 bs
  cs df
  d eff |
  ef ds
  e ff
  f es
  fs gf
  g aff |
  af gs
  a1 bff
  bf as
  b cf \bar "|."
}

\score {
  
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \column {Concert pitch}
    }
    { \clef treble \time 2/1 \concert }
    \new Staff \with {
      instrumentName = "Trumpet"
    }
    { \clef treble \time 2/1 \transpose bf, c \concert }
    \new Staff \with {
      instrumentName = \markup \column {Alto sax}
    }
    { \clef treble \time 2/1 \transpose ef, c \concert }
  >>
  
  \layout {
    indent=27
  }
}

