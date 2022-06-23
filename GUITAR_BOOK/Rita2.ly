\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"

ritaZwei = \relative c' {
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  %\once \override StringNumber.extra-offset = #'(-.6 . -4.8)
  \once \override Fingering.extra-offset = #'(-.6 . -3.3)
  \stringNumSpan "3"
  \once \override TextSpanner.extra-offset = #'(-.6 . -3.6)
  \once \override TextSpanner.bound-details.right.X = #23.5
  <a h'-4>8
  \startTextSpan
  <fis cis''>
  \stopTextSpan
  <<
    {
      r8 h''\harmonic
      s <ais, fis'>-\markup {
        \postscript #".8 -1.8 moveto 4.5 .3 rlineto stroke"
      } gis'4
    }
    \\
    {
      <gis,, dis''>4 <dis' ais''> r8 eis'
    }
  >>
  \time 15/8
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      cis'4 s8
      \stemDown
      h( ais) fis-\markup {
        \postscript #"1 -1.7 moveto 3.5 .4 rlineto stroke"
      }
      \stemUp
      gis4 s8 b_\1( as_\2 es_\3) g4 s8
    }
    \\
    {
      h,8\rest <fis dis'> <d' fis>
      s4. h8\rest <g! es'> <g es'>
      s4. c8\rest <as ces> q
    }
    \\
    {
      \voiceTwo
      h,4 s8 f'4 s8 c!4 s8 ces4 s8 es4 s8
    }
  >>
  \time 4/4
  <as, b'>8 <f' c'>
  <<
    {
      r8 b' s <a, f'> g'4
    }
    \\
    {
      <es, g d'>4 <d a''> r8 e'
    }
  >>
  \time 15/8
  <<
    {
      \override Fingering.staff-padding = #'()
      \override StringNumber.staff-padding = #'()
      c'4 s8
      \stemDown
      b( a) f-\markup {
        \postscript #"1 -1.7 moveto 3.5 .4 rlineto stroke"
      }
      \stemUp
      g4 s8 a_\1( g_\2 d_\3) fis4 s8
    }
    \\
    {
      h,8\rest <f d'> <des' f>
      s4. h8\rest <fis! d'> <fis d'>
      s4. h8\rest <g b> q
    }
    \\
    {
      \voiceTwo
      b,4 s8 e4 s8 h4 s8 b4 s8 d4 s8
    }
  >>
  \time 5/4
  <f a>8 <e h'>
  <<
    {
      s8 a~ <g, a'> <e h''>
    }
    \\
    {
      <fis' cis'>4 s
    }
  >>
  %<g, a'>8 <e h''>
  <<
    {
      r8
      \once \override StringNumber.extra-offset = #'(-.6 . -2.5)
      a'\harmonic\4
      r8 g\harmonic
    }
    \\
    {
      % Варианты
      <f,,! g' c>4
      %<fis,, cis''>4
      <g c d'>
    }
  >>
  \time 3/4
  <e h' gis'>8
  <<
    {
      h'''8\harmonic e\harmonic h\harmonic r
      %Варианты
      %h\harmonic
      %a\harmonic
      \override TextScript.extra-offset = #'(-.5 . -2)
      b^"*"
    }
    \\
    {
      <fis,, a'>[ <gis h'> <a cis'>] <h fis'>
      %Варианты
      \once \override TextScript.extra-offset = #'(0.7 . 1.7)
      <as es' as>
      %{_\markup \column {
        \with-color #darkred \box \vspace #0.5
        \teeny
        "Катин аккорд"
      }%}
      %<g d' g>

    }
  >>
  \time 4/4
  <c d'>8 <a e''>
  <<
    {
      %варианты
      r8 dis''
      %r8 d''
      %r8 d''\harmonic
      \once \override StringNumber.extra-offset = #'(-.6 . -2)
      fis4\harmonic\2
    }
    \\
    {
      s4. <ais,, h'>8 eis'4
    }
    \\
    {
      \voiceTwo
      <h, fis''>4
      \once \override Fingering.extra-offset = #'(.2 . .3)
      \once \override StringNumber.extra-offset = #'(.5 . .8)
      cis-3_\6 h''8\rest gis
    }
  >>
  \time 15/8
  <<
    {
      d'?4 s8
      \stemDown
      cis( c-3)-\markup {
        \postscript #"1.3 -2.3 moveto 3.5 -1.4 rlineto stroke"
      } gis
      \stemUp
      a4 s8 h( b) f-\markup {
        \postscript #".5 -5.2 moveto 3.5 .5 rlineto stroke"
      } g4
    }
    \\
    {
      h,8\rest <fis a'> <a f'!>
      \once \override StringNumber.extra-offset = #'(1.3 . 3.7)
      a4.\harmonic_\4 h8\rest <g! d'> <g d'>
      s4. h8\rest <d f> q
    }
    \\
    {
      \voiceTwo
      e,,4 s8
      \once \override NoteColumn.force-hshift = #.3
      a4 s8 fis4 s8 as4 s8 b4 s8
    }
  >>
  \time 4/4
  <<
    {
      \override StringNumber.staff-padding = #'()
      s4
      \override TextScript.font-size = -5
      \override TextScript.extra-offset = #'(-1 . -2)
      r8 fis'''\harmonic-"VII"
      %s <ais, fis'> gis'4
      r16 f( e8~ e16) b as_\3 g
    }
    \\
    {
      \override StringNumber.staff-padding = #'()
      s2 s8. des'16( c_\2)-\markup {
        \postscript #".9 6.1 moveto 3 -.6 rlineto stroke"
      } b8 s16
    }
    \\
    {
      \voiceTwo
      \textSpannerDown
      \stringNumSpan "5"
      \once \override TextSpanner.extra-offset = #'(-.5 . 1.6)
      \once \override TextSpanner.bound-details.right.X = #22
      <e,, fis'>8
      \startTextSpan
      <cis gis''> <dis ais''>4
      \stopTextSpan
      a!4
    }
  >>
  \time 15/8
  <<
    {
      ges''4 s8
      \stemDown
      %\override TextScript.font-size = -2
      %\override TextScript.extra-offset = #'(-.5 . 0)
      ges( f) des-\markup {
        \postscript #"1.5 -.3 moveto 3.7 .4 rlineto stroke"
      }
      \stemUp
      es4 s8 f_\1( es_\2 b_\3) d4 s8
    }
    \\
    {
      h8\rest <es, b'> <heses' des> s4.
      a8\rest <d,! b'> <d b'>
      s4. g8\rest <es ges> q
    }
    \\
    {
      \voiceTwo
      as,4 s8
      \once \override StringNumber.extra-offset = #'(.7 . 2.5)
      c4_\5 s8 g!4 s8 ges4 s8 b4 s8
    }
  >>
  \time 4/4
  <<
    {
      %<b' es>8 d c <a e'>4
      % Вариант
      <b' es>8 d c
      \once \override TextScript.extra-offset = #'(.1 . 1)
      <a f'>4^\markup \fontsize #1.5 {\sharp}
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.2
      <f g'>8. <d a''>
      \once \override NoteColumn.force-hshift = #1.3
      <e\harmonic h''\harmonic>4
    }
  >>

  \bar "|."
  %\override Score.RehearsalMark.self-alignment-X = #RIGHT
  %\override Score.RehearsalMark.direction = #DOWN
  %\override Score.RehearsalMark.extra-offset = #'(0 . -5)
  %\mark \markup {\teeny{\char ##x00A9 "MMXXI - XII - V"}}
}