\version "2.19.15"

\language "deutsch"

cornoTwoMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  as2( f4 as c b as2) b8 as g ges f e es d~ d2 f
  es2-- es--~ es2. es4( f1 fis2 e) e1~ e2 f~ f as~ as r
  \time 3/4
  R2.*20
  \clef bass
  c,2( b4 as f es~ es2 g4
  \time 4/4
  des'2) r R1*2
  \clef treble
  r2. f'4~( f2 es4 des c b2.)
  des4_( g2. es4 c b as~ as2 g~ g4) r2. R1 r4 ces2.~( ces4 c2.)
  \bar "|."
}

cornoTwoMusicDrei = \relative {
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
  e1~ e  s4. s16
  \cadenzaOff
}

cornoTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R2.*10
  \clef bass
  f2.( fes) R2.*2 b2.~ b~ b~ b4.~ b4( as8) R2.*3 r4. g,
  c2.( h4 as g f2.~ f2) as4( des2. h4 f' e es!2) d4( des!2) c4(
  ces2) \tuplet 3/2 {fes4( es8)} R2.*3 r4. h c2.
  b'2.~ b~ b~ b R2.*11 b,2. b_( c d es
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  g,8)-- g-- g-- g-- g-- g--
  \repeat unfold 2 {g-- g-- g-- g-- g-- g--}
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  r8 a( h c) r c( d) r d( es) r4 R2.*2
  g,2.( fis4 es d c) r2 R2.*3
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  \repeat unfold 12 {g'8-- g-- g-- g-- g-- g--} g8-- g-- g-- r4.
}