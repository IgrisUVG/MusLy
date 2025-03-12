\version "2.19.15"

\language "deutsch"

vleMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef alto
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  es16( as b c es des as8) f16( as c des f des as f)
  es8( g4 f16 es~ es8 b'16 c~ c as g f)
  b( des es as es b ges des) f( as c e ges es b f~ f1)
  as16( g es8~ es2.~ es) es4( f1 fis2 fis4 e) d1~ d2 des
  f16( g as b c des es f as2~ as) r
  \time 3/4
  R2.*18 r2 r8 es,8~ es2.~ es2 r4
}
