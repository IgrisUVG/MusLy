\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniOneMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature.stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \override MultiMeasureRest.expand-limit = #2
  \set baseMoment = #(ly:make-moment 1 8)
  h'2_( e, f2. fis4 as2 g4 gis~ gis)\breathe
  a_( b2 dis,2.) r4 R1*3
  <f' ais! h>1~ q~ q~ q R1*7
  e4~( e16 dis e fis gis h cis e f4 fis--) r <g,, b g'>2~(
  q <a a'>) r2. <b des>4~ q8 r <des f>4~ q8 r <c e a>4~
  q8 r <e e'>4(<g g'>)<b b'>-- R1*4
  <<
    {
      r4 fes,8( as b d es4) ges1->~ ges4 r2.
    }
    \\
    {
      r4 as8( fes d b as[ es] ces1~ ces4) r2.
    }
  >>
  R1*2
  <<
    {
      r4 fes8( as b d es4) g1->~ g4 r2.
    }
    \\
    {
      r4 as8( fes d b as[ es] c1~ c4) r2.
    }
  >>
  R1*4
  <<
    {
      \once\override Slur.positions = #'(1 . 1)
      \set baseMoment = #(ly:make-moment 1 8)
      c'1( cis2 d es f8 es16 d b8 c~ c d f\noBeam d4 c8 es4
      e!2~ e8) d16( cis d4) e2( f) g a
    }
    \\
    {
      \once\override Slur.positions = #'(1 . -3)
      a,1( h b2 as g4 a! b4. as8 g2 a~ a) r4 as--
      g( fis e2)
    }
  >>
  r2 \times 2/3 {r4 <f' as d>-><d f h>->}
  <g b d>-^ r \times 2/3 {r <g a es'>-><es g c>->}
  <g b es>-^ r \times 2/3 {r <f a e'>-><d f a>->}
  <fis a e'>-^ r \times 2/3 {r <g h! f'!>-><f b d>->}
  <g c f>8-^\noBeam ais,( h ges'4.) r4 R1
  r4. h,8(\( c2) cis( b,)\) b'( es,4 fes f!2.) r4
  r2 <a c f a>(<as h f' as><fis a d fis>4<f g c f>
  <es ges b es>1) es'4->( as,->) r2 g-- r r f--( a cis f1)
  <c es as>4<f as c>
  <<
    {
      es'32[( des c16]) c32( b a16)
      g32[( f e16]) a32( g f16)
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      <es g>16(<f a><d f><e g><h d>8)<a c>16<h d>
    }
  >>
  <f g c><g a d><g c e><as h f'> r4 <e' a>2
  r8 <c es g> r <e fis> r <c e> r <h d>
  r <e g> r <des ges> r <d fis> r <dis fis>
  <es g> r4. <h, dis>2-> R1 <fis' h>2(<g b><g es'>) r
  <fis h>(<g b><ges des'>) r R1*6
  <b f' b des>4--
  \override TextScript.extra-offset = #'(1 . 0)
  q--^\markup {\italic sim} q q
  <b f' b c> q <a es' a c> q <fis dis' fis h!> q q q
  <e e' b'><e e' g b><fis d' fis a>-><d' a' d fis>
  q q <fis a d a'>2(
  <h, d g d'>4<e, g c g'><d' f! b f'!><f as des as'>~
  q2)<dis fis h! fis'>(
  <gis, h e h'>4<cis, e a e'><h' d g d'><d f b f'>~
  q)<g, b es b'>(<c, es as es'><ais' cis fis cis'>~
  q)<dis, fis h fis'>(<gis, h e h'><fis' a d a'>~
  q)<d a' d fis>--<d g b g'>-- q--
  <d a' d fis>-- q-- <d g b g'>-- q--
  <e gis h e>-- e( fis g) r2. <fis a>4(
  <g b><b es><es g><g b><as ces>1)
  <<
    {
      <f,as>8(<ges b>
      \stemDown
      <as ces>[<b des>]
      \stemUp
      es fes
      \stemDown
      <des f>4<b des ges>)
    }
    \\
    {
      s2 ces4 s s
    }
  >>
  as16(\( b ces des <heses eses>4)<c es>
  des\) ges8( as ges f es4)
  <b des>16(<ges ces><f as><es ges><as es'>4<b as'>2
  <a! a'!>8)-. r4. r8 <es a>(<e g> fis
  f!) r4. r8 <es a>(<e g> fis
  f!16)-.
  <<
    {
      \stemDown
      a([ d f]
      \stemUp
      a g f e
      \stemDown
      <c es>4.)
      \stemUp
      s8
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      g'32 eses des c des eses des c
    }
    \\
    {
      s8. f8 d16 a s4. <cis fis>8^>^(<des g>^.) r
    }
  >>
  \stemNeutral
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \shape #'((-15 . 4.5) (0 . 5) (0 . 0) (0 . 0)) Slur
  des32( eses des c des eses des c
  des eses a, b ces c des eses es fes f ges g as a b
  ces b a as g ges f fes es d des c\times 4/5 {h32 b a as g}
  ges)
  %%%%%%%%%
  _( ases ges f \repeat unfold 5 {ges ases ges f}
  ges ases as a b ces c des eses des c ces b a as g
  \repeat unfold 6 {gis a gis fisis}
  \repeat unfold 4 {a b a gis}
  \set subdivideBeams = ##f
  b16) f d' f b f d b e, a d fis d' g, es b
  fis h! dis gis dis' h fis cis gis dis' fis h e h fis cis
  a cis fis h h, eis gis cis dis gis, eis cis gis fis cis gis
  b4 <es g!>--<d g d'>--<a' c! g'>--<as des as'>1--->
  <fis a! cis>2 r R1*3 r8 h(\noBeam dis fisis as g f8. e!16
  f2) r4 cis( d8. dis16 e8 f)
  \times 2/3 {r8[ gis( g]} f8. e16 d8) r4. r2 R1*2
  g,4._( es8 es'4 c8 b as g4 fis4. g4~ g4. es8 es'4 c8 b as g4 fis4. g4)
  g( fis8 g a b c cis~ cis d2. g,8~ g fis8[ g] a[ b] c[ cis]~ cis d1) R1*3
  es,4( d8.) f16 g4( as8.) b16 c4( es8) r r2 c4( es8.) c16 b4( c)
  f,16 des f b, f' c f as, f' des f b, f' c f as, R1 f''4( es2 b4
  b) \repeat unfold 4 {r16 f f f} r g g g \repeat unfold 3 {r f f f}
  r e e e r f f f \repeat unfold 3 {r e e e} r g g g r f f f
  r d d d r e e e r f f f r e e e
  c'4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d e2:32)
  a2:32( cis2:32) R1 r2 <dis fis>8(<cis e><h dis>4)<b des>-- r2. R1 r2 b4( c)
  r des,( f as b2 as4 ges) f( es des ces b2) as'8( ges f4) es1 R1*2
  \set subdivideBeams = ##t
  a,!1 R1*4 r2. r8.. c,32 c16.( g'32) g16.( as32) as8.. r32 r2
  \set subdivideBeams = ##f
  R1*3 des4( c8.) es16 des4( c8.) es16 f4( es8.) f16 des4.( es16) f
  as4( ges) b,2 R1 r8 g( as b c d es f) g->( b,4.) r2 R1
  g1:32( g1:32 f1:32 f2:32 d2:32 b8)\noBeam<es g>(<f as><g b><as c><b d><c es><d f>
  <es g>)\noBeam<as, c>(<b d><c es><d f><es g><f as><g b>
  <as ces>)\noBeam<des, fes>(<des ges><fes as><fis a><h, d>4) q8(
  <cis e><d fis><d g><g, c>4) q8( <h d><c es>
  <d f><es g><f as><g b><as c>)\noBeam<d, f>(<es g><f as>
  <g b><as c><b d><c es><d f>)\noBeam<g, h>(<g c><h d>
  <c es>)\noBeam a( h c d)\noBeam g,( as b
  c d es)\noBeam g,,( a! h! c d es)\noBeam g-> r2. r r16 c,( es f
  \tuplet 3/2 4 {as8 g f c' b as} es'2)\fermata
  des,4( c8.) es16 des4( c8.) es16 f4( es8.) as16 as4->( ges)
  ges( f8.) as16 ges4( f8.) as16 b4(( as8.) des16 des4( ces)
  g,4 h c d \repeat unfold 6 {es2. r4}
  f16--<c' es>->(<b des><as c><g b><f as><es g><des f>
  <c es><b des><as c><g b><f as><es g><des f><c es>
  d4) f8( e) c( b) b'16( ges des b) a!1~ a gis'4.( fis8 f2) R1
  \bar "||"
  R1*8
  \cueClef "alto"
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \override Glissando.style = #'zigzag
  \once\override TextScript.extra-offset = #'(-5 . 0)
  <fis g>2^"Viole"\glissando
  \override NoteColumn.glissando-skip = ##t
  s
  \hide Staff.Stem
  \override ParenthesesItem.padding = #0.2
  \override ParenthesesItem.font-size = #8
  \teeny
  \parenthesize c4 s2
  \revert NoteColumn.glissando-skip
  \parenthesize e,4~
  \once\override Script.extra-offset = #'(0 . -3)
  \parenthesize e1\fermata
  \undo \hide Staff.Stem
  \normalsize
  \unset Score.proportionalNotationDuration
  \cueClefUnset
  \bar "||"
  R1*4 r2. eis''4( fis2 as4 b
  \bar "."
  \revert Staff.TimeSignature.stencil
  %\override Staff.TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self
  %\override Staff.TimeSignature.self-alignment-X = #CENTER
  %\override Staff.TimeSignature.extra-offset = #'(0 . 4)
  %\override Staff.TimeSignature.after-line-breaking = #shift-right-at-line-begin
  \time 3/4
  %\override Score.RehearsalMark.extra-offset = #'(0 . -4.2)
  %\mark\markup {\center-column {3 4}}
  c2.) des
  \override TextScript.extra-offset = #'(-.5 . .3)
  f,4^\markup {\italic "pizz. sempre"} r2
  f4 r2 f4 r2 f4 r2 g4 r2 d4 r2 es4 r2 c4 r2 d4 r2
  f4 r2 d4 r2 e4 r2 f4 r2 es4 r2
  b16( f b des c des f b e, f b des
  c) a,( c f h, c f a e f a c
  des) b,( des ges c, des ges b f ges b des
  c) c,( es a d, es a c gis a c es d)\noBeam
  \override TextScript.extra-offset = #'(-.5 . -3.5)
  \ottava #1
  \set Staff.ottavation = #"8"
  es(^\markup {\italic Solo} d c b a g fis g a b c
  d e! fis g b a d g, fis a es d a b cis d f es d g f g a h
  d c b es h c d es  g, es' d c c b a g fis g a b c d e fis
  g c, d es d g, a b a es f g f a, b c d h c d es f g as
  b4)
  \ottava #0
  c,,-> c-> d r2 R2.*16
  \once\override Slur.positions = #'(1 . 1)
  g,8( e' d g d' a d g, a g d e as es f es as, b
  c g' d a c d e f g a b c d2.) f2.->
  \cadenzaOn
  fis2.~ fis~ fis~ fis~ fis~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  fis1~ fis~ fis~ fis( ges)~ ges~ ges( a)~
  a4 r8 as,,8( b ges'4.) ces2 es fis r R1
  d4( es) dis( e) e( a2.)
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
  f,2. es4~ es1 g2 f~ f1 R1*5
  <eis, ais>2( <cis' fis> <e, h'>1)
  R1 \bar "||"
  R1*7
  \unset baseMoment
  <es ges>4<des f>8.<f as>16<es ges>4<des f>8.<f as>16
  <ges b>4<fes as>8.<ges b>16<es ges>4.<e g>16<fis a>
  <g b>4<f! a>8.<a c>16<b d>4<c es>8.<d f>16
  <es g>4<g b>8 r r2
  <b, des>4<as c>8.<c es>16<b des>4<as c>8.<c es>16
  <des f>4<ces es>8.<des f>16<b des>4. des,16 es
  fes4 es8. ges16 fes4 es8. ges16
  as4 ges8. as16 fes4. f16 g
  as4 g8. b16 c4 des8. es16 f4 as8 r r2
  es,4 d8. f16 es4 d8. f16 g4 f8. g16 es2
  <h! c>1~ <h c>~ q~ q~ q~ q~ q2 r
  \bar "|."
}
