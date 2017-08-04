\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "changePitch.ly"

trumpetTwoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*12
  a'16.-. a32 a8~ a4~ a8 b16-> c-> d-><a c>(<gis d'><g es'>)
  <gis dis'>2(<a f'~><as f'><g es'>)\breathe R1*4
  r2. <b f'>4--(<fis cis'>)<g e'>--<f d'>--<g c>--~ q2 r r r8 f( g4)
  r8 g( f4) r8 f( e4) r8 h'( a4 c8) r4. R1*3 d,8( es-> b'2)
  \set doubleSlurs = ##t
  <es, ces'>4(<f c'!><fes des'><f d'><es es'><fes fes'>1)~ q4 r2. R1
  r2. <es ces'>4(<f c'!><fes des'><f d'><es es'><f f'>1)~ q4 r2.
  \set doubleSlurs = ##f
  R1*11 <f b>2->(<as h>->)<g b>->(<a c>->)<g b>->(<f a>->)<g a>->(<g b>->)
  <g c>-> r R1*6 r8 <f as><as h>4<a d><c f><ges b>1 r2 a,-> b-- r r b--( c cis des1)
  r8 <es as>(<c f>4<des g>8)<d f>(<f a>4<e g>8)<f a>(<es as>4)<f a>(<fis a>)
  <g b>-- gis--<e a>--<f as>--
  <g c>8-. r r16 <ges b des>-> r8 <fis a d>16->[ r8 <fis h dis>16->] r8 q16-> r
  <g c es>-> r8. r2. r <es g>4--(<d fis>2) r R1*14 a'4( d,) r2 R1*4
  d4-- r r e( d) r r e~ e r2. R1*4 r2. des4 R1*2
  r16. d32 f16.-> a32 d16->( a f d c4) cis--
  r16. d32 f16.-> a32 d16->( a f d c4) cis--
  d16-. r8. a'4-> <a c>16-> q-> q8-> r4 R1 r2 r8 c-- r4 R1*2
  d,4-- es-- a-- b-- h h cis4. dis8 e cis dis[ eis] <ais, cis>2
  g' c, des1-> fis,2 r R1*4 r4. <g b>8 r4 <fis a>8 r
  g( d') r16 cis8. h2 R1*2 r2 d, g1( as2 d,!) R1*2
  r2 <a' fisis'>(<gis gis'><g g'>) R1*6 r4 r8. c,16( fis,2)
  r2. a'4 b( as8.) c16-. b4->( as8.) c16-.
  des4( c8.) f16-. des4( es) des2( c4 b b) r2. R1*4
  a4( g8.) h16 a4( g8.) h16 c4( h8.) e16 c4( d c d cis2)
  R1*4 f,4( as8.) f16 es2 f4( ges8.) as16 b4( c) des r2. R1*6
  <a, c es>1 R1*7
  f'4( es8.) g16 f4( es8.) g16 as4( ges8.) as16 f4.( g16) as
  b4( as8.) c16 b4( as8.) c16 des4( ces8.) des16 b4.( c16) des
  f4( es) f,2 R1 r4 g,8( c es f es f es2) r R1*3
  r2 r8 g( as b c f,2) f8( f f es2) r R1*6
  r4. <g, es'>8(<a f'><h g'><c a'><d h'>
  <es c'>)\noBeam<g es'>-> r2. es4 es8. es16 es2->~ es1\fermata
  b'4( as8.) c16 b4( as8.) c16 des4( c8.) f16 f4(-> es)
  es( des8.) f16 es4( des8.) f16 ges4( f8.) b16 b4->( as)
  r h, c d
  \changePitch {c8 c16 c16 c8 c8 c4 c4}{
    <b es> q q q q q r <ces es> q q q q q r <c! es><c es> q q q q r
    <ces es> q q q q q r <b es> q q q q q r <c es> q q q q q r
  }
  <des f>4 r2. r8 d,-> e!4-> c'8-> es-> ges4-> a1~ a b, R1
  \bar "||"
  R1*11
  \bar "||"
  R1*5 r2 c,4( des
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  c2.) des
  R2.*14 des'2.( es des c b4) r2 R2.*6 r4 fis-> fis-> f!2.
  R2.*21 <b d>2.<a c>
  \cadenzaOn
  <a cis>~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1*7 r2. des,4 ces2 es R1*4
   R1*8
  \bar "||"
  \cadenzaOn
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1. r4.
  \cadenzaOff
  \bar "||"
  \time 4/2
  R1*10
  \bar "||"
  \time 4/4
  R1*6
  \stemDown
  s2 b'8( a g4~ g1)
  \stemNeutral
  b2 b~ b a! gis4-. r2.
  R1*5 fis1
  R1 \bar "||"
  %\override TextScript.extra-offset = #'(-3 . -1)
  r2^\markup {\italic Solo} h,4 a8. h16 cis2 h
  ais r8 d( cis[ h]) ais4 h8.[ cis16] d4 fis8. d16
  cis2. r4 d e8.[ cis16] h4 ais h2. r4 R1*3
  r4 r16
  \override Glissando.minimum-length = #4
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \afterGrace g'8\glissando {
  \stemDown \hideNotes
  d16 }
  \unHideNotes
  r r2
  r2. r16. b'32 \set stemLeftBeamCount = #1 e,16( f)
  r8 r32 h a( b) e,!( f) cis( d) c-. fis( gis) r r4 r8 r32 cis cis r
  r2. \times 2/3 {h'32 h h} r8.
  r8 r32 h, a( b) e,!( f) cis( d) c-. fis( gis) r r4 r8 r32 cis cis r
  r4 r8.. d32 r es cis16 r8 r <dis e>
  R1*10
  \bar "|."
}
