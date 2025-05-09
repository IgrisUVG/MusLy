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
  \override MultiMeasureRest.expand-limit = #2
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
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 3 {g'2.->~ g} as->~ as R2.*2
  \clef bass
  as,2.( g) R2.*2 b2.~ b~ b~ b4.~ b4( as8) R2.*3 r4. g
  c2.( h4 as g f2.~ f2) as4( des2. h4 f' e es!2) d4( des!2) c4(
  ces2) \tuplet 3/2 {fes4( es8)} R2.*3 r4. h c2.
  b2.~ b~ b~ b R2.*11 b2. b,( c d es b) R2.*2
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  r8 a( h c) r c( d) r d( es) r4 R2.*2
  g2.( fis4 es d c) r2 R2.*20
  r4 \tuplet 3/2 {as'4( g8)} r4 as-> r as-> r ceses-> r ces-> r2 R2.*3
  \key a \major
  \time 2/4
  R2*24
  \tuplet 3/2 4 {es,8 f ges as ges f} es2
  \key as \major
  R2*9 c'4.( b8 as4) r8 as R2*13
  r4 c,~( c8[ b a ges] f2) R2 des'2 R2*2 b'2 R2 f2 f~ f f-> f-> f->
  \time 3/4  
  R2.*7 f2.~( f4 es2 c2. f4) es2( e2. f4) es!( f~ f2.)
  des4( c b g2) c4~( c2 des4 e2.~ e4 f) r R2.*8
  \bar "|."
}