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
  r2 f'( es4 f as2
  f32 es des c) es8( g32 f es des) b'8( des32 c b as) g8_( b32 as ges f) d'8~
  d2 as b8 c~ c2.~ c b4( as1 a) gis2 g~ g1 g4 as2.~ as2 r
  \time 3/4
  R2.*19 r2 as'4~( as2.~ as g)
  \time 4/4
  f2
}


trumpetMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
}