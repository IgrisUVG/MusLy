\version "2.19.15"

\language "deutsch"

cbMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  des8->( g,) as->( es) c'4 des as es' f, c'
}
