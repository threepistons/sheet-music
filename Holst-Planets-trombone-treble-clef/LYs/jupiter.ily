\version "2.24.0"

% Most of this movement is in tenor clef.
% The bars shown are the two systems that have bass clef in.

jupone = \relative c' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \set Score.currentBarNumber = #309
  \compressEmptyMeasures
  \key d \major
  \time 2/4
  \tempo "a tempo"
  r8 e' r e
  r8 e r e
  r8 fs r fs
  r8 fs r fs
  r8 fs r fs |
  r8 d r b
% Satan's clef section
  \transpose bf c \relative c'' {
    r8 d r b\>
    r8 b r b
    c'8\p r b r
    a8 r d, r |
    g,8 r b r
    d8 r e r
    a8 r g r
    fs8 r e r |
    d8 r cs r
    b8 r a r
    g r f r
    e8 r4.
    R2 *2
  }
}

juptwo = \relative c' {
  \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
  \set Score.currentBarNumber = #309
  \compressEmptyMeasures
  \key d \major
  \time 2/4
  \tempo "a tempo"
  r8 b' r b
  r8 b r b
  r8 cs r cs
  r8 cs r cs
  r8 d r d |
  r8 b r fs
% Satan's clef section
  \transpose bf c \relative c'' {
    r8 c r g\>
    r8 g r g\!
    R2 * 10
    R2 * 2
  }
}
