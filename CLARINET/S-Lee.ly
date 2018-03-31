\version "2.19.15"

\language "deutsch"

\header {
  title = "***"
  %meter = "Rubato"
  %subtitle = "6 Clarinetti"
  %subsubtitle = "in B"
  composer = "S. Lee."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}

\book {
  \score {
    \new Staff \with {
      instrumentName = "ETUDE 1"
    }
    \relative {
      \key d \major
      d'2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      a,,2( cis4 e) a4.( cis8 e cis a g) fis2~( fis8 a d fis) a2 r
      a4.( gis8 h a fis d) d2( cis4) r e4.( dis8 fis e cis a) g2( fis4) r
      fis8( a d fis) a2 g,8( h d g) h2 f4.( e8 g f e d) cis4.( h8 a gis g e)
    }
  }
}