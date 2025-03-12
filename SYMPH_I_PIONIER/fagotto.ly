\version "2.19.15"

\language "deutsch"

fagottoMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  f8( es c16) b-. r es-. as,8-- as'( b as)
  c,( es b) as( des es) f8. es16~
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  es8 b'32(as g f es f g as b ges f es) as16.-- des32-. g,4-- f16.-- es32-.
  d2 des
  b'32-. as-. g-. es-. c8-- as'32( es-.) es( c-.) c( b-.) b( as-.) as2~
  as2. b4_( d1 dis)
  d4-- cis8-. h-. \tuplet 3/2 4 {ais8-. gis-. fisis-. gis-. ais-. h-.}
  \set subdivideBeams = ##f
  cis16-. h-. ais-. gis-. fisis-. gis-. ais-. h-.
  des-. c-. b-. as-. g-. as-. b-. c-.
  des-. es-.f-.g-. as-. b-. c-. des( es2--~ es) r
  \time 3/4
  R2.*20 as,2 r4
}