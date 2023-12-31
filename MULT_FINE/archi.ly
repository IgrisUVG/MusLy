\version "2.19.15"

\language "deutsch"

archiIMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \clef alto
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  r4 a <e' g><d fis> r a h g h cis e g
  \repeat unfold 2 {a4 a, <e' g><d fis> r a h g h cis e g}
  a4 h, d g e, g a b fis' e a, d e, cis' g
  %%%%%%%%%%%%%%%%%%%
  r4 a <e' g><d fis> r a <g h> r2 a4 r2
  \repeat unfold 2 {r4 a <e' g><d fis> r a g r2 a4 r2}
  r4 h d g r2 fis4 r2 e4 r2 r2.
  r4 a, <e' g><d fis> r a <g h> r2 r2.
  r4 a <e' g><d fis> r a g r2 r2.
  \repeat unfold 2 {r4 a <e' g><d fis> r a <g h> r2 r2.}
  r4 <h d><e g><g, e'> r2 R2.*3
  r4 a <e' g><d fis> r a <g h> r2 r2.
  d4 r2 g4 h d
  \time 4/4
  a r2.
  \time 3/4
  r2.
  r4 fis d' e r2 R2.*3
  %%%%%%%%%%%%%%%%%%%
  r4 a, <e' g><d fis> r a <g h> r2 a4 r2
  \repeat unfold 2 {r4 a <e' g><d fis> r a g r2 a4 r2}
  r4 h d g r2 fis4 r2 e4 r2 r2.
  r4 a, <e' g><d fis> r a <g h> r2 r2.
  r4 a <e' g><d fis> r a g r2 r2.
  \repeat unfold 2 {r4 a <e' g><d fis> r a <g h> r2 r2.}
  r4 <h d><e g><g, e'> r2 R2.*3
  r4 a <e' g><d fis> r a <g h> r2 r2.
  d4 r2 g4 h d
  \time 4/4
  a r2.
  \time 3/4
  r2.
  r4 fis d' e r2 R2.*3
}

archiIIMusic = \relative {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \clef bass
  \key d \major
  \time 3/4
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \repeat unfold 3 {d4 r2 r4 d a g d' e g r a}
  d,4 r2 b4 r2 d4 r2 a4 r2 r a4
  %%%%%%%%%%%%%%%%%%%
  \repeat unfold 3 {d4 r2 r4 d a g r2 cis4 r2}
  d4 r2 b4 r2 d4 r2 a4 r2 r a4
  \repeat unfold 4 {d4 r2 r4 d a g r2 r2.}
  d'4 r2 b4 r2 r2. a4 r2 r a4
  d4 r2 r4 d a g r2 R2.*3
  \time 4/4
  a4 r2.
  \time 3/4
  r2.
  h4 r2 b4 r2 r2. a4 r2 r a4
  %%%%%%%%%%%%%%%%%%%
  \repeat unfold 3 {d4 r2 r4 d a g r2 cis4 r2}
  d4 r2 b4 r2 d4 r2 a4 r2 r a4
  \repeat unfold 4 {d4 r2 r4 d a g r2 r2.}
  d'4 r2 b4 r2 r2. a4 r2 r a4
  d4 r2 r4 d a g r2 R2.*3
  \time 4/4
  a4 r2.
  \time 3/4
  r2.
  h4 r2 b4 r2 r2. a4 r2 r a4
}