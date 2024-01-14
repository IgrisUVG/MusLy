\version "2.19.15"

\language "deutsch"

\header {
  title = "ITUK"
  subsubtitle = "Piano"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
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
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
  \override Staff.TimeSignature.stencil = ##f
}

\include "piano.ly"

dynamic = {
  \override Hairpin.to-barline = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rightPiano
    %\new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \leftPiano
  >>
}