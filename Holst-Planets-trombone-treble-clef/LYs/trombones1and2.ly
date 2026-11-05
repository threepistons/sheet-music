\version "2.24.0"

\include "english.ly"
\include "./saturn.ily"

\header {
  title = "The Planets"
  instrument = \markup { "Tenor trombones (B" \flat " " \small \smaller \smaller \musicglyph "clefs.G" ")" }
  composer = "Gustav Holst"
}

\book {
  \score {
   \header {
     piece = "V: Saturn, the Bringer of Old Age"
   }
    \layout {
      \context {
        \Staff \override MultiMeasureRest.expand-limit = #1
      }
    }
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Trom 1 "
        shortInstrumentName = "1. "
      } \satone
      \new Staff \with {
        instrumentName = "Trom 2 "
        shortInstrumentName = "2. "
      } \sattwo
    >>
  }
}
