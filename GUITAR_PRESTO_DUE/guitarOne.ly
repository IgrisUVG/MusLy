\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
#(define RH rightHandFinger)

stringNumSpan =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.font-size = #-5
     \override TextSpanner.dash-fraction = #0.3
     \override TextSpanner.dash-period = #1.5
     %\override TextSpanner.bound-details.right.arrow = ##t
     %\override TextSpanner.arrow-width = #0.2
     %\override TextSpanner.arrow-length = #0.7
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})

guitarOne =
\relative
{
  \key e \major
  \time 6/8
  \compressFullBarRests
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
  <fis h><fis dis'> q
  \once \override StringNumber.extra-offset = #'(3.5 . -2)
  <fis dis'\2>4
  \once \override StringNumber.extra-offset = #'(-1.7 . -4.3)
  <dis\4 h'>8
  <<
    {
      fis'4 ais,8 h
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
  e\3^"VII" h'\1 fis\2 h gis h <<
    {
      s8 h16 s8.
    }
    \\
    {
      a16 h h h a h
    }
  >>
  gis h fis h e, h' dis, h' e, h' fis h
  e, h' a h gis h fis h e, h' dis, h'
  e, gis h gis fis h e, fis h fis dis h'
  e, h' a h gis h fis h e, h' dis, h'
  e, gis h gis fis h e, fis h fis dis h'
  e,8 <h gis' e'><h fis' dis'><h e gis e'>4
  \bar "!"
  \tag #'Part {
    \once \override TextScript.extra-offset = #'(0 . -1)
    \once \override TextScript.font-size = 0.5
    r8_\markup {\italic Fine}
  }
  \tag #'Partitur {r8}
  \bar "||"
  \tag  #'Part {\break}
  %\once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.extra-offset = #'(7 . 1)
  %\once \override Score.RehearsalMark.font-size = 0.5
  \mark \markup {meno mosso}
  <<
    {
      \override Fingering.staff-padding = #'()
      h'4. cis e a,4 r8 a,4-2 cis8-3 fis,4-4 a8-2 gis4.-3
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      e'4. e
      \once \override StringNumber.extra-offset = #'(.6 . 2.5)
      h_\4 r4 gis8^2 fis,4.-1 h e,
    }
  >>
  r4. <e'' a><a, cis'><dis h'>
  <<
    {
      s4 a'8 gis4 fis8 e4 dis8 e4.
    }
    \\
    {
      \override StringNumber.staff-padding = #'()
      <cis gis'>4 s8 h,4.-2^\6 h cis4 \stemUp fis,8
    }
  >>
  e4 r8
  r16 e'-.^"VI" fis-. gis-. a-. h-.
  cis-. dis-. e-. fis-. gis-.
  \override BreathingSign.extra-offset = #'(1 . 1)
  a-. \breathe
  \break
  %\once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.extra-offset = #'(7 . 1)
  %\once \override Score.RehearsalMark.font-size = -0.2
  \mark \markup { a tempo}

  \override Staff.Clef.break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible % this will do the job with the time signatures
  \override Staff.KeyCancellation.break-visibility = #all-invisible
  \override Staff.KeyCancellation.explicitKeySignatureVisibility = #all-invisible

  \key e \minor
  <e, h' g'>8^"VII" e'16( fis) g a
  <<
    {
      h8 h h h16( c) h a g fis g8. fis16 e8 r8. h'16 e8
    }
    \\
    {
      \override Fingering.staff-padding = #'()
      g,,4.-0
      \once \override StringNumber.extra-offset = #'(.6 . 2.8)
      a_\4
      \once \override StringNumber.extra-offset = #'(.6 . 5.5)
      h8(_\3-1-\markup {
        \postscript #"1.2 3.2 moveto 2.3 .4 rlineto stroke"
      } c)-1 h a4 g8
    }
  >>
  <h, a' fis'>8^"VII"
  \repeat unfold 2 {<h a' fis'>8}
  \repeat unfold 6 {<e, h'' g' e'>}
  \repeat unfold 6 {<h' a' g' dis'>}
  \repeat unfold 6 {<c a' e' c'>}
  \repeat unfold 3 {<h a' e' h'>}
  \repeat unfold 3 {<h g' e' h'>}
  \repeat unfold 6 {<h fis' e' h'>}
  \repeat unfold 6 {<h fis' dis' a'>}
  \override Fingering.staff-padding = #'()
  \stringNumSpan "5"
  e16(\startTextSpan fis) g\stopTextSpan
  \stringNumSpan "4"
  a\startTextSpan h fis( g) a\stopTextSpan
  \stringNumSpan "3"
  h\startTextSpan c ais( h)
  cis\stopTextSpan
  \once \override StringNumber.extra-offset = #'(0 . 1)
  dis\2 e fis g8 c,16^"V" h'( a) g fis e
  c'-4 dis,(-2\3 e) fis g a d,^"VII" c'( h) a g fis
  d' e,(-1 fis) g a h c^"VIII" a fis c' d,^"VII" c'(
  h) d, e fis g a h g e h' c,^"V" h'(
  a) c, d e fis g a fis dis a' h,-0 a'(
  g) h,( cis) dis e fis g8
  \once \override StringNumber.extra-offset = #'(-1 . -.5)
  e16(\2 fis) g a
  h8-. h-. h-. h16( c) h a g fis
  \once \override StringNumber.extra-offset = #'(-1.2 . -1)
  g(\2 a) g fis e dis e8 <g h e> q q4.
  \tag #'Part {
    \once \override TextScript.extra-offset = #'(0 . -1)
    \once \override TextScript.font-size = 0.5
    r4._\markup {
      \column {
        \italic D.C.
        \line {\italic {al fine}}
      }
    }
  }
  \tag #'Partitur {r4.}
  \bar "|."
}