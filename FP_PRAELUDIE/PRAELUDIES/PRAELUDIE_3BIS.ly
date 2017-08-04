\version "2.18.0"

\language "deutsch"

\header {
  title = "№3bis"
  %meter = "Allegretto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #10
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #26
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
  ragged-last = ##t
}

\include "../dreiBis.ly"

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "RH" \rechtsDreiBis
    \new Dynamics = "DYN" \dynamicDreiBis
    \new Staff = "LH" \linksDreiBis
  >>
}