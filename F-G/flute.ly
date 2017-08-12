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
  e'4( d es4.) b'8( eis,2) cis
  %\break
  a1~\startTrillSpan^"*"
  #(define afterGraceFraction (cons 15 16))
  \afterGrace a {gis16[\stopTrillSpan a]}
  e'4.( d8 f4) b cis1~(
  %\break
  cis d4) r r8 gis,( b, es,) c2( d
  a'1)
}
