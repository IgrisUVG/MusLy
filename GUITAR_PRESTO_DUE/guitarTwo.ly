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

guitarTwo =
\relative
{
  \key e \major
  \time 6/8
  \compressFullBarRests
  \clef "treble_8"
  \override TextScript.extra-offset = #'(-.3 . 1)
  \textLengthOn
  \override TextScript.font-size = -2
  \override StringNumber.staff-padding = #'()
  \override Fingering.staff-padding = #'()
  <e, gis' e'>8 h'' <h, a' fis'><e h' gis'><e a fis'><e h' gis'><e h' cis><e h' fis'><e a dis>
  <h h' e><h h'><h h'>
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
  h''\3_0 <h, a' fis'>^"II"<e h' gis'><e a fis'><e h' gis'><e h' cis><e h' fis'><e a dis>
  <h h' e><h h'><h h'>
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
      h4 a8 gis16 a h a gis fis
    }
  >>
  e16 fis gis fis e dis cis dis e dis cis h
  ais h cis h ais gis fis gis ais gis fis e
  dis e fis e dis cis h cis dis e dis cis
  h8-. fis'-. h-. cis-. dis-. fis-. h fis fis, h r4
  \tag #'Part {\break}
  <e,, gis' e'>8 h'' <h, a' fis'><e h' gis'><e a fis'><e h' gis'>
  <e h' cis><e h' fis'><e a dis><h h' e><h fis' h><h dis h'>
  <cis e gis>16 dis( e fis) gis( a) gis4 fis8
  e16( fis) gis( a) h( cis) h4 a8
  \tag #'Part {\break}
  <<
    {
      gis8 e16( fis) gis a h8 h h fis dis16( e) fis gis a8( gis) h
      e, cis16( dis) e fis gis8( e) fis
    }
    \\
    {
      e,4. e e e e e
    }
  >>
  \tag #'Part {\break}
  <e e'>8 h' gis' fis h, a' gis a16( gis) fis e fis( e) dis cis h8 e h  gis' fis h, a'
  gis h16( a) gis fis e4 \bar "!"
  \tag #'Part {\break}
  <<
    {
      \stringNumSpan "2"
      \textSpannerUp
      \stemDown e'8\startTextSpan
      \bar "||"
      \stemUp gis4 fis8 h4 a8 gis4 e8 fis4\stopTextSpan \breathe r8
    }
    \\
    {
      s8 h,,4. a e' cis
    }
  >>
  <fis' cis'>4.<dis h'><e h'> r4
  <<
    {
      \stringNumSpan "3"
      \textSpannerUp
      \stemDown h8\startTextSpan
      \stemUp dis4 cis8 e4 cis8\stopTextSpan
    }
    \\
    {
      s8 a,2.
    }
  >>
  \tag #'Part {\break}
  <<
    {
       h'4 gis8 e4.
    }
    \\
    {
       gis,4. cis
    }
  >>
  <e' h'>4.<h fis''><gis e''>4 fis8 e4 a'8
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

  \override Staff.Clef #'break-visibility = #begin-of-line-visible
  %\override Staff.Clef #'explicitClefVisibility = #begin-of-line-visible
  \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible % this will do the job with the time signatures
  \override Staff.KeyCancellation #'break-visibility = #all-invisible
  \override Staff.KeyCancellation #'explicitKeySignatureVisibility = #all-invisible

  \key e \minor
  <e, g' e'>8 e e e e16( fis) g a h8 h h c16( h) a g fis g
  a( h) cis dis e fis g4 fis8 g e16( fis) g a h8-. h-. h-.
  h16( c) h a g fis g8. fis16 e8 c'16( d) c h a g fis d fis g a c
  h( c) h a g fis e c e fis g h
  \tag #'Part {\break}
  a( h) a g fis e dis h dis e fis a
  g h a g fis e dis cis h a g fis e4 h'8 e d c h4 e,8 a h c
  \tag #'Part {\break}
  fis,4 g8 a d c h e d c4 a8 d4 h8 e4 c8 a4. h
  \tag #'Part {\break}
  e4 g8 h16 e d c h a g8 e16( fis) g a h8-. h-. h-.
  h16( c) h a g fis g8 e h e,4. r
  \bar "|."
}