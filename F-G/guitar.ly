\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

guitarMusic = \relative {
  \clef treble
  \key d \major
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  d4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' cis''> <h' cis> ais)
  d,,4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' his''> <a' eis'> g)
  <<
    {
      d,4_( <b' e'> <eis cis'> a\glissando)
      d4( \stemDown <a, e''!> <b' a'>2)
      r8 as'( h,! e,!) r h''( e, g,)
    }
    \\
    {
      s1 <d, d'>4 s2.
      \stemUp
      f2 cis'
    }
  >>
  d,4_( <a' a''> <g' e'> fis) d,4_( <a' a''> <fis' e'> d')
  d,,4_( <b' a''> <g' d'> fis) fis,4_( <cis' cis''> <h' cis> ais)
}
