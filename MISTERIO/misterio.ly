\version "2.18.2"

\language "deutsch"

\header {
  title = "Misterio"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a4")
  indent = 1.5\cm  % space for instrumentName
  short-indent = 1.0\cm  % space for shortInstrumentName
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 10
}
\layout {
  \context {
    \RemoveEmptyStaffContext
  }
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
}

\include "flute1.ly"
\include "flute2.ly"
\include "oboe.ly"
\include "clarinet1.ly"
\include "clarinet2.ly"
\include "clarinetBass.ly"
\include "fagotto.ly"
%%%%%%%%%%%%%%%%%%

\include "trumpet.ly"
\include "corno1.ly"
\include "corno2.ly"
\include "trombon.ly"
\include "tuba.ly"
%%%%%%%%%%%%%%%%%%

\include "vni1.ly"
\include "vni2.ly"
\include "vle.ly"
\include "vc.ly"
\include "cb.ly"
%%%%%%%%%%%%%%%%%%

\score {
  <<
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
        \new Staff = "Staff_flute" {
          \fluteOneMusic
        }
        \new Staff = "Staff_flute" {
          \fluteTwoMusic
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
        \new Staff = "Staff_oboe" {
          \oboeMusic
        }
        \new Staff = "Staff_oboe" {
          \oboeMusic
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
          \clarinetOneMusic
        }

        \new Staff = "Staff_clarinet2" {
          \transpose b c'
          \clarinetTwoMusic
        }
        \new Staff = "Staff_clarinet1" {
          \transpose b c'
          \clarinetOneMusic
        }

        \new Staff = "Staff_clarinet2" {
          \transpose b c'
          \clarinetTwoMusic
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
          \fagottoMusic
        }
      >>
    >>

    \new StaffGroup = "StaffGroup_brass" <<
      \new StaffGroup = "GrandStaff_trombi" \with {
        instrumentName = \markup {
          \right-column {
            "4 Trombi"
            \line { "in B" \smaller \flat }
          }
        }
        shortInstrumentName = \markup {
          \right-column {
            "Tb"
            \line { "in B" \smaller \flat }
          }
        }
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_trumpet1" {
          \transpose b c'
          \trumpetMusic
        }
        \new Staff = "Staff_trumpet2" {
          \transpose b c'
          \trumpetMusic
        }
      >>
      \new StaffGroup = "GrandStaff_corni" \with {
        instrumentName = \markup {
          \right-column {
            "4 Corni"
            \line { "in F" }
          }
        }
        shortInstrumentName = \markup {
          \right-column {
            "Cor"
            \line { "in F" }
          }
        }
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_hornI" {
          \transpose f c'
          \cornoOneMusic
        }
        \new Staff = "Staff_horn2" {
          \transpose f c'
          \cornoTwoMusic
        }
      >>
      \new StaffGroup = "GrandStaff_trombon" \with {
        instrumentName = \markup {
          \right-column {
            "4 Tromboni"
          }
        }
        shortInstrumentName = \markup {
          \right-column {
            "Trb"
          }
        }
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_trombon1" {
          \trombonMusic
        }

        \new Staff = "Staff_trombon2" {
          \tubaMusic
        }
      >>
    >>
    \new StaffGroup = "StaffGroup_strings" <<
      \new StaffGroup = "GrandStaff_violins" \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_violinI" {
          \set Staff.instrumentName = #"Violini I"
          \set Staff.shortInstrumentName = #"V-ni I"
          \vniOneMusic
        }

        \new Staff = "Staff_violinII" {
          \set Staff.instrumentName = #"Violini II"
          \set Staff.shortInstrumentName = #"V-ni II"
          \vniTwoMusic
        }
      >>
      \new Staff = "Staff_viola" {
        \set Staff.instrumentName = #"Viole"
        \set Staff.shortInstrumentName = #"V-le"
        \vleMusic
      }

      \new StaffGroup = "GrandStaff_bassi" \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_cello" {
          \set Staff.instrumentName = #"Violoncelli"
          \set Staff.shortInstrumentName = #"Vc"
          \vcMusic
        }
        \new Staff = "Staff_bass" {
          \set Staff.instrumentName = #"Contrabassi"
          \set Staff.shortInstrumentName = #"Cb"
          \cbMusic
        }
      >>
    >>
  >>
}