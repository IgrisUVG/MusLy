\version "2.19.15"

\language "deutsch"

fagottoMusic = \relative {
  \key as \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \clef bass
  f8( es c16) b-. r es-. as,8-- as'( b as)
  c,( es b) as( des es) f8. es16~
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  es8 b'32(as g f es f g as b ges f es) as16.-- des32-. g,4-- f16.-- es32-.
  d2
}