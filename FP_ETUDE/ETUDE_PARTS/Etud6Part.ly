\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude № 6"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #10
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #16
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

gmult = #1.5

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
  \context {
    \Dynamics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #`((basic-distance . 0)
         (padding . 0))
    }
  }
}

%\include "../noteHeadsOpposite.ly"
\include "../EtudSechs.ly"

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsSechs
    \new Dynamics = "DYN" \dynamicSechs
    \new Staff = "LH" \linksSechs
  >>
}