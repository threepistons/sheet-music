\version "2.24.0"

\include "english.ly"
\include "./saturn.ily"
\include "./neptune.ily"

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
    % Most of Saturn is in tenor clef, so I read it as though it were B flat treble and
    % did inline transposition of just the bass clef sections.
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
  \score {
    \header {
      piece = "VII: Neptune, the Mystic"
    }
    \layout {
      \context {
        \Staff \override MultiMeasureRest.expand-limit = #1
        \consists "Measure_grouping_engraver"
        \remove "Rest_engraver"
        \consists "Completion_rest_engraver"
      }
    }
    % This whole movement is in bass clef, so I wrote it in at-pitch and
    % transposed below.
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Trom 1 "
        shortInstrumentName = "1. "
      } \transpose bf c'' \nepone
      \new Staff \with {
        instrumentName = "Trom 2 "
        shortInstrumentName = "2. "
      } \transpose bf c'' \neptwo
    >>
  }
}
