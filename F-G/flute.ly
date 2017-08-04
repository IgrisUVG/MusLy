\version "2.18.0"

\language "deutsch"

fluteMusic = \relative {
  \clef treble
  \key d \major
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \override TupletNumber #'transparent = ##t
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #1.65 \teeny  \flat
  }
  a'1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  % для сноски:
  % a'2~ \tuplet 3/2 4 {a8 b a b a b a b a}
  % b16 a b a \tuplet 6/4{b a b a b a} b32 a b a b a gis a
  e'4( d es4.) b'8( eis,2) cis
  a1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4.( d8 f4) b cis1~( cis d4) r r8 gis,( b, es,)
}