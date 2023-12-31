\version "2.19.15"

\language "deutsch"

celloMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  %\clef bass
  \clef alto
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*23
  r4 d8_( e g4 h cis e8 g a4 fis cis a2. h)
  R2.*2
  r4 d,8( e g4 a2 fis'4 e g,8 a d4 e, cis' g a g a e'2 a4)
  r4 d( c) \tuplet 3/2 {h8( c h} g4) a( fis2 cis4 a2.
  h4) d,8_( e g4 h cis e8 g a2 e4) r2.
  r4 d,8_( e g4 h cis e8 g a g fis e d cis h a g fis g a
  e2) r4 fis'2( e4) r2. r4 d,8_( e g4 a d fis e g,8 a d4
  e, cis' g a2.~ a) r8 h,( d e g a h cis d e g a h2 a4 d,2) r4
  \time 4/4
  e1
  \time 3/4
  a,2.( h2 a'4 g2.) a,2(  fis'4 e2) d4(~ d cis2)
  R2.*6
  r4 d,8_( e g4 h cis e8 g a4 fis cis a2. h)
  R2.*2
  r4 d,8( e g4 a2 fis'4 e g,8 a d4 e, cis' g a g a e'2 a4)
  r4 d( c) \tuplet 3/2 {h8( c h} g4) a( fis2 cis4 a2.
  h4) d,8_( e g4 h cis e8 g a2 e4) r2.
  r4 d,8_( e g4 h cis e8 g a g fis e d cis h a g fis g a
  e2) r4 fis'2( e4) r2. r4 d,8_( e g4 a d fis e g,8 a d4
  e, cis' g a2.~ a) r8 h,( d e g a h cis d e g a h2 a4 d,2) r4
  \time 4/4
  e1
  \time 3/4
  a,2.( h2 a'4 g2.) a,2(  fis'4 e2) d4(~ d cis2)
}