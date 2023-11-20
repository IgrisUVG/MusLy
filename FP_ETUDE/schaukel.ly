\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

globalSchau = {
  \override Staff.TimeSignature.stencil = ##f
  \time 3/4
  \key e \minor
}

rechtsSchau = \relative {
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \clef treble
  \override Fingering.staff-padding = #'()
  \partial 4
  <e'' fis \tweak font-size #-2 g>4(
  <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  \repeat unfold 2 {
    r2 <e fis \tweak font-size #-2 g>4(
    <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  }
  r2 <e fis \tweak font-size #-2 g>4(
  \break
  <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  \repeat unfold 8 {
    r2 <e fis \tweak font-size #-2 g>4(
    <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  }
  \change Staff = LH
  \repeat unfold 8 {
    r2 <e fis \tweak font-size #-2 g>4(
    <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  }
  \clef bass
  r4
  \change Staff = RH
  r8 <d e a>4.<a d e><d e g><d fis a><d g h><e a d>2<es g es'>4
  <f f'>2<es b' es>4<f a f'>2
  <e fis \tweak font-size #-2 g>4(
  <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  \repeat unfold 7 {
    r2 <e fis \tweak font-size #-2 g>4(
    <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  }
  \bar ".|:"
  r2 <e fis \tweak font-size #-2 g>4(
  <dis e \tweak font-size #-2 a \tweak font-size #-2 b>-.) r2
  \bar ":|."
}

dynamicSchau = {
  s4\ppp s2.*39 s4 s2\ff s2.*4 s2\> s4\pp s2.*8 s4
  \once \override TextScript.extra-offset = #'(-3 . 0)
  s2-\markup {\italic poco a poco diminuendo}
  s2.*4
  \once \override DynamicText.X-offset = #0.5
  s2.*2\ppp s2 s4-\markup {\italic morendo}
}

linksSchau = \relative {
  \clef bass
  \override Fingering.staff-padding = #'()
  \partial 4 r4 R2.*6
  \override TextScript.extra-offset = #'(2 . 3)
  <e,, e'>8-\markup {\italic legato} fis' h e <fis a> <g f'>
  \clef treble
  <<
    {
      \override Fingering.staff-padding = #'()
      h8 e f_3 fis g a_3 h! a g_1 fis f e
      dis_5 e f fis g a h! a g fis f e
    }
    \\
    {
      h4 s2 s2. dis4 s2 s2.
    }
  >>
  dis8 e f fis g a h! a g fis f e
  dis e f fis g a h! a g fis f e
  <<
    {
      cis e f fis g a h! a g fis f e
      c e f fis g a h! a g fis f e
      h e_3 f a g fis
    }
    \\
    {
      cis4 s2 s2. c4 s2 s2. h4 s2
    }
  >>
  f'8_1 e dis d_1 cis c h e dis d cis_3 c h fis' g h
  \change Staff = RH
  e fis
  \ottava #1
  \set Staff.ottavation = #"8"
  h-1 e f-1 fis g a h!-5 a g fis f e-3
  \repeat unfold 3 {dis e f fis g a h! a g fis f e}
  cis e f fis g a h! a g fis f e c e f fis g a h! a g fis f e 
  h e-2 f a-5 g fis f e-1 dis-4 d cis c-1 h-2 e-4 dis d-1 cis-3 c 
  h-1 e fis g-1 h c
  \break
  e4
  \ottava #0
  \change Staff = LH
  d,,,,,8[ a' e'] d[ e a d] e,[ a d e] a,[ d e a,] e'[ 
  d a e] d'[ a e d] a'[ e d a] e'[ d a d,] e'[ a, d,]
  <e, e'>8 fis' h e <fis a> <g f'>
  \clef treble
  <<
    {
      \override Fingering.staff-padding = #'()
      h8 e f fis g a h! a g fis f e
      dis e f fis g a h! a g fis f e
    }
    \\
    {
      h4 s2 s2. dis4 s2 s2.
    }
  >>
  dis8 e f fis g a h! a g fis f e
  dis e f fis g a h! a g fis f e
  <<
    {
      cis e f fis g a h! a g fis f e
      c e f fis g a h! a g fis f e
      h e f a g fis
    }
    \\
    {
      cis4 s2 s2. c4 s2 s2. h4 s2
    }
  >>
  e2 r4 R2.*2
}