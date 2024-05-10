\version "2.18.0"

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
  indent = 1.5\cm
  %short-indent = 1.5\cm
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #26
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    %\remove "Bar_number_engraver"
  }
}

%%%%%%%%%%%%%%%%%%
\include "../cb.ly"
%%%%%%%%%%% RH %%%%%%%%%%%%
\include "../rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "../links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%

dynamic = {
  \override Hairpin.to-barline = ##f
  
}

\score {
  <<    
    \new PianoStaff  \with {
      instrumentName = "Piano"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      \consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \rechts
      \new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \links
    >>
    \new Staff = "Staff_bass" {
      \set Staff.instrumentName = #"Contrabassi"
      %\set Staff.shortInstrumentName = #"Cb"
      \cbMusic
    }
  >>
}