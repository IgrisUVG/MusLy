\version "2.19.15"

\language "deutsch"

\header {
  title = "Колыбельная №1"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  %score-system-spacing.basic-distance = #40
  %score-markup-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 10
  right-margin = 13
}

\layout {
  indent = 7
  \context {
    \Score
    \remove "Bar_number_engraver"
    %\override StaffGrouper.staff-staff-spacing.padding = #0
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #1
  }
}

RH = \relative {
  \clef treble
  \key g \minor
  \override Staff.TimeSignature.stencil = ##f
  g'4 d'
  <<
    {
      b2 g4
    }
    \\
    {
      r8 d es e f r
    }
  >>
  fis'4
  <<
    {
      d2 e4 <d, b'> d' <es, b'> des' <fes, b><es c'>2
    }
    \\
    {
      r8 ces' b a as g 
      \once \override NoteColumn.force-hshift = #1.3
      fis f as g
      \once \override NoteColumn.force-hshift = #1.3
      ges f as g
      \once \override NoteColumn.force-hshift = #1.5
      ges f 
      \once \override NoteColumn.force-hshift = #1.3
      a as g fis
    }
  >>
  g4 d'
  <<
    {
      b2 g4
    }
    \\
    {
      r8 d es e f r
    }
  >>
  fis'4
  <<
    {
      d2 d4 e fis g d b <c e>2
    }
    \\
    {
      as8 g fis f es e f fis g gis a b a as g ges f ges g as
    }
  >>
  \bar "|."
}

LH = \relative {
  \clef bass
  \key g \minor
  \override Staff.TimeSignature.stencil = ##f
  es,,8 d'' a' f' c4 ces
  es,,,8 es'' b' g' e,,,4 f
  g8 fis'' b es g,,, f'' b d
  g,,, d'' a' es' fis,,, d'' b' f,,
  es8 d'' a' f' c4 ces
  es,,,8 es'' b' g' ces,4 b8 cis,,,
  d f'' b es d,,, fis'' b d
  d,,, b'' fis' d' b4 a8 d,,,
}

\score {
  \new PianoStaff
  \with {
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #20
  }
  <<
    \new Staff = "RH" \RH
    \new Staff = "LH" \LH
  >>
  %\midi {}
}