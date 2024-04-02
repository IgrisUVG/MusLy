\version "2.19.15"
%\version "2.18.0"
\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeEinsMusic = \relative {
  %\override Staff.TimeSignature #'stencil = ##f
  \set Score.skipBars = ##t
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 es''2( d4)
  \time 5/4 r1 r4
  \time 3/4 r2.
  \time 4/4 R1*25 b4.( es8) b'4( f~ f ges2.)
  as2( ges f ges as b as) r4 des,( c) b( f'2~
  f4 des b ges'~ ges as2. ges4 es) r es(~
  es des c es~ es b2 c4~ c) r r2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeZweiMusic = \relative {
  \set Score.skipBars = ##t
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
  \time 4/4 R1*26 r2. ges'4( des'2. b4 ges es'2 f4~ f2 es4 c)
  r
}