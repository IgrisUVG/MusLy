\version "2.19.15"

\language "deutsch"

\header {
  title = "Schauspiel"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 15
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 25
  system-system-spacing.basic-distance = 23
  %score-system-spacing.basic-distance = 28
  last-bottom-spacing.basic-distance = 25

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
    \key a \major
    \time 4/4
    %\override Staff.TimeSignature.stencil = ##f
    \mergeDifferentlyHeadedOn
    %\mergeDifferentlyDottedOn
    \override Score.RehearsalMark.extra-offset = #'(0 . 3)
    \mark \markup {\fontsize #-2 {Allegretto}}
    \partial 2
    <a' d>8 <e c'>
    <<
      {
        <cis! h'>4
        e,,16_( h' fis' h \stemDown e) fis\2 a h
      }
      \\
      {
        cis,16 fis fis, h-0^~
        \stemUp h8
      }
      \\
      {
        \voiceTwo
        s4 e,,2
      }
    >>
    <<
      {
        cis'''4( e,)
      }
      \\
      {
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h-0 e) e-0 a,( f, c')
      }
      \\
      {
        \voiceTwo
        a4. \stemUp f8
      }
    >>
    <<
      {
        e16_( h' fis' h \stemDown e) fis a h
      }
      \\
      {
        \stemUp h,8 s4.
      }
      \\
      {
        \voiceTwo
        e,,2
      }
    >>
    <<
      {
        cis'''4( e,)
      }
      \\
      {
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h e) e a,( f, c')
      }
      \\
      {
        \voiceTwo
        a4. \stemUp f8
      }
    >>
    <<
      {
        e16_( h' fis' h \stemDown e) fis a h
      }
      \\
      {
        \stemUp h,8 s4.
      }
      \\
      {
        \voiceTwo
        e,,2
      }
    >>
    <<
      {
        cis'''4 h8 a fis e
      }
      \\
      {
        \shape #'((0 . -6.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
        cis'16^( a, h e) h' e, a cis, fis d e a,
      }
      \\
      {
        \voiceTwo
        a,4 a~ a
      }
    >>
    \repeat unfold 2{
      <<
        {
          h'4
        }
        \\
        {
          \shape #'((0 . -5.5) (-1.5 . -3) (-0.5 . 0) (0 . 0)) Slur
          \once\override Beam.positions = #'(-7.3 . -7)
          h16^( h, fis' gis)
        }
        \\
        {
          \voiceTwo
          \once \override NoteColumn.force-hshift = #0.2
          e,4
        }
      >>
      <c' f>8(\glissando <e a>)
    }
    %\bar "|."
  }
}
