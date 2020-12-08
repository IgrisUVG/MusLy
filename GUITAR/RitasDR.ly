\version "2.19.15"

\language "deutsch"

\header {
  title = "R"
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

\include "noteHeads.ly"

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
  \time 2/4
  \override Staff.TimeSignature.stencil = ##f
}

classicalGuitar = \relative c {
  \global
  %\compressFullBarRests
  \partial 8 <cis d'>8
  \bar ".|:"
  <<
    {
      <g' fis'>4. b'8-\markup {
        \postscript #"1.5 -1 moveto 4.8 0.5 rlineto stroke"
      }
      <fis, a' cis>4 r8 c''-\markup {
        \postscript #"1.4 -1.4 moveto 2.8 -0.5 rlineto stroke"
      }
    }
    \\
    {
      r8 a,, b4
      \override Score.BarLine.stencil = ##f
      r8 gis'-\markup {
        \postscript #"1.4 4.2 moveto 4.2 1 rlineto stroke"
      }
      \displaceHeads #'(1 -1 0)
      <f g c!>4
    }
  >>
  \time 5/8
  <<
    {
      \stemDown a'16(\noBeam \stemUp f8.)
    }
    \\
    {
      s16 b,\rest e8\noBeam
    }
    \\
    {
      \voiceTwo
      s8. b16-\markup {
        \postscript #"1.4 4.4 moveto 1.3 -1 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      b,4
    }
  >>
  <<
    {
      f'8\noBeam r16 d'-\markup {
        \postscript #"1.4 -1.3 moveto 2.8 -0.5 rlineto stroke"
      }
    }
    \\
    {
      h,16( cis)-\markup {
        \postscript #"0.7 5.5 moveto 2 1 rlineto stroke"
      } e8
    }
  >>
  <ais, h'>8
  \time 2/4
  \break
  <<
    {
      <e' dis'>4. <h g''>8-\markup {
        \postscript #"1.5 -1 moveto 2.8 1 rlineto stroke"
      }
    }
    \\
    {
      r8 fis g4
    }
  >>
  <<
    {
      h''!4 s8 <h,, fis''>
    }
    \\
    {
      h'8\rest <d g>-\markup {
        \postscript #"1 6.3 moveto 2.7 -1 rlineto stroke"
      }-\markup {
        \postscript #"0.6 3.7 moveto 2.8 -1.1 rlineto stroke"
      }
      <h e>4-\markup {
        \postscript #"1.5 5.5 moveto 4.8 1 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      b,4 s
    }
  >>
  <<
    {
      \stemDown
      g''16( e) d-\markup {
        \postscript #"1.2 -0.8 moveto 2 -1 rlineto stroke"
      } h~
      \stemUp
      h4
      \stemDown
      r8 a'-\markup {
        \postscript #"0.8 -0.2 moveto 3.3 1.5 rlineto stroke"
      } <b,, d''>4
    }
    \\
    {
      s4 s8 <f' e'>
      \stemUp
      <g d'>4 s
    }
    \\
    {
      \voiceTwo
      s4 <c,~ g''^~> q s8 <es' g>
    }
  >>
  \break
  <<
    {
      \stemDown
      fis'4 s8 <e, fis>
    }
    \\
    {
      g,16\rest h'^( e, cis)-\markup {
        \postscript #"1.5 4 moveto 2.2 -1 rlineto stroke"
      }
      \stemUp
      gis4
    }
    \\
    {
      \voiceTwo
      \stemUp
      e,4
      \stemDown
      a
    }
  >>
  <<
    {
      \stemDown
      <c h''>4 r8 <g'' a>
    }
    \\
    {
      s16 d g, gis <d a'>4
    }
  >>
  <<
    {
      \stemDown
      <c h''>4 r8 <dis' g>
    }
    \\
    {
      s16 d g, f-\markup {
        \postscript #"1 4.2 moveto 3.5 -0.5 rlineto stroke"
      } <cis e>4
    }
  >>
  \revert Score.BarLine.stencil
  \bar ":|."
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
