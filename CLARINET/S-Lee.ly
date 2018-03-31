\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #18
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #18
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #18
  two-sided = ##t
  inner-margin = 15
  outer-margin = 15
}

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
    \remove "Bar_number_engraver"
  }
}

\book {
  \score {
    \new Staff \with {
      instrumentName = "ETUDE 1"
    }
    \transpose c' d'
    \relative {
      \key d \major
      d'2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      a,,2( cis4 e) a4.( cis8 e cis a g) fis2~( fis8 a d fis) a2 r
      a4.( gis8 h a fis d) d2( cis4) r e4.( dis8 fis e cis a) g2( fis4) r
      fis8( a d fis) a2 g,8( h d g) h2 f4.( e8 g f e d) cis4.( h8 a gis g e)
      d2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      ais,,2( cis4 e) fis4.( ais8 cis ais fis e) d2~( d8 fis h d) fis2 r
      h,,2( d4 fis) h4.( ais8 cis h fis d) e2( g4 c) e4.( dis8 fis e c g)
      eis2( gis4 h) d4.( cis!8 e! d cis h) ais4.( fis'8 g fis cis e)
      d4.( cis8 e d cis h) ais4.( fis'8 g fis cis e) d4.( cis8 e d cis h)
      ais2( cis4 fis) a,!2( cis4 fis) g2( e4 cis) a2( g4 e)
      d2( fis4 a) d4.( cis8 e d a fis) e2( g8 a cis e) g2 r
      a,,2( cis4 e) a4.( cis8 e cis a g) fis2~( fis8 a d fis) a2 r
      d,,,2( fis4 a) c4.( h8 d c a fis) g2~( g8 h d g) h2 r
      gis~( gis8 h d f) h2 r a~( a8 gis g e) cis( a g e cis a g e)
      \repeat unfold 2 {d2( fis4 a) d4.( cis8 e d a fis)}
      d1~ d4 r r2
      \bar "|."
    }
  }
}