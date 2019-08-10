\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

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
  <b, \parenthesize \tweak font-size #-2 ais'>4_( <f' c''> <f' b> c)
}
