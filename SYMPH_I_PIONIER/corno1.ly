\version "2.19.15"

\language "deutsch"

cornoOneMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  es'2( des4 f es es as2) f8 es4 des c8 b4~ b2 as2
  b8 c~ c2.~ c es4( d1 dis) e1~ e2 es des c~ c r
  \time 3/4
  R2.*20
  \clef bass
  c,2.~( c b4 as g 
  \time 4/4
  f2)
}


cornoOneMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}