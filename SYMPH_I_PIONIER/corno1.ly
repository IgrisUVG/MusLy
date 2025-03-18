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
  f2) r R1*2
  \clef treble
  r2. c'''4( des2~ des8 as4. es'4 des c b~ b2) c~( c g4 es~ es2.) es4~ es r2.
  R1 r4 as2( fes4~ fes es2.)
}

cornoOneMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \cadenzaOn
  g1~ g  s4. s16
  \cadenzaOff
}

cornoOneMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  g'2.->~ g
}