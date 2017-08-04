\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%\include "noteHeads.ly"

vleMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \clef alto
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \override MultiMeasureRest.expand-limit = #2
  e'2_(b as2. a4 b2 h~ h4)\breathe
  a( g2 fis2.) r4 R1*3
  <<
    {
      \stemDown
      \override Slur.positions = #'(1 . 1)
      <e' gis>2(<b e><as des>2.<a cis>4<b d!>2
      \stemUp
      es4 e~ e2)
    }
    \\
    {
      s1*2 s2 h~ h
    }
  >>
  \set baseMoment = #(ly:make-moment 1 8)
  %\set subdivideBeams = ##t
  r2 R1*7 r2 <e g>4(<b d><cis fis>--) r2. r2 <a c>
  r2. r8 <b des>~
  q4 r8 des~ des4 r8 <c e>~ q[ <d g>](<e a><fis h>
  <g c>4)<ges des'>
  R1*4 r2 f!8[( d!] b as ges1~ ges4) r2.
  R1*2 r2 f'!8[( d!] b as g!1~ g4) r2. R1*4
  <a c>1 h( b~ b4 a g f g2) a~ a r4 as-- b( h <b d>2)
  r2 \times 2/3 {r4 <h d>-><as h>->}
  <g d'>-^ r \times 2/3 {r <es' a>-><c g'>->}
  <b b'>-^ r \times 2/3 {r <e f>-><a, d>->}
  <a h>-^ r \times 2/3 {r <d g>-><b f'>->}
  <g g'>8-^\noBeam<f ais>(<g h><ges b>4.) r4 R1*5
  r2 <c f>(<h f'><a d>4<g c><ges b>1) c4->( as->) r2
  <g b> r r <f b>--(<a c><cis eis><f b>1)
  r8 <as, c es> r <as c f> r <a d f> r <h d f>
  r <c e g><c es as>4(<d f a>)<cis fis a>
  r8 <c g' b> r <d gis h> r <e a> r <f as>
  r <g c> r <ges b> r <fis a> r <fis h>
  <g c> r4. gis,2-> R1 <h d>2(<b es><es g>) r
  <h d>(<b es><b des>) r R1*10 a'4( d,)<a d>-- q--
  <h d>--
  \override TextScript.extra-offset = #'(2 . -1)
  q--^\markup {\italic sim} <b es> q <as f'> q <a fis'> q
  <h gis'> q <c a'> q <d b'> q <c c'> q <cis cis'> q <d d'> q
  q-> r  r <g, b>(<fis a>) r r <e ais>(<e h'>) e'( dis d) R1
  r4 f(<es g> q <es as>1) as,8_(<ges b><as ces>[<b des>] ces4)
  <f,! as>(<ges b>)<fes as>(<eses ges>)<es ges>(
  <f as>)<es ges>(<des f>) es~
  es-- fes b16( as ges f as ges f es
  d8)-. r4. r8 c'(\noBeam cis) cis(
  a)-. r4. r8 c(\noBeam cis) cis(
  a16)-. r8. a8( b16 cis <c es>4<cis fis>
  <b f'!>8)-. r4. r2 R1*8 r2 a b b h! cis d f4( e)
  dis2( g,4 ges) f2 r4 <a d>4(<b d>) r2. R1 r2. gis'4(
  fis e dis cis h!2 b as8 g4 fis4. g4~ g4. es8 es'4 c8 b as g4 fis4. g4)
  g( fis8 g a b c cis~ cis d2.  g,8~ g fis8[ g] a[ b] c[ cis]~ cis d1)
  des4( c8.) es16 des4( c8.) es16 f4( es8.) as16 f2 R1
  es4( d8.) f16 g4( as8.) b16 c4( es8) r r2 c4( es8.) c16 b4( a)
  b r f16 des f b, f' c f as, f' des as f c' as c es, des' as des f, c' as c es,
  des' b des ges, b ges b es, c' a c f, c' a c f, b4 r2. R1*3 r2 e'4( d)
  <c, e>4:16<h e>4:16<c e>4:16<h e>4:16
  <c e>4:16<h f'>4:16<c e>4:16<h d>4:16
  <a c>4:16<a d>4:16<cis e>2:16 cis'4:32( h4:32 ais2:32)
  h,4( ais8.) cis16 h4( ais8.) cis16 dis4( cis8.) fis16 dis2
  des4( c8.) es16 des4( c8.) es16 f4( as8.) f16 es2 f4( ges8.) as16 b4( c)
  r4 \repeat unfold 5 {des,} d es  d es f f g g as a \repeat unfold 12 {b}
  ges1 R1 r2. r8.. f,32
  \set subdivideBeams = ##t
  f16.( c'32) c16.( des32) des16.( f32) f16.( c'32) c16.( des32) des8 g,4~
  g8.. r32 r2. R1*5 f4( es des \times 2/3 {c8 des es}
  as,4) ges'( f as b c) b2 R1 g,8 b( c es g f es f es2) r R1
  \stemUp b1:32_( c1:32 b1:32 as1:32)\stemNeutral
  r8 g( as b c d es f g)\noBeam c,( d es f g as b
  ces)\noBeam fes,( ges as a d,4) d8(
  e fis g c,4) c8( d es f g as b c)\noBeam f,( g as b
  c d es f)\noBeam h,( c d
  es)\noBeam a,( h c d)\noBeam g,( as b
  c d es)\noBeam g,,( a! h! c d es)\noBeam g-> r2. R1*2
  \repeat unfold 3 {des4:16 c4:16} des8:16 d8:16 es4:16
  \repeat unfold 2 {es4:16 des4:16} ges4:16 f4:16 ges8:16 g8:16 as4:16
  g!4 fis e d \repeat unfold 3 {es2. r4} f2. r4 g2. r4 a2. r4
  \set subdivideBeams = ##f
  des16-- es( des c b as g f es des c b as g f es
  b'4) d8( c) as( g) des'16( b ges des) d!1~ d fis4( f! d2) R1
  \bar "||"
  R1*8
  %\cueClef "alto"
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \override Glissando.style = #'zigzag
  <eih' f!>2 \glissando
  \override NoteColumn.glissando-skip = ##t
  s
  \hide Staff.Stem
  \override ParenthesesItem.padding = #0.2
  \override ParenthesesItem.font-size = #8
  \teeny\parenthesize c4 s2
  \revert NoteColumn.glissando-skip
  \parenthesize e,4~
  \once\override Script.extra-offset = #'(0 . -3)
  \parenthesize e1\fermata
  \undo \hide Staff.Stem
  \normalsize
  \unset Score.proportionalNotationDuration
  %\cueClefUnset
  \bar "||"
  R1*4 r2. <ais cis>4(<h dis>2<c es>4<des f>
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  <a! c!>2.)<ges b>
  R2.*13 r4 c( es)
  b'2( es4) es8( eses) eses[( des]) des( c)
  c( ces) ces[( b]) b( a) a4( b2)
  \override TextScript.extra-offset = #'(-.5 . .3)
  b4^\markup {\italic picc.} r2 R2.*6
  r4 fis-> fis-> f! r2 R2.*10 des2.~ des~ des~ des~
  des~ des d!(_~<d g>2.:32<es as>2.:32<d g>2.:32<c a'>2.:32
  <b b'>2.:32<a c'>2.:32)
  \cadenzaOn
  <a fis'>~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1*7 r4. es'8( des ces4 b8) fes2 ges R1*4
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
  <g' b>1~ q <g c>2
  <<
    {
      \stemDown
      es'
      \stemUp
      c1
    }
    \\
    {
      b2~ b a!
    }
  >>
  <gis dis'>4-. r2.
  b,2 c d c es b b1
  ais2( <cis dis fis> h1)
  R1 \bar "||"
  R1*7
  <es, ges>4<des f><es ges><des f>
  <des ges><d as'><es ges>4. r8
  <g b>4<f a><g b><b d><b es>4. r8 r2
  <b des>4<as c><b des><as c><as des><a es'><b des>4. r8
  as4 as as as <as ces><heses c><as des>4. r8
  c4 <c es><des f><es g><f as>4. r8 r2
  g,4. g8 g4. g8 g2( ges)
  as1~ as~ as~ as~ as~ as~ as2 r
  \bar "|."
}
