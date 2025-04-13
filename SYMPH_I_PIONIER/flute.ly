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
  \override MultiMeasureRest.expand-limit = #2
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
  R2.*3 r4. c
  \repeat unfold 4 {\repeat tremolo 6 {f,16 as}}
  \repeat unfold 2 {\repeat tremolo 6 {g16 h}}
  \repeat unfold 2 {\repeat tremolo 6 {fis16 a}}
  \repeat tremolo 6 {g16 as!}
  fis2.~\startTrillSpan fis~ fis
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4.\stopTrillSpan gis'8.( fis16 e8)
  c16( d c b a[ b a g] f g f es)
  d8( es f) f4\trill( c8) c( d es) es4\trill( b8)
  b( c d) d4\trill( c8) c\prall( b a)
  #(define afterGraceFraction (cons 11 12))
  \afterGrace a4\(\trill {g16[( a]} b8)\)
  g'4.--~ g8. a16.-- b--
  c4.---> g4--~ g32 c16.--
  d4.---> g,4--~ g32 d'16.--
  es4.--->( d8--) r4 R2.*3 f,2. R2.*3 b2. R2.*13
  g,2.( fis4 es d c) r2 R2.*4
  r2 a''8( b c) r c( d) r d( es) r4 r4. R2.*6
  r2 a,8( h c) r c( d) r d( e2.) R2.
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  r4 \tuplet 3/2 4 {g,8( as-> b h des-> d e f-> g) as4( g8)} r4
  R2.*2 r2 eses,4-- r f-- r geses-- r as-- R2.
  \key a \major
  \time 2/4
  R2*23
  \tuplet 3/2 4 {
    dis,8 eis fis gis fis eis
    es f ges as ges f
  }
  es2
  \key as \major
  R2*11
  fis2( f! e4) r
  R2*5
  \acciaccatura d'8
  \tuplet 3/2 4 {
    c8( a g f g d
    e f g f g as!
    g a b c d e
  }
  f2)
  R2*3
  r4 f,~( f8[ es des ces] g'2) R2
  r16 es,( as c es as c es des c b g es b g es)
  r16 es( as c es as c es f es c as f4~
  f16) d( h as f as h d) f2~ 
  f16 d( h as f as h d)
  f( d h as f as h d)
  f( d h as f as h d
  \time 3/4
  f2.) R2.*7 r4. des16( es f g as b
  c2. des4 c b) as2.( b4 as f) f2. R2.*13
  \bar "|."
}