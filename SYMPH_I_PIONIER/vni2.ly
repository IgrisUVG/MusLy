\version "2.19.15"

\language "deutsch"

vniTwoMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  as16(c es as c as es c) as( c f as des as f des)
  c( as es' c b4) es16( g b es as, f es des)
  des( f as c b g des b) as( des e a b f d b~ b2) des?
  b'32( as g es c8~ c2.~ c) es4_(
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  f32 fis g as a b h c des d es e f fis g as
  b as g fis f e es  d des c h b a as g fis fis2 fis)
  e1~ e2 es es4-- es-- es2--~ es r
  \time 3/4
  R2.*18 r2 r8 as,8~ as2.~ as2 r4
}
