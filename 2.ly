\version "2.19.15"

\language "deutsch"

\score {
  \relative {
    \clef "treble_8"
    \key d \major
    \time 3/4
    <<
      {
        r2 a'8 g\prall( fis) cis( d) e4.
      }
      \\
      {
        \repeat unfold 12 {fis,16 g}
      }
    >>
  }
}