\version "2.19.15"

\language "deutsch"

\include "noteHeads.ly"

ritaZwei = \relative c' {
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering.staff-padding = #'()
  \override StringNumber.staff-padding = #'()
  \once \override StringNumber.extra-offset = #'(-.6 . -4.8)
  <a h'-4\2>8 <fis cis''>
  <<
    {
      r8 h''\harmonic
      s <ais, fis'>\glissando gis'4
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
      h( ais) fis\glissando
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
      b( a) f\glissando
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
      r8 a'\harmonic\4
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
      %\override TextScript.extra-offset = #'(-1 . -2)
      b\harmonic%^"*"
    }
    \\
    {
      <fis,, a'>[ <gis h'> <a cis'>] <h fis'>
      %Варианты
      \once \override TextScript.extra-offset = #'(0.7 . 1.7)
      <as es' as>_\markup \column {
        \with-color #darkred \box \vspace #0.5
        \teeny
        "Катин аккорд"
      }
      %<g d' g>

    }
  >>
  \time 4/4
  <c d'>8 <a e''>
  <<
    {
      %варианты
      r8 dis''\harmonic
      %r8 d''
      %r8 d''\harmonic
    }
    \\
    {
      <h,, fis''>4
    }
  >>

  \bar "|."
  %\override Score.RehearsalMark.self-alignment-X = #RIGHT
  %\override Score.RehearsalMark.direction = #DOWN
  %\override Score.RehearsalMark.extra-offset = #'(0 . -5)
  %\mark \markup {\teeny{\char ##x00A9 "MMXXI - XII - V"}}
}