\version "2.19.15"

\language "deutsch"

clarinetMusic = \relative {
  \key as \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \clef treble
  as8( b16 es f) as-. b-. c( es) g-. as8-- es( f
  as, g es4) f16-. b( as) g-. as4--
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  f'32( es des c as' ges f es) es( des c b) ges'-. b,( c as)
  des( c b as e' d c h) b( as ges f d' c b a)
}
