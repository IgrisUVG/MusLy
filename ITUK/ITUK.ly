\version "2.19.15"

\language "deutsch"

\header {
  title = "ITUK"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

%#(set-global-staff-size 16)
\paper {
  indent = 3.0\cm  % space for instrumentName
  %short-indent = 1.5\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override PianoStaff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "tenor.ly"
\include "pianoP.ly"
\include "organ.ly"
\include "bass.ly"
\include "drums.ly"

tenorSaxPart = \new Staff \with {
  instrumentName = "Tenor"
} \tenorSax

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "RH" \with {
  } \rightPianoP
  \new Staff = "LH" \with {
  } \leftPianoP
>>

organPart = \new StaffGroup \with {
  systemStartDelimiter = #'SystemStartSquare
  instrumentName = "Organ"
} <<
\new PianoStaff 
<<
  \new Staff = "RH" \with {
  } \rightOrganP
  \new Staff = "LH" \with {
  } \leftOrganP
>>
\new Staff = "PF" \with {
  } \fusOrganP
>>

bassPart = \new Staff \with {
  instrumentName = "Bass"
} \bass

drumsPart = \new DrumStaff \with {
  instrumentName = "Drums"
} \drum

\score {
  \new StaffGroup
  <<
    \tenorSaxPart
    \pianoPart
    \organPart
    \bassPart
    \drumsPart
  >>
}
