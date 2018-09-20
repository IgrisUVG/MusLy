\version "2.19.15"

\language "deutsch"

\header {
  %title = "N"
  %meter = "Allegretto"
  %composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 5
  markup-system-spacing.basic-distance = 15
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 20
  score-system-spacing.basic-distance = 20
  last-bottom-spacing.basic-distance = 25

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 0
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  %\key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
}

ossia = \relative {
  \global
  d''2~ d8 cis-. r b-. c!2 r
  %\break
  as~ as8 g-. r e fis2 r
  %\break
  b~ b8 a-. r fis-. as2 r
  %\break
  f~ f8 e-. r d es2 d'4.( cis8)
  %\break
  b4 f' e4. b'8 g2~ g8 fis-. r es-. f!2 as
  g2~ g8 fis-. r es-. f2 e R1 r2 b4 h g es' d2
  cis4 d a fis' f2 e~ e8 dis-. r c-. d2 h~ h8 b-. r g-. a2 r
  e'~ e8 dis-. r c-. d4 es h g' fis2~ fis8 f-. r d-. e2
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {

  \new Staff \ossia

}