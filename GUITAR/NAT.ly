\version "2.19.15"

\language "deutsch"

\header {
  title = "Nat"
  composer = "I. G."
  meter = "A"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 5
  markup-system-spacing.basic-distance = 20
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 22
  last-bottom-spacing.basic-distance = 20

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Voice
    \override Glissando.thickness = #1.5
    \override Glissando.gap = #0.1
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define RH rightHandFinger)

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                             further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                          further 2) 0)
         #})

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.font-size = #-5
     \override TextSpanner.dash-fraction = #0.3
     \override TextSpanner.dash-period = #1.5
     \override TextSpanner.bound-details.right.arrow = ##t
     \override TextSpanner.arrow-width = #0.2
     \override TextSpanner.arrow-length = #0.7
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

stringNumSpan =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.font-size = #-5
     \override TextSpanner.dash-fraction = #0.3
     \override TextSpanner.dash-period = #1.5
     %\override TextSpanner.bound-details.right.arrow = ##t
     %\override TextSpanner.arrow-width = #0.2
     %\override TextSpanner.arrow-length = #0.7
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classicalGuitar = \relative {
  \key d \major
  \time 4/2
  \override Staff.TimeSignature.stencil = ##f
  \partial 2 e'4 g
  <<
    {
      fis4 e2 g4
    }
    \\
    {
      \voiceOne
      a,1
    }
    \\
    {
      \voiceTwo
      e2 dis
    }
    \\
    {
      \voiceTwo
      d,1
    }
  >>
  <<
    {
      fis''4 e2 g!4 fis e2 g4
    }
    \\
    {
      a,2 gis g1
    }
    \\
    {
      \voiceTwo
      \once\override NoteColumn.force-hshift = #0.2
      d1 cis2 c
    }
  >>
  <<
    {
      d'2 cis4 d
    }
    \\
    {
      \voiceTwo
      \once\override Rest.extra-offset = #'(-0.3 . 5.8)
      r4 a2.
    }
    \\
    {
      \voiceTwo
      fis1
    }
    \\
    {
      \voiceTwo
      h,1
    }
  >>
  \time 5/2
  <<
    {
      fis''4 e g fis a d fis,2 e\prall
    }
    \\
    {
      a,4 g fis e d2 e g
    }
    \\
    {
      \voiceTwo
      g,2 
      \once\override NoteColumn.force-hshift = #0.2
      a h g a
    }
  >>
  \time 4/2
  <d, fis' d'>\breve
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \line { \circle 6"= D" }
      }
    }
  }
  {
    \clef "treble_8" \classicalGuitar
  }
  \layout { }
}
