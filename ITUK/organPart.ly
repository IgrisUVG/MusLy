\version "2.19.15"

\language "deutsch"

\header {
  title = "ITUK"
  subsubtitle = "Organ"
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

\include "organ.ly"

dynamic = {
  \override Hairpin.to-barline = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new StaffGroup \with {
    %systemStartDelimiter = #'SystemStartSquare
  } <<
    \new PianoStaff
    <<
      \new Staff = "RH" \with {
      } \removeWithTag #'Partitur \rightOrgan
      \new Staff = "LH" \with {
      } \removeWithTag #'Partitur \leftOrgan
    >>
    \new Staff = "PF" \with {
    } \removeWithTag #'Partitur \fusOrgan
  >>
}