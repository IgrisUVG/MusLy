\version "2.19.15"

\language "deutsch"

clarinetMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*19 %%%%%%%%%%%%%%%%%%%%%%%%%%
  r4 d8_( e g4 h cis e8 g a2. a, h)
  R2.*3
  r4 d,8_( e g4 h cis e8 g a2 g4 fis e b d2. a~ a)
  fis'4-.\prall e-.\prall d-- h8-.\prall a-. h4( d8) r
  h4-- d,8( e g4 h cis e8 g a2.~ a4 g a d2.~ d4) a'( e~
  e) fis( d~ d2) cis4~( cis h2 a8 g fis e d cis d2. a')
  r4 d,,8_( e g4 h cis e8 g a2. d, e)
  fis8( g a h cis d e fis g a h cis d2) d,,4
  a'4.( h8 cis4 d2 e8 fis g4) a8\prall r g\prall r
  fis4( e8)\prall r cis4( a2.)
  \time 4/4
  r4 d,,8( fis e4) a8( b
  \time 3/4
  fis'4 e d) d2.~ d4 d,8_( e g4 a h cis d) g,8( a h4 e,2 g4)
  R2.*2 %%%%%%%%%%%%%%%%%%%%%%%%%%
  r4 d8_( e g4 h cis e8 g a2. a, h)
  R2.*3
  r4 d,8_( e g4 h cis e8 g a2 g4 fis e b d2. a~ a)
  fis'4-.\prall e-.\prall d-- h8-.\prall a-. h4( d8) r
  h4-- d,8( e g4 h cis e8 g a2.~ a4 g a d2.~ d4) a'( e~
  e) fis( d~ d2) cis4~( cis h2 a8 g fis e d cis d2. a')
  r4 d,,8_( e g4 h cis e8 g a2. d, e)
  fis8( g a h cis d e fis g a h cis d2) d,,4
  a'4.( h8 cis4 d2 e8 fis g4) a8\prall r g\prall r
  fis4( e8)\prall r cis4( a2.)
  \time 4/4
  r4 d,,8( fis e4) a8( b
  \time 3/4
  fis'4 e d) d2.~ d4 d,8_( e g4 a h cis d) g,8( a h4 e,2 g4)
}