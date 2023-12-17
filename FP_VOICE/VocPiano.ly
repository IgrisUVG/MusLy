\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  %title = ""
  %meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #20
  score-system-spacing.basic-distance = #28
  system-system-spacing.basic-distance = #24
  last-bottom-spacing.basic-distance = #28
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}

\include "voice.ly"
\include "rechts.ly"
\include "links.ly"

\score {
  <<
    \new Voice = "mel" \soloVoiceOne
    \new PianoStaff \with {
      %instrumentName = "Piano"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      %\consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \rechtsOne
      \new Staff = "LH" \linksOne
    >>
  >>
}
%\pageBreak
\score {
  <<
    \new Voice = "mel" \soloVoiceTwo
    \new PianoStaff \with {
      %instrumentName = "Piano"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      %\consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \rechtsTwo
      \new Staff = "LH" \linksTwo
    >>
  >>
}
%\pageBreak
\score {
  <<
    \new Voice = "mel" \soloVoiceThree
    \new PianoStaff \with {
      %instrumentName = "Piano"
      %fontSize = #1
      %\override StaffSymbol.staff-space = #(magstep 1)
      %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
      %\consists #Span_stem_engraver
    }
    <<
      \new Staff = "RH" \rechtsThree
      \new Staff = "LH" \linksThree
    >>
  >>
}