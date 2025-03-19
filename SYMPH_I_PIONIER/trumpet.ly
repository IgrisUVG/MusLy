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
  b''2.->~ b b->~ b c->~ c h->~ h
  r8 es,4-> e8( f ges~ ges4) g8( as4->) g8( b2.->) b->
  heses8->( as~ as2) heses8->( as~ as2)
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  b,2._( as g4. f es2.)
}

trumpetTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  des''2.->~ des des->~ des e->~ e d->~ d
  r8 es,4-> e8( f ges~ ges4) g8( as4->) g8( b2.->) b->
  heses8->( as~ as2) heses8->( as~ as2)
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  es4.( d des! c b2.~ b4. as)
}