\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "noteHeads.ly"

guitarMusic = \relative {
  \clef treble
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(left)
  d4_( <a' a''-3> <g'-0 e'-2> fis-1) d,4_( <a' a''> <fis' e'> d'-4)
  d,,4_( <b' a''> <g'-0 d'> fis) fis,4_( <cis' cis''> <h'-0 cis> ais)
  d,,4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' his''> <a' eis'> g-0)
  <<
    {
      d,4_( <b' e'-0> <eis cis'> a\glissando)
      \set fingeringOrientations = #'(right)
      \override Fingering.extra-offset = #'(-0.3 . 0.3)
      d4( \stemDown <a,-0 e''!-0>
      \set stringNumberOrientations = #'(right)
      \override StringNumber.extra-offset = #'(-0.4 . 0)
      <b'\4 a'\2>2)
      \override TextScript.font-size = -2
      \revert Fingering.extra-offset
      \override Fingering.staff-padding = #'()
      r8 as'( h,!-0 e,!) r-"IV" h''( es, g,)
    }
    \\
    {
      s1 <d, d'>4 s2.
      \stemUp
      f2 cis'
    }
  >>
  d,4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' cis''> <h' cis> ais~)
  \override TextScript.font-size = -2
  <b, \parenthesize \tweak font-size #-2 ais'>4^"IX"_( <f' c''> <f' b> \acciaccatura b,8 c4)
  f,,_( <c' gis''>
  \once \override Fingering.extra-offset = #'(6 . 1)
  \once \override StringNumber.extra-offset = #'(1.3 . 2)
  \displaceHeads #'(0 1 -1)
  <g'!_\4 h-0 c>2)
  %\once \override StringNumber.extra-offset = #'(0 . -1.2)
  %c\3)
  <<
    {
      \stemDown
      r8 b'( cis, fis,) r cis''( fis, h,) r4 <g' e'> s
      \stemUp
      fis,
    }
    \\
    {
      \stemUp
      gis,2 a \acciaccatura b8-\markup {
        \postscript #"0.7 0.3 moveto 1.6 0.8 rlineto stroke"
      } d2
      \stemDown
      <gis, e'' d'>2
    }
  >>
  \bar "||"
  \time 3/4
  <<
    {
      s4
      \once \override StringNumber.extra-offset = #'(-.5 . -2)
      d''\3(
      \once \override StringNumber.extra-offset = #'(-.5 . -1.5)
      cis\4)
      \repeat unfold 3 {s4 d( cis)}
      s4 e( dis)
      s4 e( dis)
      r16
      \once \override StringNumber.extra-offset = #'(-.5 . -3.5)
      as'\2 b h g'( fis f8) d16( cis c8)~ c4 
      g-2-\markup {
        \postscript #"1.5 -1 moveto 3.5 0.9 rlineto stroke"
      }      
      b-2
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      e,8\rest fis, d' fis, cis' fis,
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      g' fis, d' fis, cis' fis,
      e' fis, d' fis, cis' fis,
      e' fis, d' fis, cis' fis,
      e'8\rest gis, e' gis, dis' gis,
      e'8\rest gis, e' gis, dis' gis,
      s4
      \once \override StringNumber.extra-offset = #'(1 . -1.4)
      <h cis\4>-\markup {
        \postscript #"1.5 4.5 moveto 5.6 -0.8 rlineto stroke"
      } <g a>
      s c-4 cis-1
    }
    \\
    {
      \voiceOne
      h,2. g'' <e gis> q cis, f, d
      \once \override Fingering.extra-offset = #'(0 . -5.3)
      h'2-3_\6 s4
    }
  >>
  <<
    {
      d'4. es8\noBeam f b

    }
    \\
    {
      s4 g,2
    }
    \\
    {
      \voiceOne
      g8\rest f4.
      %\once \override NoteColumn.force-hshift = #0.2
      \once \override Stem.length = #5
      fis4
    }
    \\
    {
      \voiceTwo
      \once \override StringNumber.extra-offset = #'(.5 . 2)
      b,2_\5 as4
    }
  >>
  <<
    {
      <e g' fis'>2.
    }
    \\
    {
      s2 cis''4-\markup {
        \postscript #"1.7 4.3 moveto 4.7 1.7 rlineto stroke"
      }
    }
    \\
    {
      \voiceTwo
      s4 dis,2
    }
  >>
  <<
    {
      \once \override StringNumber.extra-offset = #'(-.5 . -2)
      a''2.\2
    }
    \\
    {
      d,,?4( <g e'>
      \once \override StringNumber.extra-offset = #'(.5 . 2.5)
      fis_\5)
    }
  >>
  \time 4/4
  d,4_( <a' a''> <fis' e'> d'-4)
  d,,4_( <b' a''> <g'-0 d'> fis) fis,4_( <cis' cis''> <h'-0 cis> ais)
  d,,4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' his''> <a' eis'> g-0)
  <<
    {
      d,4_( <b' e'-0> <eis cis'> a\glissando)
      \set fingeringOrientations = #'(right)
      \override Fingering.extra-offset = #'(-0.3 . 0.3)
      d4( \stemDown <a,-0 e''!-0>
      \set stringNumberOrientations = #'(right)
      \override StringNumber.extra-offset = #'(-0.4 . 0)
      <b'\4 a'\2>2)
    }
    \\
    {
      s1 <d, d'>4 s2.
    }
  >>
}
