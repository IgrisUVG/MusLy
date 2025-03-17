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

trumpetMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}