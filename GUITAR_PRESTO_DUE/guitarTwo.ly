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

guitarTwo = \relative {
  \key e \major
  \time 6/8
  \compressFullBarRests
  \clef "treble_8"
  \override TextScript.extra-offset = #'(-.3 . 1)
  \textLengthOn
  \override TextScript.font-size = -2
  \override StringNumber.staff-padding = #'()
  \override Fingering.staff-padding = #'()
  <e, gis' e'>8 h'' <h, a' fis'><e h' gis'><e a fis'><e h' gis'>
  <e h' cis><e h' fis'><e a dis><h h' e><h h'><h h'>
  <<
    {
      \set stringNumberOrientations = #'(right)
      <gis'\2 e'\4>4 e'8~ e r dis' e e4\rest s4.
    }
    \\
    {
      cis,,8 cis cis cis e' h h'4 a8 gis16 a h a gis fis
    }
  >>
  \tag #'Part {\break}
  %\once \override StringNumber.self-alignment-X = #RIGHT
  %\set stringNumberOrientations = #'(right)
  \once \override StringNumber.extra-offset = #'(-1.7 . -7.5)
  <e,, gis'\5 e'>8
  \once \override StringNumber.extra-offset = #'(-5.5 . -3.5)
  h''\3_0 <h, a' fis'>^"II"<e h' gis'><e a fis'><e h' gis'>
  <e h' cis><e h' fis'><e a dis><h h' e><h h'><h h'>
  <<
    {
      <gis' e'>4 e'8~ e r dis'
    }
    \\
    {
      cis,,8 cis cis cis e' h
    }
  >>
  \tag #'Part {\break}
  <<
    {
      e' e4\rest s4.
    }
    \\
    {
      h4
      \stringNumSpan "2"
      a8\startTextSpan gis16 a h a gis\stopTextSpan
      \stringNumSpan "3"
      \once \override TextSpanner.extra-offset = #'(0 . 1.5)
      fis\startTextSpan
      e16 fis\stopTextSpan
      gis\2
      \stringNumSpan "3"
      fis\startTextSpan e dis cis dis e dis cis h_2
      \stemUp
      ais h cis h ais\stopTextSpan
      \stringNumSpan "4"
      gis\startTextSpan fis gis\stopTextSpan ais\3 gis\4 fis-2-\markup {
        \postscript #"1.2 .8 moveto 1.5 -.3 rlineto stroke"
      } e-2
    }
  >>
  dis e fis e dis cis h cis dis e dis cis
  h8-. fis'-. h-. cis-. dis-. fis-.\2 h fis fis, h r4
  \tag #'Part {\break}
  <e,, gis' e'>8 h'' <h, a' fis'><e h' gis'><e a fis'><e h' gis'>
  <e h' cis><e h' fis'><e a dis><h h' e><h fis' h>
  \once \override Fingering.extra-offset = #'(0 . -3)
  <h dis h'-0>
  <cis e gis>16 dis( e fis) gis( a) gis4 fis8
  e16( fis) gis( a) h( cis) h4
  \tag #'Part {
    \once \override TextScript.self-alignment-X = #CENTER
    \once \override TextScript.extra-offset = #'(1 . -1)
    \once \override TextScript.font-size = 0.5
    a8_\4_\markup {\italic Fine}
  }
  \tag #'Partitur {a8_\4}
  \tag #'Part {\break}
  <<
    {
      \override TextScript.font-size = -2
      gis8^"VI" e16_( fis) gis a h8 h h fis dis16_( e) fis gis a8_( gis) h
      e, cis16_(^"IV" dis) e fis gis8_( a) fis
    }
    \\
    {
      e,4. e e e e e
    }
  >>
  \tag #'Part {\break}
  <e e'\5>8^"VI" h'_\6 gis' fis h, a' gis a16( gis) fis e fis( e) dis cis h8
  e h  gis' fis h, a' gis h16( a) gis fis e4 \bar "!"
  \tag #'Part {\break}
  \tag #'Part {
    \once \override Score.RehearsalMark.extra-offset = #'(10 . 0)
    \mark \markup {meno mosso}
  }
  <<
    {
      \override BreathingSign.extra-offset = #'(0 . 1)
      \stringNumSpan "2"
      %\textSpannerUp
      \stemDown
      \once \override TextSpanner.extra-offset = #'(0 . -2)
      e'8\startTextSpan-4
      \bar "||"
      \stemUp gis4-4 fis8 h4 a8 gis4 e8 fis4\stopTextSpan \breathe r8
    }
    \\
    {
      s8
      \once \override TextScript.extra-offset = #'(0 . 6)
      h,,4.-\markup { \italic dolce } a e' cis
    }
  >>
  <fis' cis'>4.<dis h'><e h'> r4
  <<
    {
      \override Fingering.staff-padding = #'()
      \stringNumSpan "3"
      %\textSpannerUp
      \stemDown
      \once \override TextSpanner.extra-offset = #'(0 . -1)
      h8\startTextSpan-4
      \stemUp dis4-4 cis8 e4-4 cis8\stopTextSpan-4
    }
    \\
    {
      s8 a,2.
    }
  >>
  \tag #'Part {\break}
  <<
    {
      \override StringNumber.staff-padding = #'()
      \override TextScript.font-size = -2
      h'4-"IV" gis8_\4 e4.
    }
    \\
    {
      gis,4. cis
    }
  >>
  <e' h'>4.
  \set stringNumberOrientations = #'(left)
  <h\5 fis''\4><gis e''>4 fis8 e4 a'8
  <<
    {
      gis4 fis8 e4 dis8
    }
    \\
    {
      e8 h e, e' fis, a
    }
    \\
    {
      \voiceTwo
      h,4. h
    }
  >>
  \break
  %\once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.extra-offset = #'(7 . 1)
  %\once \override Score.RehearsalMark.font-size = -0.2
  \mark \markup { a tempo}

  \override Staff.Clef #'break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible % this will do the job with the time signatures
  \override Staff.KeyCancellation #'break-visibility = #all-invisible
  %\override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible

  \key e \minor
  <e, g' e'>8 e e e e16( fis) g a h8 h h c16( h) a g fis g
  a(_4-\markup {
    \postscript #"1.5 -.3 moveto 1.2 .2 rlineto stroke"
  } h)_4 cis dis e fis g4 fis8 g e16( fis) g a h8-. h-. h-.
  h16( c) h a g fis g8. fis16 e8 c'16( d) c h a g fis d fis g a c
  h( c) h a g fis e c e fis g h
  \tag #'Part {\break}
  a( h) a g fis e dis h dis e fis a
  g h a g fis e dis cis h a g fis e4 h'8 e d c h4 e,8 a h c
  \tag #'Part {\break}
  fis,4 g8 a d c h e d c4 a8 d4 h8 e4 c8 a4. h
  \tag #'Part {\break}
  e4 g8 h16 e d c h a g8 e16( fis) g a h8-. h-. h-.
  h16( c) h a g fis g8 e h e,4.
  \tag #'Part {
    %\once \override TextScript.self-alignment-X = #CENTER
    \once \override TextScript.extra-offset = #'(1 . -1)
    \once \override TextScript.font-size = 0.5
    r4._\markup {
      \column {
        \italic D.C.
        \line {\italic {al fine}}
        \line {\italic {e poi Coda}}
      }
    }
  }
  \tag #'Partitur {r4.}
  \bar "||"
}

guitarTwoCoda = \relative {
  \key e \major
  \time 6/8
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \clef "treble_8"
  \override TextScript.extra-offset = #'(-.3 . 1)
  \textLengthOn
  \override TextScript.font-size = -2
  \override StringNumber.staff-padding = #'()
  \override Fingering.staff-padding = #'()
  <<
    {
      \override TextScript.font-size = -2
      gis8^"I" e16_( fis) gis a h8 h h fis dis16_( e) fis gis a8_( gis) h
      e, cis16_(^"IV" dis) e fis gis8_( a) fis
    }
    \\
    {
      e,4. e e e e e
    }
  >>
  \tag #'Part {\break}
  <<
    {
      e'8^"I" h gis' fis^"II" h, a' gis a16_( gis) fis e fis_( e) dis cis h8
      e^"II" h  gis' fis^"II" h, a'\4
      \revert TextScript.font-size
      \once \override TextScript.extra-offset = #'(0 . 1)
      gis^\markup { \italic rit }
      h16(
      \once \override Fingering.extra-offset = #'(0 . 4)
      a)_1
      \once \override Fingering.extra-offset = #'(0 . 3.6)
      gis_1 fis e4.
    }
    \\
    {
      e,4. e e s e4 gis8 fis r
      \once \override StringNumber.extra-offset = #'(.5 . 1.4)
      h_\6 gis
      \once \override Fingering.extra-offset = #'(.3 . 2.5)
      a-0
      \once \override Fingering.extra-offset = #'(.3 . 2.5)
      h_2 e,4.
    }
  >>
  \bar "|."
}