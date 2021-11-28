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

  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -5)
  \mark \markup {\teeny{\char ##x00A9 "MMXXI - XII - V"}}
}