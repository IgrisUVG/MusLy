\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vcMusic = \relative {
  \clef bass
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4. b8( c f es d
  \time 3/4 c b g c, f4)
  \time 5/4 r1 r4
  \time 3/4 as,4( g f)
  \time 4/4 b'1->
  es,2.( f4 g a b c f,2 d') R1*4
  \repeat unfold 6 {
    \repeat tremolo 32 {d32~}
  }
  \repeat tremolo 32 {d32}
  R1*21
  \key des \major
  R1*3
}