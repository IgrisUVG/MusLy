\version "2.19.15"

\language "deutsch"

\header {
  title = "N"
  meter = "Allegretto"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 25
  score-system-spacing.basic-distance = 28
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

global = {
  %\key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
}

classicalGuitar = \relative {
  \global
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      \override StrokeFinger.extra-offset = #'(-1.5 . -1.5)
      d''32\RH #1 d\RH #2 d\RH #3 d\RH #4 as d d d g, d' d d e, d' d d 
      a, d' d d <a cis>8-.\noBeam r <g b>-.
    }
    \\
    {
      d8\rest as' g e <fis, a>4 cis
    }
  >>
  <<
    {
      f'!32 c'!\2 c c as c c c g c c c cis, c'! c c
    }
    \\
    {
      f,8 as g cis,
    }
    \\
    {
      \voiceTwo
      e,4\harmonic s
    }
  >>
  b'16 as, d f h es fis8
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      as32 as as as ges as as as f as as as c, as' as as 
      g, as' as as <es g>8-.\noBeam r e
    }
    \\
    {
      h8\rest ges' f c 
      \once\override Fingering.extra-offset = #'(-0.5 . -3)
      <e, g!-0>4
    }
  >>
  <<
    {
      fis'32 fis fis fis fis fis fis fis 
      fis fis fis fis fis fis fis fis
    }
    \\
    {
      
    }
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new Staff \with {
    instrumentName = "Guitar"
  }
  {
    \clef "treble_8" \classicalGuitar
  }
  \layout { }
}
