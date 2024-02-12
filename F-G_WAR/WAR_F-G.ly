\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "F&G War."
  %meter = "Lustig"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #8
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 20
  right-margin = 20
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #14
    %\remove "Bar_number_engraver"
  }
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
    \override Fingering.stencil = ##f
    \override StringNumber.stencil = ##f
    \override StrokeFinger.stencil = ##f
    \override TextScript.stencil = ##f
    \override TextSpanner.stencil = ##f
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "guitar.ly"
\include "dynamic.ly"
\include "chordsSheet.ly"
\include "ossia.ly"

\score {
  \new StaffGroup <<

    \new Staff
    \with {
      instrumentName = "Fl."
    }
    \removeWithTag #'pageBreack
    \removeWithTag #'Part
    \fluteMusic

    \new Dynamics \dynamic

    \new Staff
    \with {
      instrumentName = "Guit."
    }
    \removeWithTag #'Part
    \guitarMusic
    %\new Dynamics \hSheet

    %\removeWithTag #'Ossia
    %\new Staff \ossia

  >>
}
