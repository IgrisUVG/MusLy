\version "2.19.15"

\language "deutsch"

\header {
  title = "Humoreske"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 6
  markup-system-spacing.basic-distance = 19
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 20
  %score-system-spacing.basic-distance = 28
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
\score {
  \new Staff \with {
    instrumentName = "Guitar"
  }
  \relative {
    \clef "treble_8"
    \key e \major
    \time 2/4
    \override Staff.TimeSignature.stencil = ##f
    \override Score.RehearsalMark.extra-offset = #'(0 . 3.5)
    \mark \markup {\fontsize #-2 {Allegretto}}
    <<
      {
        cis''16( d cis8) c a
      }
      \\
      {
        e4 f8 e
      }
      \\
      {
        \voiceTwo
        a,,4 a16 b c8
      }
    >>
    <<
      {
        e'8 d\rest
      }
      \\
      {
        \voiceOne
        \once\override NoteColumn.force-hshift = #.2
        <cis,! gis'>8 s
      }
      \\
      {
        \voiceTwo
        e,16( fis) gis a
      }
    >>
    <<
      {
        r16 h'' a! gis fis8 e
      }
      \\
      {
        ais,,8 h his4
      }
    >>
    <<
      {
        gis''16 e' h d
      }
      \\
      {
        \once\override Beam.positions = #'(-1 . 0)
        <e, gis>8 <e h'>
      }
      \\
      {
        \voiceTwo
        cis,8 gis'
      }
    >>
    <<
      {
        cis'16( d cis8) c a
      }
      \\
      {
        e4 f8 e
      }
      \\
      {
        \voiceTwo
        a,,4 a16 b c8
      }
    >>
    <<
      {
        e'8 d\rest
      }
      \\
      {
        \voiceOne
        \once\override NoteColumn.force-hshift = #.2
        <cis,! gis'>8 s
      }
      \\
      {
        \voiceTwo
        e,16( fis) gis a
      }
    >>
    <<
      {
        r16 h'' a! gis fis8 e
      }
      \\
      {
        ais,,8 h his4
      }
    >>
    <<
      {
        gis''16 e' gis dis e8 r
      }
      \\
      {
        \once\override Beam.positions = #'(-1.3 . -1.3)
        e,8 <e cis'>16 <fis dis'> <h, gis'>8 s
      }
      \\
      {
        \voiceTwo
        cis,8 a16 h e,8 r
      }
    >>
    %\override BreathingSign.Y-offset = #3
    \acciaccatura dis'8 e->\breathe
    <<
      {
        e'16(fis)
      }
      \\
      {
        r8
      }
    >>
  }
}
