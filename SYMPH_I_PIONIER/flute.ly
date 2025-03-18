\version "2.19.15"

\language "deutsch"

fluteMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  r4 as''2.(~ as4. c16 es
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  as32 g f es des c b as g f es des c b as g-.)
  r4 as'4.\startTrillSpan( c,8\stopTrillSpan es f
  b,2\startTrillSpan) as~\stopTrillSpan as1
  es''8( des c f c b g es c2 b4 g'8 f gis2. gis4)
  fis e2.~ e2 es( des4) g,8.( as16) as2~ as r
  \time 3/4
  R2.*15
  r4 es''( d c2~ c8 des f4 g as~ as) r2 r as4~ as2 r4 R2.*2
  \time 4/4
  r2 r8 des,,8.\trill r r es\trill r8 r2
  \set subdivideBeams = ##f
  r16 as( es' as, c as b as c) r8. r4
  \set subdivideBeams = ##t
  r8 f,,32( as c es f g b g f es c as f2~ f) r
  r c''~( c4 b as g f1~ f4 as des2~ des4 b ges' fes es) r2. R1 r2 as
  \bar "|."
}

fluteMusicDrei = \relative {
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
  e'''1~ e  s4. s16
  \cadenzaOff
}

fluteMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \repeat unfold 2 {
    des'16 e g b des e g
    \ottava #1
    \set Staff.ottavation = #"8"
    b des e g b des b g e des b
    \ottava #0
    g e des b g e
  }
  c e g b c e g
  \ottava #1
  \set Staff.ottavation = #"8"
  b c e g b c b g e c b
  \ottava #0
  g e c b g e
  d f as h d f
  \ottava #1
  \set Staff.ottavation = #"8"
  as h d f as h d h as f d h as
  \ottava #0
  f d h as f
  e f fis g as a b h c des d es
  e f fis g as a b h c des d es
  f e es d des c h b a as g fis
  f e es d des c h b a as g f
  es e f fis g as a b h c des d
  es e f fis g as a b h c des d
  es8 r r2 R2.*2 r4. fes4( es8)
}