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
  system-system-spacing.basic-distance = 16
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
  \set Staff.fontSize = #-1
  \override Staff.StaffSymbol.staff-space = #(magstep -1)
  \override Staff.StaffSymbol.thickness = #(magstep -1)
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
  b4 f' e4. b'8
  g2~ g8 fis-. r es-. f!2 as
  g2~ g8 fis-. r es-. f2 e
  R1 r2 b4 h g es' d2
  cis4 d a fis' f2
  e~ e8 dis-. r c-. d2
  h~ h8 b-. r g-. a2 r
  e'~ e8 dis-. r c-. d4 es h g'
  fis2~ fis8 f-. r d-.
  e2 es4.( d8) h4 fis' f4. h8
  a2~ a8 gis-. r f-. g2 r
  <<
    {es2~ es8 d-. r h-. cis2 r}
    \new Staff {
      \omit Staff.TimeSignature
      \omit Staff.Clef
      \set Staff.fontSize = #-1
      \override Staff.StaffSymbol.staff-space = #(magstep -1)
      \override Staff.StaffSymbol.thickness = #(magstep -1)
      {c2~ c8 h-. r gis-. b2 r}
    }
    \new Staff {
      \omit Staff.TimeSignature
      \omit Staff.Clef
      \set Staff.fontSize = #-1
      \override Staff.StaffSymbol.staff-space = #(magstep -1)
      \override Staff.StaffSymbol.thickness = #(magstep -1)
      {des2~ des8 c-. r a-. h2 r}
    }
  >>
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {

  \new Staff \ossia

}

\score {
  
  \relative {
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
    e'~ e8 dis-. r c-. d4 es h g' fis2~ fis8 f-. r d-.
    e2 es4.( d8) h4 fis' f4. h8 a2~ a8 gis-. r f-. g2 r
    es2~ es8 d-. r h-. cis2 r es4 b f'4. es'8
    c2~ c8 h-. r gis-. b2 des~ des8 c-. r a-. h2 a r
    \bar "|."
  }

}