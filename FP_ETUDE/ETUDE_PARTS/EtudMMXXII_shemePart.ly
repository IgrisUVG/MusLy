\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Etude MMXXII Sheme"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #10
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #20
  %system-system-spacing.basic-distance = #29
  last-bottom-spacing.basic-distance = #30
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
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

%\include "../EtudMMXXII.ly"
\include "../EtudMMXXII_sheme.ly"

%{\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsMMXXII
    \new Staff = "LH" \linksMMXXII
  >>
}%}

\score {
  \new Staff \shemeMMXXII
  \layout {
    ragged-right = ##t
    indent = 0
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      %\remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "System_start_delimiter_engraver"
      \omit SystemStartBar
    }
  }
}
\score {
  \new PianoStaff <<
    \new Staff = "RH" \relative {
      \clef treble
      \key as \major
      \time 9/8
      \ottava #1
      \set Staff.ottavation = #"8"
      es''''8 as, c, f b des
      \override Beam.stencil = ##f
      c
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      f, as,
      \ottava #0
      \time 4/4
      s4 s
      \once \override NoteHead.X-offset = #1
      gis8 \circleN g fis
      \once \override NoteHead.X-offset = #.2
      \circleN f
      \once \override NoteHead.X-offset = #.3
      c
      \once \override NoteHead.X-offset = #.5
      \circleN h
    }
    \new Staff = "LH" \relative {
      \clef bass
      \time 9/8
      \ottava #-1
      \set Staff.ottavation = #"8"
      a,,,8 es' cis' b, e es' d \set stemRightBeamCount = #1 e,!
      \ottava #0
      s
      \time 4/4
      \override Staff.Clef.stencil = ##f
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      \override Beam.stencil = ##f
      \clef treble
      s4 s
      \once \override NoteHead.X-offset = #1
      g''''!8 \circleN gis f!
      \once \override NoteHead.X-offset = #.2
      \circleN fis
      \once \override NoteHead.X-offset = #.3
      h,!
      \once \override NoteHead.X-offset = #.5
      \circleN c!
    }
  >>
  \layout {
    ragged-right = ##t
    indent = 0
    \context {
      \Staff
      \remove "Time_signature_engraver"
      %\remove "Clef_engraver"
      \remove "Bar_engraver"
    }
  }
}