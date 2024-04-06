\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Misterio"
  subtitle = "Woodwinds"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  #(set-paper-size "a4")
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
  indent = 10
  \context {
    \RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    %\RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    %\RemoveAllEmptyStaves
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
\include "../clarinetBass.ly"
\include "../fagotto.ly"

\score {
  \new StaffGroup = "StaffGroup_woodwinds" <<
    \new StaffGroup = "GrandStaff_flute" \with {
      instrumentName = \markup {
        \right-column {
          "2 Flauti"
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Fl"
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_flute1" {
        \fluteEinsMusic
      }
      \new Staff = "Staff_flute2" {
        \fluteZweiMusic
      }
    >>
    \new StaffGroup = "GrandStaff_oboe" \with {
      instrumentName = \markup {
        \right-column {
          "2 Oboi"
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Ob"
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_oboe1" {
        \oboeEinsMusic
      }
      \new Staff = "Staff_oboe2" {
        \oboeZweiMusic
      }
    >>
    \new StaffGroup = "GrandStaff_clarinetto" \with {
      instrumentName = \markup {
        \right-column {
          "4 Clarinetti"
          \line { "in B" \smaller \flat }
        }
      }
      shortInstrumentName = \markup {
        \right-column {
          "Cl"
          \line { "in B" \smaller \flat }
        }
      }
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_clarinet1" {
        \transpose b c'
        \clarinetEinsMusic
      }

      \new Staff = "Staff_clarinet2" {
        \transpose b c'
        \clarinetZweiMusic
      }
      \new Staff = "Staff_clarinet3" {
        \transpose b c'
        \clarinetDreiMusic
      }
      \new Staff = "Staff_clarinet4" {
        \transpose b c'
        \clarinetVierMusic
      }
    >>
    \new Staff = "Staff_ClarinetBass" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Clarinetto basso"
          \line { "in B" \smaller \flat }
        }
      }
      \set Staff.shortInstrumentName = \markup {
        \right-column {
          "BCl"
          \line { "in B" \smaller \flat }
        }
      }
      \transpose b, c'
      \clarinetBassMusic
    }
    \new StaffGroup = "GrandStaff_fagotti" \with {
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_fagotto" {
        \set Staff.instrumentName = #"Fagotto"
        \set Staff.shortInstrumentName = #"Fag"
        \fagottoMusic
      }
      \new Staff = "Staff_fagotto" {
        \set Staff.instrumentName = #"Contrafagotto"
        \set Staff.shortInstrumentName = #"CFag"
        \contraFagottoMusic
      }
    >>
  >>
}