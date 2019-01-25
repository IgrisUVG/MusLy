\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetEinsMusic = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  ges''4( f8) r es4( d8) r c4-- ges'-- h,( b8) r a4.( b8) e,4.( g8)
  fis2( c'~ c16 h a as g ges f8) h16( a as ges f es d8)
  a'16( g fis e fis dis e fis g a b c des es e fis)
  as4( g8) r f4( e8) r d4-- as'-- des,( c8) r h4.( c8) ges4.( a8)
  as2( d16 cis d e f g as b h8) r r4 d,16( as es' b f' d as' f h8) r r4 r2 R1
  c4( h8) r a4( gis8) r fis4-- c'-- f,( e8) r dis4.( e8) b4.( cis8)
  c2( ges'~ ges16 f es d des c h8) f'16( e d c h a as8)
  es'16( des c b c a b c des es f fis g a b c) d4( des8) r ces4( b8) r
  as4-- d-- g,( ges8) r f4.( ges8) c,4.( es8) d2( as') e4( es8) r des4( c8) r
  b4-- e-- a,( as8) r g4-- r as-- r
  \bar "|."
}
