\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Klavierkonzert"
  subtitle = "Satz I"
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a3")
  indent = 1.5\cm  % space for instrumentName
  short-indent = 1.0\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 15
  outer-margin = 10
}

\layout {
  \context { \RemoveEmptyStaffContext }
  \override PianoStaff.InstrumentName.self-alignment-X = #RIGHT
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  %\override Staff.shortInstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

%%%%%%%%%%%%%%%%%%
\include "rechts.ly"

\include "links.ly"
%%%%%%%%%%%%%%%%%%

\include "flute.ly"
\include "oboe.ly"
\include "clarinet1.ly"
\include "clarinet2.ly"
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
    \new PianoStaff  \with {
      instrumentName = #"Piano"
      shortInstrumentName = #"F-p"
      fontSize = #1
      \override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      \consists #Span_stem_engraver
    }
    <<
      \removeWithTag #'Part
      \new Staff = "RH" \rechts

      \new Staff = "LH" \links
    >>
    \new StaffGroup = "StaffGroup_woodwinds" <<
      \new Staff = "Staff_flute" {
        \set Staff.instrumentName = #"Flauto"
        \set Staff.shortInstrumentName = #"Fl"
        \fluteMusic
      }

      \new Staff = "Staff_oboe" {
        \set Staff.instrumentName = #"Oboe"
        \set Staff.shortInstrumentName = #"Ob"
        \oboeMusic
      }
      \new StaffGroup = "GrandStaff_clarinetto" \with {
        instrumentName = \markup {
          \right-column {
            "Clarinetti"
            \line { "in B"}
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
      \new Staff = "Staff_fagotto" {
        \set Staff.instrumentName = #"Fagotti"
        \set Staff.shortInstrumentName = #"Fag"
        \fagottoMusic
      }
    >>
    \new StaffGroup = "StaffGroup_brass" <<
      \new Staff = "Staff_trumpet" {
        \set Staff.instrumentName = \markup {
          \right-column {
            "Trombe"
            \line { "in B" }
          }
        }
        \set Staff.shortInstrumentName = \markup {
          \right-column {
            "Tr"
            \line { "in B" }
          }
        }
        \transpose b c'
        \trumpetMusic
      }

      \new StaffGroup = "GrandStaff_corni" \with {
        instrumentName = \markup {
          \right-column {
            "Corni"
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
      \new StaffGroup = "GrandStaff_trombon_e_tuba" \with {
        instrumentName = \markup {
          \right-column {
            "Tromboni"
            \line { "e Tuba" }
          }
        }
        shortInstrumentName = \markup {
          \right-column {
            "Trb"
            \line { "e Tb" }
          }
        }
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_trombon" {
          \trombonMusic
        }

        \new Staff = "Staff_tuba" {
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