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
  R2.*18 r2 r8 as,8~ as2.~ as2 r4 R2.*2
  \time 4/4 
  c1:32 r2. r8 f\turn( es4) es_( des b c4. c'8 b2
  \set subdivideBeams = ##f
  as4~ as16) des,( f as~ as) des,( es as~ as) des,( f as~
  as) c,( es g~ g) b,( des f~ f) b,_( c f g) b es f g4 es c r
  es,4. r8 r2 r2. g8( as16 des
  es) g as b( des) fes g-- g, des'8( es g, e des4) r2.
  r4 es,( des) des des( c2.)
  \bar "|."
}

vniTwoMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*4 r4 d''8 h a h e, d R1
  \bar "||"
}

vniTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}