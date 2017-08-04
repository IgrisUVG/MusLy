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
%#(set-global-staff-size 18)
\paper {
  %#(set-paper-size "a4")
  indent = 1.5\cm  % space for instrumentName
  %short-indent = 1.5\cm  % space for shortInstrumentName
  top-system-spacing #'basic-distance = #15
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #26
  last-bottom-spacing #'basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

%%%%%%%%%%%%%%%%%%
\include "corno1.ly"
\include "dynamicCorno.ly"
%%%%%%%%%%%%%%%%%%
\include "rechts.ly"
\include "dynamicPiano.ly"
\include "links.ly"

\score {
  <<
    \new Staff = "Staff_hornI" \with {
      instrumentName = \markup {
        \right-column {
          "Corno"
          \line { "in F" }
        }
      }
    }
    {
      %\transpose f c'
      \cornoOneMusic
    }
    \new Dynamics \dynamicCorno
    \new PianoStaff  \with {
      instrumentName = "Piano"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      \consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \rechts
      \new Dynamics = "DYN" \dynamicPiano
      \new Staff = "LH" \links
    >>
  >>
}