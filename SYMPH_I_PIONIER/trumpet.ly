\version "2.19.15"

\language "deutsch"

trumpetMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  r2 f'_( es4 f as2
  f32 es des c) es8( g32 f es des) b'8( des32 c b as) g8_( b32 as ges f) d'8~
  d2 as b8 c~ c2.~ c b4( as1 a) gis2 g~ g1 g4 as2.~ as2 r
  \time 3/4
  R2.*19 r2 as'4~( as2.~ as g)
  \time 4/4
  f2 f4.( es32 des c b as2) g16 c,8.~ 8 es f1~ f R
  r4 des'2.( c4 b as g~ g1) b4( es2. ces4 as' ges fes es) r2. R1 ces,4 r es2
  \bar "|."
}

trumpetMusicDrei = \relative {
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
  <e'' g>1~ q  s4. s16
  \cadenzaOff
}

trumpetOneMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  b''2.->~ b b->~ b c->~ c h->~ h
  r8 es,4-> e8( f ges~ ges4) g8( as4->) g8( b2.->) b->
  heses8->( as~ as2) heses8->( as~ as2)
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  b,2._( as g4. f es2.) R2.*3 r4. c'
  c2.( h4 as g f2.~ f2) as4( des2. h4 f' e es!2) d4( des!2) c4(
  ces2) \tuplet 3/2 {fes4( es8)} R2.*3 r4. dis4( e8) es!2. R2.*4
  g,4.--~ g8. a16.-- b--
  c4.---> g4--~ g32 c16.--
  d4.---> g,4--~ g32 d'16.--
  es4.--->( d8--) r4 R2.*7 es4.( d)
  R2.*4 g,,2. R2.*23\set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  r8 a'( h c) r c( d) r d( e) r4 R2.*2  
  \repeat unfold 2 {
    \tuplet 3/2 4 {g,8( as-> b h des-> d e f-> g) as4( g8)}
  } r4 as,-> r as-> r ceses-> r ces-> r2 R2.*3
  \key a \major
  \time 2/4
  cis4.( d8 cis4. h8 a4. gis8 fis4) r8 fis(
  d'4. cis8 h4. a8 gis4) r8 e(
  e'4. fis8 e4. d8 cis4. h8 a4) r8 a( cis4. d8~ d4. a8 gis4) r R2*10
  \tuplet 3/2 4 {es'8 f ges as ges f} es2
  \key as \major
  c4.( des8 c4. b8 as4. g8 f4) r8 f(
  des'4. c8 b4. as8 g4) r8 es(
  es'4. f8 es4. des8 c4. b8 as4) r8 as
}

trumpetTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  des''2.->~ des des->~ des e->~ e d->~ d
  r8 es,4-> e8( f ges~ ges4) g8( as4->) g8( b2.->) b->
  heses8->( as~ as2) heses8->( as~ as2)
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  es4.( d des! c b2.~ b4. as) R2.*3 r4. a'4( g8)
  c2.( h4 as g f2.~ f2) as4( des2. h4 f' e es!2) d4( des!2) c4(
  ces2) \tuplet 3/2 {fes4( es8)} R2.*3 r4. dis4( e8) es!2. R2.*4
  g,4.--~ g8. a16.-- b--
  c4.---> g4--~ g32 c16.--
  d4.---> g,4--~ g32 d'16.--
  es4.--->( d8--) r4 R2.*7 es4.( d)
  R2.*4 g,,2. R2.*23
}