\version "2.18.2"

\language "deutsch"

\header {
  title = "Concerto Clalinetto"
  meter = "Allegro non moto"
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
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
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
%%%%%%%%%%%%%%%%%%
\include "clarinetSolo.ly"
%%%%%%%%%%%%%%%%%%

\include "flute.ly"
\include "oboe.ly"
\include "clarinet1.ly"
\include "clarinet2.ly"
\include "clarinetA.ly"
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
    \new Staff = "Staff_clarinet_Solo" {
    	\set Staff.midiInstrument = #"clarinet"
      \set Staff.instrumentName = \markup {
        \right-column {
          "Clarinetto Solo"
          \line { "in B" }
        }
      }
      \set Staff.shortInstrumentName = \markup {
        \right-column {
          "Cl Solo"
          \line { "in B" }
        }
      }
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      %\consists #Span_stem_engraver
      %\transpose b c'
      \clarinetSoloMusic
    }
    \new StaffGroup = "StaffGroup_woodwinds" <<
      \new Staff = "Staff_flute" {
      	\set Staff.midiInstrument = #"flute"
        \set Staff.instrumentName = #"2 Flauti"
        \set Staff.shortInstrumentName = #"Fl"
        \fluteMusic
      }
      
      \new Staff = "Staff_oboe" {
      	\set Staff.midiInstrument = #"oboe"
        \set Staff.instrumentName = #"2 Oboi"
        \set Staff.shortInstrumentName = #"Ob"
        \oboeMusic
      }
      \new StaffGroup = "GrandStaff_clarinetto" \with {
        instrumentName = \markup {
          \right-column {
            "4 Clarinetti"
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
        	\set Staff.midiInstrument = #"clarinet"
          %\transpose b c'
          \clarinetOneMusic
        }
        
        \new Staff = "Staff_clarinet2" {
        	\set Staff.midiInstrument = #"clarinet"
          %\transpose b c'
          \clarinetTwoMusic
        }
      >>
      \new Staff = "Staff_clarinetA" {
      	\set Staff.midiInstrument = #"clarinet"
        \set Staff.instrumentName = \markup {
          \right-column {
            "Clarinetto"
            \line { "in A" }
          }
        }
        \set Staff.shortInstrumentName = \markup {
          \right-column {
            "Cl"
            \line { "in A" }
          }
        }
        %\transpose a c'
        \clarinetInAMusic
      }
      \new Staff = "Staff_ClarinetBass" {
      	\set Staff.midiInstrument = #"clarinet"
        \set Staff.instrumentName = \markup {
          \right-column {
            "Clarinetto basso"
            \line { "in B" }
          }
        }
        \set Staff.shortInstrumentName = \markup {
          \right-column {
            "BCl"
            \line { "in B" }
          }
        }
        %\transpose b, c'
        \clarinetBassMusic
      }
      \new Staff = "Staff_fagotto" {
      	\set Staff.midiInstrument = #"bassoon"
        \set Staff.instrumentName = #"Fagotti"
        \set Staff.shortInstrumentName = #"Fag"
        \fagottoMusic
      }
    >>
    \new StaffGroup = "StaffGroup_brass" <<
      \new Staff = "Staff_trumpet" {
      	\set Staff.midiInstrument = #"trumpet"
        \set Staff.instrumentName = #"4 Trombi in  B"
        \set Staff.shortInstrumentName = #"Tr in  B"
        %\transpose b c'
        \trumpetMusic
      }
      
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
        	\set Staff.midiInstrument = #"french horn"
          %\transpose f c' 
          \cornoOneMusic
        }
        \new Staff = "Staff_horn2" {
        	\set Staff.midiInstrument = #"french horn"
          %\transpose f c' 
          \cornoTwoMusic
        }
      >>
      \new StaffGroup = "GrandStaff_trombon_e_tuba" \with {
        instrumentName = \markup {
          \right-column {
            "4 Tromboni"
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
        	\set Staff.midiInstrument = #"trombone"
          \trombonMusic
        }
        
        \new Staff = "Staff_tuba" {
        	\set Staff.midiInstrument = #"tuba"
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
        	\set Staff.midiInstrument = #"string ensemble 1"
          \set Staff.instrumentName = #"Violini I"
          \set Staff.shortInstrumentName = #"V-ni I"
          \vniOneMusic
        }
        
        \new Staff = "Staff_violinII" {
        	\set Staff.midiInstrument = #"string ensemble 1"
          \set Staff.instrumentName = #"Violini II"
          \set Staff.shortInstrumentName = #"V-ni II"
          \vniTwoMusic
        }
      >>
      \new Staff = "Staff_viola" {
      	\set Staff.midiInstrument = #"string ensemble 1"
        \set Staff.instrumentName = #"Viole"
        \set Staff.shortInstrumentName = #"V-le"
        \vleMusic
      }
      
      \new StaffGroup = "GrandStaff_bassi" \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_cello" {
        	\set Staff.midiInstrument = #"string ensemble 1"
          \set Staff.instrumentName = #"Violoncelli"
          \set Staff.shortInstrumentName = #"Vc"
          \vcMusic
        }
        \new Staff = "Staff_bass" {
        	\set Staff.midiInstrument = #"string ensemble 1"
          \set Staff.instrumentName = #"Contrabassi"
          \set Staff.shortInstrumentName = #"Cb"
          \cbMusic
        }
      >>
    >>
  >>
  %\midi {
  %	\tempo 2. = 80
  %}
}