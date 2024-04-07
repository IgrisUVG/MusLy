\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteEinsMusic = \relative {
  %\override Staff.TimeSignature #'stencil = ##f
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r4 g''-- c-- g'--~
  \time 3/4 g2.
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*13 e,1\trill R1*3
  des4.( ges8) des'4( as~ as b--) r b,--(
  f'2. des4 b ges'2 as4~ as2 ges4 es)
  r4 es2( des4 c es2 f4~ f c2 des4~ des2 c'4 as des1~
  des2) c( b as~ as1 ges4 f2) es4( b'2. ges4 es) c'2( des4) R1*55
  \key g \major
  g,4 g c h e, e a2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteZweiMusic = \relative {
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*13 c''1\trill R1*8
  r2. b4( f'2. des4 b ges'2 as4~ as2 ges4 f es des c b)
  des( c) es( des) ges( f es ges f des) ges( f)
  ges2( as4 ges~ ges f es des es2 as) R1*55
  \key g \major
  d,4 e d e d c8( h) a2
}