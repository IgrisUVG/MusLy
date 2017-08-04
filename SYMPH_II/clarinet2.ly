\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetTwoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  R1*5 r2
  <<
    {
      \stemDown <des'' ges>2(<c fis><b es>4<as des><g h>1~ <gis h>2<g b>
      \stemUp <f as>2.<fis a>4<f! as>2 h~ h)
    }
    \\
    {
      s2 s1*4 s2 g4 e~ \stemUp e2
    }
  >>
  r2 R1*4 r2 <c' f>4(<b e><a d>) r2. R1 r2. <b des>4(
  <a cis>)--<g c>--<as h>--
  <<
    {
      c4~ c1
    }
    \\
    {
      g4~( g2 f)
    }
  >>
  R1*2 r8
  <<
    {
      g8( e fis g!4) ges s1*2 s4.
    }
    \\
    {
      d4( es4.) des4^(-\markup {\italic Solo} es8 b des8. c16^~
      \stemUp
      c8) es( b[ des]~ des16 c8.) es8( b des8. a16~ a8 ges~ ges es4)
    }
  >>
  r8 r2 R1 r4 <fes' as>8(<as des><b d><d f><es as>4)
  <ges ces>8(<fes ges><ces fes>[<ges ces>]<fes ges><ces fes><ges ces>)[ q->~]
  q4 r2. <g' c>2 r R1
  r4 <fes as>8(<as des><b d><d f><es as>4)
  <g c>8(<f g><c f>\noBeam<g c>4-><f g>8\noBeam<c f><g c><f g>4) r2. R1*4
  <g' c>1--(<f h><g b>2<as b><a! c>2. b4)<g c>2( a~ a) r4 <f as>4--
  <g b>(<gis h><fis b><e a>)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  r2 r16 d( e f as h d32 f as h
  \override TupletBracket.bracket-visibility = #'if-no-beam
  d8-.) r r4 r16 c,,( es g \times 2/3 {a!16 c es} g32 a h c
  cis8-.) r r4 r16 d,,(
  \tuplet 3/2 8 {
    \set stemLeftBeamCount = #1 e16 f a cis d f
  }
  g32 a d, f g8-.) r r4 r16 d,(
  \times 2/3 {
    \set stemLeftBeamCount = #1 f g b
  }
  \times 8/9 {
    h32 d f g b, h cis d f
  }
  g8-.) r r2.<b,, g'>2(<a ges'><g e'>2.<f d'>4
  <e cis'>2<fis c'>4<g es'>) r <b d><heses es>2<a f'>2. r4
  r2. a''4( as2 a4 g b1) R1 r2<f, b>(<fis d'!>) r R1*2
  \set subdivideBeams = ##f
  r16 <as c>-.<c es>-.<es as>-. r8 <d f>16-.<f as>-.
  <d f>-. r r8 <a d>16-.<d f>-.<f as>-.<a d>-.
  r <g c>-. r8 c,16(<as c> b c)<a d>4(<a cis>) R1*2
  r2<fis' h>16->(<f b><e a><es as><d g><cis fis><c f><h e>
  <b es><a d><as des><g c><ges ces><f b><e a><es as>
  <d g><des ges><c f><h e><b es>4--) R1 r4 es( des d) R1*4
  <d f>2(<f, as><ges ces>2.<g h>4<his dis>2<h es><a d>1) R1*4
  <a' d>4-- q-- q--
  \once\override TextScript.extra-offset = #'(0 . 0)
  q^\markup {\italic sim}<h d> q <b es> q <des f> q q q
  <h e> q <a c> q <b d> q <as c> q <gis cis> q <b d>2 R1*6
  r2 b,16( ces des es f4) R1*2 r2 r8 <des as'>(<ces ges'><b f'>)
  \set subdivideBeams = ##t
  <a d>-. r r32 a'( h cis d e f g a8-.) r r4
  r4 r32 a,( h cis d e f g a8-.) r r4
  r4 r32 h,( cis d e f g a h8-.) r r4 R1*2
  <c, es>16-><c' es>-> r8 r2. R1
  <b, d>4--<c es>--<e a>--<g b>--
  <fis h>-> h,-> cis4.-> dis8->
  e-> cis-> dis[-> eis]-> fis2->
  g-> c,-> des1-> fis,2 r R1*4
  \set subdivideBeams = ##f
  r16 b,( d f ges f d b) a'( f d b
  \set subdivideBeams = ##t
  a32) fis( a cis \times 4/5 {fis32 a cis fis a}
  b16) r <b,, d>8 <a e'>2. R1*2 r2 h'!2~(
  h4 <a, a'><gis gis'><fis fis'><f! f'!>1) R1*2
  \set subdivideBeams = ##f
  \mergeDifferentlyHeadedOn
  <<
    {
      r4 a( gis fis f!1~ f d)
    }
    \\
    {
      \shape #'((0 . 0) (8 . 0) (5 . 0) (13 . 0)) Slur
      d1( cis~ cis) s
    }
  >>
  R1*7 des''4( c8.) f16-. des4->( es)
  des,16( b des ges, b ges b es, c' a c f, c' a c f,)
  R1*5
  c''4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d cis2)
  R1*2 r2 <fis dis'>8(<e cis'><dis h'>4)<des b'!>-- r2.
  R1*23 g,8( b g c es f es f es2) r R1 r8 es,( f g as b c d es as,2) r4.
  r8 g,( as b c d es f g) r r2. es1_( as fes2 fis~ fis4 g2.) b'1~( b2 h
  c8)\noBeam fis,( g a h)\noBeam es,( f g
  as b c)\noBeam es,,( f g a h c)\noBeam es-> r2. R1*2
  des4( c8.) es16 des4( c8.) es16 f4( es8.) as16 as4->( ges)
  R1*10
  R1 d,8-. r c-. r16 e-. d8-. r c-. r16 e-.
  f8-. r es-. r16 f-. d4-. r R1 <d' f>1\fermata
  \bar "||"
  R1*5 <d,! e!>2 r R1*5
  \bar "||"
  R1*4 r2. <eis' ais cis>4(<fis h dis>2<as c! es>4<b des f>
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  <g c e!>2.)<ges b es>
  \repeat unfold 3 {f,4 r2}
  h,!4 r2 c4 r2 h4 r2 es4 r2 es4 r2 d4 r2 es4 r2 g4 r2
  g4 r2 a4 r2 f4 \tuplet 3/2 4 {a'8( b a g a g}
  f4) r des( c2. b a) g4-. r b-. fis-. r c'-. b-. r d-.
  c-. r b-. a-. r c-. g-. r b-. h!-. r g-. fis b'-> b-> b2.
  R2.*4 r2 a,4( d cis fis eis2.) R2.*16
  \cadenzaOn
  <fis a>2.~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1*8
  <<
    {
      \override Slur.positions = #'(1 . 1)
      r4. es8(~ es2 d!1~ d)
    }
    \\
    {
      r2 des( s1 s)
    }
  >>
  R1 r4 <fis d'>2.
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
  g1~ g~ g2 r <f, c'>1 <gis h!>4-. r2.
  R1*4 <eis ais>2( <cis' fis> <fis, h>1)
  R1 \bar "||"
  R1*11
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  r4^\markup {\italic Solo}
  r16 cis d' r r32 as'-. a,!-. r g'!16( dis' f8) a,16( b)
  d32[-. r fis-. gis,-. g,!-. des''-. r c,]-.
  r des'-. r16 d32-. as-. a,-. r g'
  [ dis r h'( b) c,-. ges( e']
  f-.) fis,-. e'!-. b'( c h) r16 r g!16.( dis32) r16
  r a-- d'!32-. cis,-. r16 dis'32-. g,,!-. r h'-.
  c,!4(~-- \times 4/5 {c32 b e, ges' f)} h,16-- r r16. cis32-.
  d-.[ as-. r a'-. g!-. dis'-. h,( b])-. r4 e,(
  dis) g( fis) r8 b
  R1*10
  \bar "|."
}
