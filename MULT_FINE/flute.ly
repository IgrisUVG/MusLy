\version "2.19.15"

\language "deutsch"

fluteMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*36
  r4 d'''( c) \tuplet 3/2 {h8( c h} g4) a( fis2 cis4 a2. h~
  h4) a( h d h d e fis e h' g d e2. e2 d4) d2. r
  a'2( g4) r a( g \tuplet 3/2 {fis8 g fis} e4 d b2. a)
  r2 a4( d2) r4 R2.*5
}