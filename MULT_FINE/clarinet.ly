\version "2.19.15"

\language "deutsch"

clarinetMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*19
  r4 d8_( e g4 h cis e8 g a2. a, h)
  R2.*3
  r4 d,8_( e g4 h cis e8 g a2 g4 fis e b d2. a~ a)
  fis'4-.\prall e-.\prall d-- h8-.\prall a-. h4( d8) r
  h4-- d,8( e g4 h cis e8 g a2.~ a4 g a d2.~ d4) a'( e~
  e) fis( d~ d2) cis4~( cis h2 a8 g fis e d cis d2. a')
}