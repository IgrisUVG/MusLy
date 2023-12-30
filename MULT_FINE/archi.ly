\version "2.19.15"

\language "deutsch"

archiIMusic = \relative {
  \clef alto
  \key d \major
  \time 3/4
  r4 a <e' g><d fis> r a h g h cis e g
  \repeat unfold 2 {a4 a, <e' g><d fis> r a h g h cis e g}
  a4 h, d g e, g a ais fis' e a, d e, cis' g
}

archiIIMusic = \relative {
  \clef bass
  \key d \major
  \time 3/4
  \repeat unfold 3 {d4 r2 r4 d a g d' e g r a}
  d,4 r2 ais4 r2 d4 r2 a4 r2 r a4
  \repeat unfold 3 {d4 r2 r4 d a g d' e g r a}
}