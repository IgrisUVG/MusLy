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
  b'2.~ b~ b~ b
  \clef treble
  g'4.--~ g8. a16.-- b--
  c4.---> g4--~ g32 c16.--
  d4.---> g,4--~ g32 d'16.--
  es4.--->( d8--) r4
  \clef bass
  R2.*7 b,,2. b_( c d es
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
  R2.*4 r4 \tuplet 3/2 {as4( g8)} r4 ces-> r des-> r eses-> r fes-> r2 R2.*3
  \key a \major
  \time 2/4
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  R2*24
  \tuplet 3/2 4 {es8 f ges as ges f} es2
  \key as \major
  R2*9 c'4.( b8 as4) r8 as R2*17 des,2 R2*2 b'2 R2 f2 f~ f f-> f-> f->
  \time 3/4
  R2.*7 f2.~( f4 es2 c2. f4) es2( e2. f4) es!( des c as g f2.)
  g( f) g~ g4 f r R2.*8
  \bar "|."
}