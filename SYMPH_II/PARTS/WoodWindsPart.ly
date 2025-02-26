\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Grave"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a4")
  indent = 1.2\cm
  short-indent = 0.5\cm
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 10
}

\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
    %\RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
    %\remove "Bar_number_engraver"
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "../flute.ly"
\include "../oboe.ly"
\include "../clarinet1.ly"
\include "../clarinet2.ly"
\include "../fagotto.ly"

\score {
  \new StaffGroup = "StaffGroup_woodwinds" <<
    \new Staff = "Staff_flute" {
      \set Staff.instrumentName = #"3 Flauti"
      \set Staff.shortInstrumentName = #"Fl"
      \fluteMusic
    }

    \new Staff = "Staff_oboe" {
      \set Staff.instrumentName = #"3 Oboi"
      \set Staff.shortInstrumentName = #"Ob"
      \oboeMusic
    }
    \new StaffGroup = "GrandStaff_clarinetto" \with {
      instrumentName = \markup {
        \right-column {
          "5 Clarinetti"
          \line { "in B" }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Cl"
          \line { "in B" }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_clarinet1" {
        \transpose b c'
        \clarinetOneMusic
      }

      \new Staff = "Staff_clarinet2" {
        \transpose b c'
        \clarinetTwoMusic
      }
    >>
    \new StaffGroup = "GrandStaff_fagotto" \with {
      instrumentName = \markup {
        \right-column {
          "2 Fagotti e"
          \line { "Contrafagotto" }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Fag"
          \line { "e Cf" }
        }
      }
    }
    \new Staff = "Staff_fagotti" {
      \fagottoMusic
    }
  >>
}