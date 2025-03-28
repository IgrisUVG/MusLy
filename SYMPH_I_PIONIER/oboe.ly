\version "2.19.15"

\language "deutsch"

oboeMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  c''2\( as4 des c1( des8 c) b4 as8\) g ges( f~ f1~
  f16) es c8~( c4~
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  c32 des d es e f fis g as g fis f e es d des
  c2.) g'4( b g8 es' d2 dis h) gis g~ g1 f4 es2.~ es2 r
  \time 3/4
  R2.*15
  r4 b''2( c4 a g8f-.) des'4( es2~ es4) r2 r es4~ es2 r4 R2.*2
  \time 4/4
  \set subdivideBeams = ##f
  as,,16( a b h c des d es des c h b a as8.) r8 es8.\trill r r2
  as2.( g4 f es des2~ des2. f4 b2. g4 es' des c2~
  c) r4 f,8( g16 c des) fes-. ges-. as( ces) es-. f8-- ces( des fes, es
  b2 as) R1*2 r2 c'
  \bar "|."
}

oboeMusicDrei = \relative {
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
  b'1~ b  s4. s16
  \cadenzaOff
}

oboeMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R2.*17 r4. b'4( as8) R2.*3 r4. g' R2.*3 r2 b,4( h) r2 R2.*7
  r4. dis4( e8) R2.
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  d,8( es f) f4( c8) es( f g) 4( d8) d( es f) f4( es8) es( d c) es4( d8)
  des'!2.( c h4. b4~ b32 a16. b2) r4 f2.( g e f) R2.*2 r4. g4( f8 b2.)
  R2.*13 g2.( fis4 es d c) r2 R2.*9
  r8 a'( h c) r c( d) r d( e) r4 R2.*2 r2 a,8( h c) r c( d) r d( e2.) R2.
}