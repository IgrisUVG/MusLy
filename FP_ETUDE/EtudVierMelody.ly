\version "2.19.15"

\language "deutsch"

\header {
  title = "Etude № 4"
  subtitle = "Melody"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #30
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\relative {
  \clef treble
  \key c \major
  \time 12/16
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  \set Staff.beatStructure = #'( 4)
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
  R2.*2 r4 <a' a'><e e'><c c'><a a'><g g'><d' d'>2 r4 R2.
  \break
  <fis fis'>4<gis gis'><e' e'><cis cis'>2.~ q2 <cis cis'>4 <dis dis'><eis eis'><cis cis'>
  <his his'>2 <cis cis'>4
  \break
  <dis dis'><eis eis'><fis fis'><gis gis'>2. R2. r4 a, e c a g
  \break
  d'2. R2. fis4 gis e' cis2.^~ cis!2 cis4
  \break
  dis eis cis his2 cis4 dis eis fis gis2. R2.*5
  \break
  r4
  \ottava #1
  \set Staff.ottavation = #"8"
  d'' a f d c g'2. r4 des'4. as8
  \ottava #0
  R2.
  \bar "|."
}