\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Frühling"
  %meter = "Andante"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
    %\omit SpanBar
  }
  \context {
    \Staff
    %\omit BarLine
    \omit TimeSignature
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%% INCLUDE %%%%%%%%%
\include "../Fruhling.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {

  \new PianoStaff <<
    \new Staff = "RH" \rechtsFruhling
    \new Dynamics = "DYN" \dynamicFruhling
    \new Staff = "LH" \linksFruhling
  >>

}