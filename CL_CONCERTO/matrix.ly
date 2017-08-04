\version "2.19.15"

\language "deutsch"

\header {
  tagline = ##f
}
%{
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #18
  top-markup-spacing #'basic-distance = #14
  markup-system-spacing #'basic-distance = #18
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #18
  two-sided = ##t
  inner-margin = 15
  outer-margin = 15
}
%}
\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  indent = #0
  ragged-right = ##f
  ragged-last = ##f
}

seriaIs = \relative c'' {
  \clef treble
  \time 1/4
  f e h es d b fis a cis g c \parenthesize as
}
seriaEs = \relative c'' {
  \clef treble
  \time 1/4
  f e h es d b ges a des g c \parenthesize as
}

\score {
  %\new StaffGroup
  <<
    \new Staff{
      \set Staff.instrumentName = #"P0"
      \seriaEs               %P0
    }
    \new Staff{
      \set Staff.instrumentName = #"P1"
      \transpose h c'
      \seriaIs               %P1
    }
    \new Staff{
      \set Staff.instrumentName = #"P6"
      \transpose ges c
      \seriaEs               %P6
    }
    \new Staff{
      \set Staff.instrumentName = #"P2"
      \transpose b c
      \seriaEs               %P2
    }
    \new Staff{
      \set Staff.instrumentName = #"P3"
      \transpose a c
      \seriaIs               %P3
    }
    \new Staff{
      \set Staff.instrumentName = #"P7"
      \transpose f c
      \seriaEs               %P7
    }
    \new Staff{
      \set Staff.instrumentName = #"P11"
      \transpose des c
      \seriaEs               %P11
    }
    \new Staff{
      \set Staff.instrumentName = #"P8"
      \transpose e c
      \seriaIs               %P8
    }
    \new Staff{
      \set Staff.instrumentName = #"P4"
      \transpose as c
      \seriaEs               %P4
    }
    \new Staff{
      \set Staff.instrumentName = #"P10"
      \transpose d c
      \seriaEs               %P10
    }
    \new Staff{
      \set Staff.instrumentName = #"P5"
      \transpose g c
      \seriaEs               %P5
    }
    \new Staff{
      \set Staff.instrumentName = #"P9"
      \transpose es c
      \seriaEs               %P9
    }
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      %\remove "Bar_engraver"
      \hide Stem
    }
  }
}