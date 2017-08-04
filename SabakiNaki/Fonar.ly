\version "2.18.0"

\language "deutsch"

\header {
  title = "Фонарь"
  composer = "S.N."
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key e \minor
  \time 4/4
}

classicalGuitar = \relative c' {
  \global
  \override TextScript #'staff-padding = #'10
  r4 <cis g' h e>^\markup \fret-diagram-terse #"x;x;11;12;12;12;"
  r <d f h f'>^\markup \fret-diagram-terse #"x;x;12;10;12;13;"
  r <d as' b f'>^\markup \fret-diagram-terse #"x;x;12;13;11;13;"
  r8 <cis g' a e'>4.^\markup \fret-diagram-terse #"x;x;11;12;10;12;"\break
  r4 <e a c fis>^\markup \fret-diagram-terse #"x;x;14;14;13;14;"
  r <e b' c g'>^\markup \fret-diagram-terse #"x;x;14;15;13;15;"
  r <es b' des g>^\markup \fret-diagram-terse #"x;x;13;15;14;15;"
  r8 <d  a' c fis>4.^\markup \fret-diagram-terse #"x;x;12;14;13;14;"
}

\score {
  \new Staff \with {
    instrumentName = "Chit."
  }
  {
    \clef "treble_8" \classicalGuitar
  }
  \layout { }
}
