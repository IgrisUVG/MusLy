\version "2.18.0"

\language "deutsch"

fluteMusic = \relative {
  \clef treble
  \key d \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \override TupletNumber.transparent = ##t
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #1.65 \teeny  \flat
  }
  \override TextScript.extra-offset = #'(-1 . -2)
  a'1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4( d es4.) b'8( eis,2) cis--
  %\break
  a1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4.( d8 f4) b-- cis1~(
  %\break
  cis d4.) r8 r gis,( b, es,)
  \shape #'((-1 . -1.5) (-0.5 . 0.7) (0 . 0) (0 . 0)) Slur
  c2( d'
  a'2~ \tuplet 3/2 4 {a8) b( a b fis cis' a b a} b16 a f d'
  \tuplet 6/4 {cis16 a b a e a}
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  b32 a es a b a gis a)
  \set subdivideBeams = ##f
  e'4( d es~ es16) g( h, e, dis2 cis8) gis' dis' eis c2. ~ c8 g,(
  d' e h4.) b'8( c, f,)
}
