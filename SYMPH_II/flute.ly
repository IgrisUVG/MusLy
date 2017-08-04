\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

fluteMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  R1*8 <gis'' h>2(<b e><as f'>2.<fis dis'>4<f! d'!>2<g es'>4<gis h>~ q2) r2
  R1*3
  \override Slur.positions = #'(1 . 1)
  \shape #'((0 . 0) (1 . 0) (1.5 . 0.5) (0 . 0)) Slur
  \override TextScript.extra-offset = #'(-3 . -1)
  b2(^\markup {\italic Solo} b~ b8 as ges as a4 e' g,2.) f4( e f g2
  gis) r4 <b f'>(<a fis'>)--<b e>--<h d>--
  <<
    {
      c4--~ c1
    }
    \\
    {
      b4~( b2 a)
    }
  >>
  R1*7
  r4 <des, fes>8(<fes as><f b><b d!><b es>4)
  <fes' ges>8(<ces fes><ges ces>[<fes ges>]<ces fes>[<ges ces>]<fes ges>) q->~
  q4 r2. R1*2
  r4 <des' fes>8(<fes as><f b><b d!><b es>4)
  <f' g>8(<c f><g c>\noBeam<f g>4-><c f>8\noBeam<g c><f g><c f>4) r r2
  <<
    {
      c''4( h)
    }
    \\
    {
      g2--
    }
  >>
  r2 <g b>-- r r r4 <f as>(<a,! cis>)-- r <c e>--<h f'>--
  <c g'>1--(<<{g'1}\\{cis,2 d}>><es g><f as><f a!>2.<f b>4)
  <e g>2(<cis e>~ q) r4 <f as>--<e g>(<d fis><cis e><b d>)
  r2 r4 r8 d32( f as h d8)-. r r4 r
  \times 2/3 {
    r8
    %\set stemRightBeamCount = #0 es,16[](
    es,16\noBeam(
  }
  g32 a h c cis8)-. r r4 r
  %\once\override TupletBracket.X-positions = #'(0 . 2)
  \times 2/3 {
    r8 f,16\noBeam(
  }
  g32 a <d, d'><f f'><g g'>8)-. r r4 r
  \times 8/9 {
    r16. g32( <b, b'><h h'><cis cis'><d d'><f f'>
  }
  <g g'>8)-. r r4 r2
  <g b>2(<a,es'><c e!>2.<c f>4<cis g'>2<d fis>4<es g>)
  r <e! gis>(<ges heses>2<a, d>2.) r4 r2. <a' c>4(
  <as h>2<a d>4<g c><b es>1) R1 r2 <des, f>(<fis a>) r R1*2
  r16 <es as>-.<as c>-.<c es>-. r8 <as c>16-.<c f>-.
  <a d>-. r r8 <f a>16-.<b d>-.<d f>-.<f a>-. r <e g>-. r8 r2. R1*5
  r4 <es, b'>(<des ges><g, d'>) R1 <ges' b>2.(<b des>4)
  <h! es>8(<g! h><es g><h es><b d>4--) r <as c>-- r <ges b>-- r R1*4
  r4 <f' b> r2 r4 <b c> r2 r4 <h! dis> r2 r4 <b e> r2
  <d fis>4-- q-- q--
  \override TextScript.extra-offset = #'(0 . 0)
  q^\markup {\italic sim} <d g> q <es g> q <f as> q q q <e gis> q <c g'><c f>
  <d f> q <c f> q <cis e> q <d g>2-> R1*7 r4 <es, fes as>(<eses ges heses>) r
  R1 r2 r8 <des ges>(<ces f><b es>)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  <a d>-. r r32 a'( h cis d e f g a8-.) r r4
  r4 r32 a,( h cis d e f g a8-.) r r4
  r4 r32 h,( cis d e f g a h8-.) r r4 R1
  r2 r4 d,,32( es  f ges a h c d es8-.) r r2. R1
  <d, f>4--<es b'>--<a d>--<b f'>--<h! fis'>-- h-> cis4.-> dis8->
  e-> cis-> dis->[ eis->] fis2-> g-> c,!-> des1-> fis,2 r R1*4
  \once\override TrillSpanner.extra-offset = #'(0 . -3)
  r16 f,( b f' \afterGrace b4\startTrillSpan {a16[ b]\stopTrillSpan}
  ges'32 f es d c b a g fis8) r
  \set subdivideBeams = ##f
  <d' g>16(<a d><d, g><a d>)<a cis>2. R1 R1*2
  r2 <a' fisis'>(<gis gis'><g g'>) R1*4 cis1( d) R1*2 as4( ges f2) R1*8
  r2 d4( e a g) r2 R1*3 r2 cis, e'4( d cis2) R1 r2 <dis fis>8(<cis e><h dis>4)
  <b des>-- r2. R1*4 f4( es des ces b2) r es1 R1*4
  r4 r16. c'32\noBeam c8 des4~ des8.. r32
  R1*9 <f, as>4(<es ges> b2) R1 r8
  \once \override Slur.eccentricity = #2
  <es g>(<f as><g b><as c><b d><c es><d f><es g>-><g, b>4.) r2 R1*2 r2 r8
  \once \override Slur.eccentricity = #1
  <as, c>(<b d><c es><d f><g, b>2) r4. R1
  r8 <es g>\noBeam(<f as><g b><as c><b d><c es><d f>
  <es g>)<as, c>\noBeam(<b d><c es><d f><es g><f as><g b>
  <as c>)<des, f>(<des ges><f as><fis a><h, d>4) q8(
  <cis e><d fis><d g>)<g, c>4 q8( <h d><c es>
  <d f><es g><f as><g b><as c>)<d, f>(<es g><f as>
  <g b><as c><b d><c es><d f>)<g, h>(<g c><h d>
  c)\noBeam<g h><fis a><es g><d fis>\noBeam<c es>(<b d><as c><g b><f as><es g>) r r2
  es'8\noBeam g-> r2. R1*3 r2 r8 d( es4->) R1 r2 r8 g( as4)-> R1
  \repeat unfold 3 {<es' ges>2. r4}<es f>2. r4 <es g>2. r4 <es ges>2. r4 <des f> r2.
  R1*4 <f b>1\fermata
  \bar "||"
  R1*11
  \bar "||"
  <<
    {
      h!1~ h~ h~ h~ h b~ b2.~ b s4
    }
    \\
    {
      s1*4 s2.
      \override Stem.length = 7
     %{ \shape #'(
                 ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                 ((0 . 2) (1 . 8) (2 . 8) (1 . 1))
                 ) Slur %}
      %\shape #'((0 . 0) (1 . 12) (2 . 12) (1 . 0)) Slur
      \shape #'((0 . 1.5) (1 . 8) (2 . 8) (1 . 1.5)) Slur
      eis,4_( fis2 des g2.) ges s4
    }
    \\
    {
      s1*5 s2 as4 b
      \bar "."
      \revert Staff.TimeSignature.stencil
      \time 3/4
      \voiceTwo
      s2. r2 \stemDown
      \once\override Stem.length = 9
      f4^( d^.)
    }
  >>
  r2 c4-. r2 b4-. r4 h~( h c) d-. es-. r2
  r g,4 b2.( a4)-. r g( f)-. r2 r
  \shape #'((0.5 . -0.2) (0.5 . -0.4) (0.3 . -0.3) (0 . -0.2)) Slur
  fis4\(( g) f'!2~
  f es4\) d2.( c2) a4( b2. a ges f)<b, g'>(<c fis><b f'><c es> d
  <es, es'><d d'><es es'>4) es''-> es-> f2. R2.*23
  \cadenzaOn
  <a cis>2.~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1 es1~ es~ es R1*4 r4 as2.( fis1~ fis) R1 r4
  \ottava #1
  \set Staff.ottavation = #"8"
  <a d>2.
  \ottava #0
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
  <f, f'>2.<es es'>4~ q1 <g g'>2 <f f'>~ q1
  <b b'>~ q R1*4 <cis fis>1
  R1 \bar "||"
  R1*9
  r2.^\markup {\italic Solo} dis,4\startTrillSpan R1\stopTrillSpan
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  \revert Slur.positions
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  \times 4/5 {r32\set stemLeftBeamCount = #3 a'( as d, cis} e16. b32)
  r16. e'32-.\set stemLeftBeamCount = #1 h,-. g''-. dis,( cis)
  r16 d'!32 r r8 r32 h,( b'\set stemRightBeamCount = #1 c) ges,16 r
  e'32( f) r16 r32 e'-. r16 fis32-.[ gis,-.
  \set stemRightBeamCount = #1 d'-. r r \set stemLeftBeamCount = #1 gis16( d32)]
  r32 cis-.[ dis,-. g-. r \set stemLeftBeamCount = #1 h c,] r
  b16( e!32 ges~ ges) e16( f32-.)
  r16. gis32~ \set stemLeftBeamCount = #1 gis g'!-. des,( c)
  r16. es'32-.[
  \set stemRightBeamCount = #1 \set stemLeftBeamCount = #1 r
  \set stemLeftBeamCount = #1 b16( ges32)]
  e[( f) \set stemRightBeamCount = #1 \set stemLeftBeamCount = #1 r c'-.] r8 r4
  f16-- r32 g,!-.[
  \set stemRightBeamCount = #1 \set stemLeftBeamCount = #1 r
  dis cis' d,-.] r8 r16 gis'32( a)-. r16 c-- ges,8-- ges4(
  g!) a( b) r8
  \ottava #1
  \set Staff.ottavation = #"8"
  c'
  \ottava #0
  r gis,,( c!4) r16 a( b8) es,4
  R1*9
  \bar "|."
}
