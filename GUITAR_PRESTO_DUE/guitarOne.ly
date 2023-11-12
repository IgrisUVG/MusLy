\version "2.19.15"

\language "deutsch"

#(define RH rightHandFinger)

guitarOne =
\relative
{
  \global
  %\override TextScript.self-alignment-X = #CENTER
  \clef "treble_8"
  \override TextScript.extra-offset = #'(-.3 . 1)
  \textLengthOn
  \override TextScript.font-size = -2
  <e h' gis'>8^"II" e'16^"IV"( fis) gis a
  <<
    {
      h8 h h fis
    }
    \\
    {
      h,4 e8 h
    }
  >>
  dis16( e) fis gis
  <<
    {
      a8( gis) h e,
    }
    \\
    {
      e4 dis8 cis
    }
  >>
  cis16^"VI"( dis) e fis
  \override StringNumber.staff-padding = #'()
  \once \override StringNumber.self-alignment-X = #RIGHT
  <h,\4 gis'\2>8 <a, cis' a'><h a' fis'><e, gis' e'> r8 h''\4
  \once \override StringNumber.extra-offset = #'(.5 . .5)
  h,4._\6
  <e h' gis'>8^"VII" e'16( fis) gis a
  <<
    {
      h8 h h fis
    }
    \\
    {
      h,4 e8 h
    }
  >>
  dis16( e) fis gis
  <<
    {
      a8( gis) h e,
    }
    \\
    {
      e4 dis8 cis
    }
  >>
  cis16( dis) e fis <h, gis'>8 <a, cis' a'><h a' fis'>
  <<
    {
      e'4. s
    }
    \\
    {
      <e,, gis'>8 s4 dis''4.
    }
  >>
  cis
  <<
    {
      \override StringNumber.staff-padding = #'()
      r4
      \once \override StringNumber.extra-offset = #'(-.7 . -2)
      eis8\2
    }
    \\
    {
      \override StringNumber.staff-padding = #'()
      \once \override StringNumber.extra-offset = #'(.7 . 2.7)
      h4._\4
    }
  >>
  <ais fis'>8 h'16(\2 ais) h8 <h, gis'>^"IX" h'16( ais) h8
  <ais, fis'>^"VII" h'16( ais)
  \once \override StringNumber.extra-offset = #'(2.5 . -2.5)
  h8\3
  \once \override StringNumber.extra-offset = #'(-1.7 . -4.3)
  <gis,\5 e'> a'16( gis) a8
  <fis h><fis dis'> q q4
  \once \override StringNumber.extra-offset = #'(-1.7 . -4.3)
  <dis\4 h'>8
  <<
    {
      \once \override StringNumber.extra-offset = #'(-6 . -5)
      fis'4\2 ais,8 h
    }
    \\
    {
      r8 gis fis dis
    }
  >>
  r4
  <e, h' gis'>8^"II" e'16( fis) gis a
  <<
    {
      h8 h h fis
    }
    \\
    {
      h,4 e8 h
    }
  >>
  dis16( e) fis gis
  <<
    {
      a8( gis) h e,
    }
    \\
    {
      e4 dis8 cis
    }
  >>
  cis16( dis) e fis gis a-4-\markup {
    \postscript #"1.5 6 moveto 1.3 .4 rlineto stroke"
  } h-4 cis dis e
  h\2_\RH #1 e,-0 a e gis e a e gis e fis\3 e
  e\3^"VII" h'\1 fis\2 h gis h <<{s8 h16 s8.}\\{a16 h h h a h}>>
  gis h fis h e, h' dis, h' e, h' fis h  e, h' a h gis h fis h e, h' dis, h'
  e, gis h gis fis h e, fis h fis dis h' e, h' a h gis h fis h e, h' dis, h'
  e, gis h gis fis h e, fis h fis dis h' e,8 <h gis' e'><h fis' dis'><h e gis e'>4 r8
  \bar "||"
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup {meno mosso}
  <<
    {
      h'4. cis e a,4 r8 a,4 cis8 fis,4 a8 gis4.
    }
    \\
    {
      e'4. e h r4 gis8 fis,4. h e,
    }
  >>
  r4. <e'' a><a, cis'><dis h'>
  <<
    {
      s4 a'8 gis4 fis8 e4 dis8 e4.
    }
    \\
    {
      <cis gis'>4 s8 h,4. h cis4 \stemUp fis,8
    }
  >>
  e4 r8 r16 e'-.^"VI" fis-. gis-. a-. h-. cis-. dis-. e-. fis-. gis-. a-.\breathe
  \break
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup { a tempo}

  \override Staff.Clef #'break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible % this will do the job with the time signatures
  \override Staff.KeyCancellation #'break-visibility = #all-invisible
  \override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible

  \key e \minor
  <e, h' g'>8 e'16( fis) g a
  <<
    {
      h8 h h h16( c) h a g fis g8. fis16 e8 r8. h'16 e8
    }
    \\
    {
      g,,4. a h8( c) h a4 g8
    }
  >>
  \repeat unfold 3 {<h, a' fis'>8}  \repeat unfold 6 {<e, h'' g' e'>}
  \repeat unfold 6 {<h' a' g' dis'>} \repeat unfold 6 {<c a' e' c'>}
  \repeat unfold 3 {<h a' e' h'>} \repeat unfold 3 {<h g' e' h'>}
  \repeat unfold 6 {<h fis' e' h'>} \repeat unfold 6 {<h fis' dis' a'>}
  e16(fis) g a h fis( g) a h c ais( h) cis dis e fis g8 c,16^"V" h'( a) g fis e
  c' dis,( e) fis g a d, c'( h) a g fis d' e,( fis) g a h c a fis c' d, c'(
  h) d, e fis g a h^"V" g e h' c, h'( a) c, d e fis g a fis dis a' h, a'(
  g) h,( cis) dis e fis g8 e16( fis) g a h8-. h-. h-. h16( c) h a g fis
  g( a) g fis e dis e8 <g h e> q q4. r
  \bar "|."
}