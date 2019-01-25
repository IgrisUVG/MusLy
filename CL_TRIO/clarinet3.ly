\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetDreiMusic = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*2 des'4( c8) r b4( a8) r g4-- des'-- ges,( f8) r e'4.( f8) h,4.( d8)
  des2( g~ g16 fis e es d des c8) fis16( e es d c b a8)
  e'16( d cis h cis ais h cis d e f g as b h cis) es4( d8) r c4( h8) r
  a4-- es'-- as,( g8) r f16( ges as a h c d es e8) r r4
  f4( e8) r d4( cis8) r h4-- f'-- b,( a8) r gis4.( a8) dis,4.( fis8)
  f2( h~ h16 b as g ges f e8) b'16( as g f e d cis8)
  as'16( ges f es f d es f ges as a h c d es f) g4( ges8) r fes4( es8) r
  des4-- g-- c,( h8) r b4.( ces8) f,4.( as8) g2( des'~
  des16 c b a as g fis8) c'16( b a g f e es8) b'16( as g f g s f g as b h cis d e f g)
  as( g f e es d cis8) g'16( f e d c h b8) f'16( es d c d h c d es d c h a as ges f)
  e4-- r es-- r
  \bar "|."
}
