\version "2.24.0"

% Most of Uranus is in tenor clef, so I read it as though it were B flat treble and
% did inline transposition of just the bass clef sections.

urone = \relative c'' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key d \major
  \time 6/4
  \tempo "Allegro"
  \transpose bf c \relative c''' {
    g1.\ff\fermata
    ef\fermata
    a\fermata
    b,~\fermata b
  }
  R1. * 2
  R1.\fermata
  R1. * 12 \mark \default %1
  R1. * 9
  r2. c\f
  a d
  e,1.~ e
  R1. * 12 \mark \default %2
  R1. * 26 \mark \default %3
  \transpose bf c \relative c'' {
    r2 d4\f r2 d4
    R1. * 2
    r2 d4 r2 d4
    R1. * 2
    r2 d4 r2 d4
    R1. * 2
    r2 bf'4\f\cresc r2 bf4
    r2 bf4 r2 bf4
    r2 d4 r2 d4
    b2(\ff fs4) b2( fs4)
    c'4 r2 r2.
    R1.
    b2( fs4) b2( fs4)
    fs4 r2 r2.
    R1.
    b2( fs4) b2( fs4)
    r2. a4 r2 |
    r2. a4 r2
    r2. a4 r2
    r2. a4 r2
    b2( fs4) b2( fs4)
    r2. a4 r2
    r2. a4 r2 \mark \default %4
    R1.
    r2. b2.
    R1. * 2
    e,1.\ff~
    e1.~
    e1.~
    e1.\>
    R1. * 20\!
    g1.\ff
    ef1.
    a1.\fermata \mark \default %5
    c,4 r2 r2.
  }
  R1. * 16
  r2. cs'->\p |
  R1.
  \time 9/4 r2. r2 cs4-.\f cs2.-> |
  \time 6/4 R1. * 10
  \time 9/4 R1*9/4 | \mark \default %6
  \time 6/4 R1. * 17
  g'1.~\p\<
  g1.
  gs1.~->\p
  gs1.(
  g?4) r2 r2. |
  R1. * 3
  cs,4 r2 r2.
  R1.
  cs4 r2 r2.
  R1.
  cs2.\mf\cresc fs
  cs fs
  cs\tempo "rall." fs
  \time 9/4 cs fs cs \mark \default %7
  \time 6/4 r2 r8 a'-.\fff  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r4. a8-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r bf-. cs2.~ |
  cs2 bf4-. a-. bf-. c-.
  bf2 c4-. bf2.-> |
  r2 bf4-. cs2 bf4-. |
  \time 9/4 gs4-. as-. b?-. cs2 r4 \tuplet 4/3 { f,4-> cs-> g'?-> a,-> } |
  \time 6/4 r2 r8 a'-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r4. a8-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r as-. cs2.~
  cs2 as4-. gs4-. as4-. b-. |
  cs4-. r2 a?4-. es-. cs-.
  r2 as'4-. cs2 as4-.
  \time 9/4 gs4-. as-. b?-. cs2 r4 \tuplet 4/3 { f,4-> cs-> g'?-> a,-> } |
  \time 6/4 r2. r2 a'4
  as1.
  r2. r2 a?4
  as1.
  r2 a?4 as2.
  r2 a?4 as2.
  \time 9/4 r2.\tempo "rall." a,?2.\ffff d2. | \mark \default %8
  \tempo "Lento" \numericTimeSignature \time 4/4 R1 * 9
  \tempo "Allegro" R1 * 4
  \tempo "Largo" \transpose bf c \relative c'' {
    ds2\ff b
    f'1 \mark \default %9
    r4 a2.~\fff
    a2 r
    R1 * 3
    ef1~\pp\>
    ef8\! r2.. |
    R1 *3 \bar "|."
  }
}

urtwo = \relative c'' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \compressEmptyMeasures
  \key d \major
  \time 6/4
  \tempo "Allegro"
  \transpose bf c \relative c''' {
    g1.\ff\fermata
    ef\fermata
    a\fermata
    b,~\fermata b
  }
  R1. * 2
  R1.\fermata
  R1. * 12 \mark \default %1
  R1. * 9
  r2. c\f
  a d
  e,1.~ e
  R1. * 12 \mark \default %2
  R1. * 26 \mark \default %3
  \transpose bf c \relative c'' {
    r2 a4\f r2 a4
    R1. * 2
    r2 a4 r2 a4
    R1. * 2
    r2 a4 r2 a4
    R1. * 2
    r2 bf4\f\cresc r2 bf4
    r2 bf4 r2 bf4
    r2 d4 r2 d4
    b2(\ff fs'4) b,2( fs'4)
    c4 r2 r2.
    R1.
    b2( fs'4) b,2( fs'4)
    fs4 r2 r2.
    R1.
    b2( fs4) b2( fs4)
    r2. ef4 r2 |
    r2. ef4 r2
    r2. ef4 r2
    r2. ef4 r2
    b2( fs'4) b,2( fs'4)
    r2. ef4 r2
    r2. ef4 r2 \mark \default %4
    R1.
    r2. fs2.
    R1. * 2
    e,1.\ff~
    e1.~
    e1.~
    e1.\>
    R1. * 20\!
    g'1.\ff
    ef1.
    a,1.\fermata \mark \default %5
    c4 r2 r2.
  }
  R1. * 16
  r2. a->\p |
  R1.
  \time 9/4 r2. r2 cs4-.\f a2.-> |
  \time 6/4 R1. * 10
  \time 9/4 R1*9/4 | \mark \default %6
  \time 6/4 R1. * 17
  f'1.~\p\<
  f1.
  fs?1.~->\p
  fs1.(
  g4) r2 r2. |
  R1. * 3
  fs,4 r2 r2.
  R1.
  fs4 r2 r2.
  R1.
  fs2.\mf\cresc cs
  fs cs
  fs\tempo "rall." cs
  \time 9/4 fs cs fs \mark \default %7
  \time 6/4 r2 r8 a'-.\fff  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r4. a8-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r bf-. cs2.~ |
  cs2 bf4-. a-. bf-. c-.
  bf2 c4-. g2.-> |
  r2 bf4-. cs2 bf4-. |
  \time 9/4 gs4-. as-. b?-. cs2 r4 \tuplet 4/3 { f,4-> cs-> g'?-> a,-> } |
  \time 6/4 r2 r8 a'-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r4. a8-.  a2.~
  a2~ a8 b-. b2.~
  b2 cs4-. cs-. d-. b-.
  cs-. r as-. cs2.~
  cs2 as4-. gs4-. as4-. b-. |
  cs4-. r2 es,4-. cs-. a?-.
  r2 as'4-. cs2 as4-.
  \time 9/4 gs4-. as-. b?-. cs2 r4 \tuplet 4/3 { f,4-> cs-> g'?-> a,-> } |
  \time 6/4 r2. r2 a'4
  fs1.
  r2. r2 a?4
  fs1.
  r2 a?4 fs2.
  r2 a?4 fs2.
  \time 9/4 r2.\tempo "rall." a,?2.\ffff d2. | \mark \default %8
  \tempo "Lento" \numericTimeSignature \time 4/4 R1 * 9
  \tempo "Allegro" R1 * 4
  \tempo "Largo" \transpose bf c \relative c'' {
    ds2\ff b
    f'1 \mark \default %9
    r4 f2.~\fff
    f2 r
    R1 * 3
    a,1~\pp\>
    a8\! r2.. |
    R1 *3 \bar "|."
  }
}
