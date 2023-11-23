\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  subtitle = "Woodwinds"
  meter = "Allegro non moto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #16
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "../flute.ly"
\include "../oboe.ly"
\include "../clarinet1.ly"
\include "../clarinet2.ly"
\include "../clarinetA.ly"
\include "../clarinetBass.ly"
\include "../fagotto.ly"

\score {
  \new StaffGroup = "StaffGroup_woodwinds" <<
    \new Staff = "Staff_flute" {
      \set Staff.instrumentName = #"2 Flauti"
      \fluteMusic
    }
    \new Staff = "Staff_oboe" {
      \set Staff.instrumentName = #"2 Oboi"
      \oboeMusic
    }
    \new StaffGroup = "GrandStaff_clarinetto" \with {
      instrumentName = \markup {
        \right-column {
          "4 Clarinetti"
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
      \new Staff = "Staff_clarinet2" {
        %\transpose b c'
        \clarinetTwoMusic
      }
    >>
    \new Staff = "Staff_clarinetA" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Clarinetto"
          \line { "in A" }
        }
      }
      %\transpose a c'
      \clarinetInAMusic
    }
    \new Staff = "Staff_ClarinetBass" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Clarinetto basso"
          \line { "in B" \smaller \flat }
        }
      }
      %\transpose b, c'
      \removeWithTag #'inB
      \clarinetBassMusic
    }
    \new Staff = "Staff_fagotto" {
      \set Staff.instrumentName = #"Fag"
      \fagottoMusic
    }
  >>
}