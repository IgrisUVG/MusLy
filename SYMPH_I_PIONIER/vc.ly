\version "2.19.15"

\language "deutsch"

vcMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  as,8( b16 es c) f-. as-. g( f2)
  c8( es16 g as-.) b-. c8~ c2
  des,8-. c( b4--)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  des32( es f c d c b a ges b a ges f es d c)
  b'2 r4 as'8 des, es4 r as,8 c es f <c as'>4. c8 es f b,4
  b1 dis e~ e2 es b as~ as r
  \time 3/4
  R2.*18 r2 r8 <as c>8~ q2.~ q2 r4
}

vcMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  r2 r16 d( fis) fis fis fis fis g ais ais ais g fis cis d d d d cis h h h h h
  h h h c c c c d es f ges a g e e e e e e e d d d d c h h h b b b b
  a a a a g g g h h h c c c d d d e e e fis fis g a <fis h>~ q2
  \bar "||"
}

vcMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}