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
  indent = 1.5\cm  % space for instrumentName
  short-indent = 1.0\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  %markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
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
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "oboe.ly"
\include "clarinet1.ly"
\include "clarinet2.ly"
\include "fagotto.ly"
%%%%%%%%%%%%%%%%%%

\include "trumpet1.ly"
\include "trumpet2.ly"
\include "corno1.ly"
\include "corno2.ly"
\include "trombon1.ly"
\include "trombon2.ly"
\include "tuba.ly"
%%%%%%%%%%%%%%%%%%

\include "rechts.ly"
\include "links.ly"
\include "pedal.ly"
%%%%%%%%%%%%%%%%%%

\include "timpani.ly"
\include "drums.ly"
%%%%%%%%%%%%%%%%%%

\include "vni1.ly"
\include "vni2.ly"
\include "vle.ly"
\include "vc.ly"
\include "cb.ly"
%%%%%%%%%%%%%%%%%%

\score {

  <<
    %%%%%%%%%%%%%%% WOODWINDS %%%%%%%%%%%%%%%
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

    %%%%%%%%%%%%%%% BRASS %%%%%%%%%%%%%%%
    \new StaffGroup = "StaffGroup_brass" <<
      \new StaffGroup = "GrandStaff_trombi" \with {
        instrumentName = \markup {
          \right-column {
            "5 Trombi"
            \line { "in B" }
          }
        }
        shortInstrumentName = \markup {
          \right-column {
            "Tb"
            \line { "in B" }
          }
        }
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_trumpet1" {
          \transpose b c'
          \trumpetOneMusic
        }
        \new Staff = "Staff_trumpet2" {
          \transpose b c'
          \trumpetTwoMusic
        }
      >>
      \new StaffGroup = "GrandStaff_corni" \with {
        instrumentName = \markup {
          \right-column {
            "5 Corni"
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
            "5 Tromboni"
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
          \trombonOneMusic
        }

        \new Staff = "Staff_trombon2" {
          \trombonTwoMusic
        }
      >>
      \new Staff = "Staff_basso" {
        \set Staff.instrumentName = #"Basso"
        \set Staff.shortInstrumentName = #"B"
        \tubaMusic
      }
    >>
    
    %%%%%%%%%%%%%%%% PIANO %%%%%%%%%%%%%%%%
    \new PianoStaff  \with {
      instrumentName = #"Piano"
      shortInstrumentName = #"F-p"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      %\consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \RemoveEmptyStaves \rechts
      %\new Dynamics = "DYN" \dynamicPiano
      \new Staff = "LH" \RemoveEmptyStaves \links
      \new Dynamics = "PED" \RemoveEmptyStaves \pedal
    >>
    
    %%%%%%%%%%%%%%%% DRUMS %%%%%%%%%%%%%%%%
    \new StaffGroup = "StaffGroup_drums" <<
      \new Staff = "Staff_timpani" {
        \set Staff.instrumentName = #"Timpani"
        \set Staff.shortInstrumentName = #"Timp"
        \timpMusic
      }
      \new DrumStaff = "Staff_drums" \RemoveEmptyStaves {
        \set Staff.instrumentName = #"Drums"
        \set Staff.shortInstrumentName = #"Drm"
        \drumMusic
      }
    >>

    %%%%%%%%%%%%%%% STRINGS %%%%%%%%%%%%%%%
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
