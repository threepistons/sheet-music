\version "2.24.0"

\include "english.ly"
\include "./saturn.ily"
\include "./neptune.ily"

\header {
  title = "The Planets"
  instrument = \markup { "Tenor trombones (B" \flat " " \small \smaller \smaller \musicglyph "clefs.G" ")" }
  composer = "Gustav Holst"
}

\paper {
  page-breaking = #ly:page-turn-breaking
}

\book {

  \markup {
    \column {
      \vspace #2

      "II: Venus, the Bringer of Peace"
      \vspace #2

      \fill-line {
        \null
        \fontsize #5 \bold "TACET"
        \null
      }

      \fill-line {
        \null
        \italic "(Nothing to play in this movement.)"
        \null
      }

      \vspace #2
    }
  }

  \markup {
    \column {
      "III: Mercury, the Winged Messenger"
      \vspace #2

      \fill-line {
        \null
        \fontsize #5 \bold "TACET"
        \null
      }

      \vspace #2
    }
  }

  \score {
    \header {
      piece = "V: Saturn, the Bringer of Old Age"
    }
    \layout {
      \context {
        \Staff \override MultiMeasureRest.expand-limit = #1
        \consists "Page_turn_engraver"
      }
      \context {
        \StaffGroup
        \consists "Page_turn_engraver"
        minimumPageTurnLength = #(ly:make-moment 8/4)
        minimumRepeatLengthForPageTurn = #(ly:make-moment 8/4)
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
        \Staff
        \override MultiMeasureRest.expand-limit = #1
        \consists "Measure_grouping_engraver"
        % Define the threshold for the entire group collectively
      }
      \context {
        \StaffGroup
        \consists "Page_turn_engraver"
        minimumPageTurnLength = #(ly:make-moment 10/4)
        minimumRepeatLengthForPageTurn = #(ly:make-moment 10/4)
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
