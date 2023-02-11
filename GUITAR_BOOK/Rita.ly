\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"

rita = \relative c' {
  \time 2/4
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  \cadenzaOn
  \set stringNumberOrientations = #'(right)
  <cis\5 d'\3>8
  \bar ".|:"\noBreak
  <<
    {
      \override StringNumber.staff-padding = #'()
      \once \override StringNumber.extra-offset = #'(-.6 . -2.3)
      <g' fis'\2>4. b'8-\markup {
        \postscript #"1.5 -1 moveto 4.2 0.5 rlineto stroke"
      }
      <fis, a' cis>4 r8 c''_\2-\markup {
        \postscript #"1.4 -1.4 moveto 4 -0.5 rlineto stroke"
      }
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      r8 a,,-0
      \once \override StringNumber.extra-offset = #'(.6 . 2.5)
      b4_\6
      r8 gis'\4-\markup {
        \postscript #"1.4 4.2 moveto 5.8 1 rlineto stroke"
      }
      \once \override Fingering.extra-offset = #'(-.4 . .4)
      \once \override StringNumber.extra-offset = #'(.5 . 2.5)
      \displaceHeads #'(1 -1 0)
      <f_\6 g_0 c!>4
    }
  >>
  \time 5/8
  <<
    {
      \override TextScript.font-size = -2
      \once \override TextScript.extra-offset = #'(-.3 . 0)
      \stemDown a'16-"VI"(\noBeam \stemUp f8.)
    }
    \\
    {
      s16 b,\rest e8\noBeam
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \voiceTwo
      s8. b16^2-\markup {
        \postscript #"1.4 4.4 moveto 2 -1.5 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      b,!4
    }
  >>
  <<
    {
      f'8\noBeam r16 d'-\markup {
        \postscript #"1.5 -1.3 moveto 2.2 -0.8 rlineto stroke"
      }
    }
    \\
    {
      h,16([ cis!)]-\markup {
        \postscript #"1.5 5 moveto 2.5 1 rlineto stroke"
      } e8
    }
  >>
  <ais, h'>8
  \time 2/4
  \bar ""
  \break
  <<
    {
      \override TextScript.font-size = -2
      \once \override TextScript.extra-offset = #'(-.3 . 1)
      <e' dis'>4.-"II" <h g''>8-\markup {
        \postscript #"1.5 -1 moveto 4.8 1 rlineto stroke"
      }
    }
    \\
    {
      r8 fis g4
    }
  >>
  <<
    {
      h''!4 s8 <h,, fis''>-"II"
    }
    \\
    {
      h'8\rest <d g>-\markup {
        \postscript #"1.5 5.5 moveto 4.7 -1 rlineto stroke"
      }-\markup {
        \postscript #"1.5 4.6 moveto 4.7 -1 rlineto stroke"
      }
      <h e>4-\markup {
        \postscript #"1.5 5.3 moveto 9.2 1 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      \once \override StringNumber.extra-offset = #'(.6 . 2.5)
      b,4_\6 s
    }
  >>
  <<
    {
      \override Fingering.staff-padding = #'()
      \stemDown
      g''16[( e) d_\3-2-\markup {
        \postscript #"1.5 -2.5 moveto 2.3 -1 rlineto stroke"
      } h]~
      \stemUp
      h4
      \stemDown
      \once \override Rest.extra-offset = #'(0 . -1.5)
      r8 a'-\markup {
        \postscript #"1.5 -0.6 moveto 4.8 1 rlineto stroke"
      } <b,, d''>4
    }
    \\
    {
      s4 s8 <f'! e'>
      \stemUp
      <g d'>4 s
    }
    \\
    {
      \voiceTwo
      s4
      \once \override NoteColumn.force-hshift = #1.3
      <c,~ g''^~>
      \once \override TextScript.extra-offset = #'(-1 . -1)
      q-\markup {\italic (Fine)} s8 <es' g>
    }
  >>
  \bar ""
  \break
  <<
    {
      \stemDown
      fis'4 s8 
      \once \override StringNumber.extra-offset = #'(.3 . -1.3)
      <e,-0 fis!\2>-\markup {
        \postscript #"1.5 -4 moveto 5.3 1 rlineto stroke"
      }
    }
    \\
    {
      \hideNotes
      r16
      \unHideNotes
      \once\override Beam.positions = #'(-2.2 . -3.4)
      \set stemLeftBeamCount = #2
      h'^([ e, cis\4)]-\markup {
        \postscript #"1.5 4.4 moveto 3.5 -1 rlineto stroke"
      }
      \stemUp
      gis4
    }
    \\
    {
      \voiceTwo
      \stemUp
      e,!4
      \stemDown
      a
    }
  >>
  <<
    {
      \stemDown
      \set stringNumberOrientations = #'(left)
      <c\6 h''>4 r8 <g''! a>
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      \hideNotes
      r16
      \unHideNotes
      \set stemLeftBeamCount = #2
      d[\4 g,^0 gis]\5
      \override TextScript.font-size = -2
      \once \override TextScript.extra-offset = #'(-.3 . 1.3)
      <d a'>4^"V"
    }
  >>
  <<
    {
      \stemDown
      \once \override TextScript.extra-offset = #'(-.8 . 0)
      <c h''>4-"VIII" r8 <dis' g>
    }
    \\
    {
      \hideNotes
      r16
      \unHideNotes
      \set stemLeftBeamCount = #2
      d[ g, f]-\markup {
        \postscript #"1.5 4.2 moveto 3.2 -1 rlineto stroke"
      } <cis e>4
    }
  >>
  \bar ":|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -5)
  \mark \markup {\teeny{\char ##x00A9 "MMXX - XII - V"}}
}