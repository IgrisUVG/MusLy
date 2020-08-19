\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = "I. G."
  tagline = ##f
}
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 10
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}
\include "..\dynamicWoodwind.ly"
\include "..\flute.ly"
\include "..\oboe.ly"
\include "..\clarinet1.ly"
\include "..\clarinet2.ly"
\include "..\fagotto.ly"
\score {
  \new StaffGroup = "StaffGroup_woodwinds" <<
    \new Staff = "Staff_flute" {
      \set Staff.instrumentName = #"Fl"
      \fluteMusic
    }
    \new Dynamics \dynamicFlute
    \new Staff = "Staff_oboe" {
      \set Staff.instrumentName = #"Ob"
      \oboeMusic
    }
    \new StaffGroup = "GrandStaff_clarinetto" \with {
      instrumentName = \markup {
        \right-column {
          "Clarinetti"
          \line { "in B" \smaller \flat }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_clarinet1" {
        %\transpose b c'
        \clarinetOneMusic
      }      
      \new Dynamics \dynamicClarinet
      \new Staff = "Staff_clarinet2" {
        %\transpose b c'
        \clarinetTwoMusic
      }
    >>
    \new Staff = "Staff_fagotto" {
      \set Staff.instrumentName = #"Fag"
      \fagottoMusic
    }
  >>
}