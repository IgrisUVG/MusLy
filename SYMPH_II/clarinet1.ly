\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetOneMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  \time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  R1*5 r2 b''( a g4 ges e1~ e des2. cis4 d!2 es4 e~ e2) r2 R1*4
  r2 f4( e f) r2. R1 r2. f4( fis)-- g-- fis-- e--~( e2 f) R1*2
  r8 h,\noBeam( a gis c4) des R1*4
  r4 <des fes>8(<fes as><f b><b d!><b es>4)
  <fes' ges>8(<ces fes><ges ces>[<fes ges>]<ces fes>[<ges ces>]<fes ges>) q->~
  q4 r2. f'4( e) r2 R1
  r4 <des fes>8(<fes as><f b><b d!><b es>4)
  <f' g>8(<c f><g c>\noBeam<f g>4-><c f>8\noBeam<g c><f g><c f>4) r r2 R1*4
  e'1--( e es2. d4 es2. d4) e!2( cis~ cis) r4 des-- d!( d d cis)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  r2 r16 d,( e f as h d32 f as h
  \override TupletBracket.bracket-visibility = #'if-no-beam
  d8-.) r r4 r16 c,,( es g \times 2/3 {a!16 c es} g32 a h c
  cis8-.) r r4 r16 d,,(
  \tuplet 3/2 8 {
    \set stemLeftBeamCount = #1 e16 f a cis d f
  }
  g32 a d f g8-.) r r4 r16 d,,(
  \times 2/3 {
    \set stemLeftBeamCount = #1 f g b
  }
  \times 8/9 {
    h32 d f g b h cis d f
  }
  g8-.) r r2. R1*5 r2. c,4( h2 d4 c es1) R1 r2 <des, f>( <fis a>) r R1*2
  \set subdivideBeams = ##f
  r16 <es as>-.<as c>-.<c es>-. r8 <as c>16-.<c f>-.
  <a d>-. r r8 <f a>16-.<b d>-.<d f>-.<f a>-. r <e g>-. r8
  <es, c'>16(<f b><es as><es g>)<d f>4(<cis e>) R1*2
  r2 dis'16->( d cis c h b a gis g fis f e es d cis c h b a gis g4--) R1
  r4 g( ges g) R1*4 a2( d, es2. e4 fis2 f fis1)
  \once\override TextScript.extra-offset = #'(-3 . -3)
  b8(^\markup {\italic Solo} f'4 e16 f ges f des b g8 ges16 g
  f8) d'!4( cis16 d c8 a16 f es8. c16
  fis4~ fis16) h,( dis fis h dis fis h dis4 e8) g,,,4( a32 g f g a2)
  fis''4-- fis-- fis--
  \once\override TextScript.extra-offset = #'(0 . 0)
  fis^\markup {\italic sim} g g g g as as as as gis gis g f f f f f e e g2->
  fis,,4(^\markup {\italic Solo} h8 b g d es e~ e4)
  h'8( b g d es e~ e16) gis( h e gis h e gis h4 c) R1*3
  r2 ges,16( as b ces des4) R1*2 r2 r8 b(\noBeam as ges)
  \set subdivideBeams = ##t
  f-. r r32 a( h cis d e f g a8-.) r r4
  r4 r32 a,( h cis d e f g a8-.) r r4
  r4 r32 h,( cis d e f g a h8-.) r r4 R1
  r2 r4 d,,32( es  f ges a h c d es8-.) r r2. R1
  f4-- b-- d-- f-- fis-> h,-> cis4.-> dis8-> e-> cis-> dis[-> eis]-> fis2->
  g-> c,-> des1-> fis,2 r R1*4
  \set subdivideBeams = ##f
  r16 d,( f b d b f d) es'( b f d
  \set subdivideBeams = ##t
  cis32) fis,( a cis \times 4/5 {fis32 a cis fis a}
  b16) r g,8 a2. R1*3 r2 dis'( e1) R1 r2
  \set subdivideBeams = ##f
  <<
    {
      \stemDown
      h,~(
      \stemUp
      h4 a gis fis f!) g!( as b~ b2 c d1)
    }
    \\
    {
      s2 r4 cis,2.~( cis4 dis e f g as a es d1)
    }
  >>
  R1*2 f4( es d!2) R1*4 f'4( es8.) as16-. f4->( ges)
  des,16( b des ges, b ges b es, c' a c f, c' a c f,)
  \once\override TextScript.extra-offset = #'(-3 . -1)
  b'2.(^\markup {\italic Solo} c4 f es) r2 R1*3
  c4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d cis2)
  R1*2 r2 fis'8( e dis4) des-- r2. R1*2 \repeat unfold 4 {r16 as,( f as)}
  \repeat unfold 6 {r b( ges b)} r des( b des) r d( as d)
  r b( es b) \repeat unfold 3 {r c( es c)} b8 r r2.
  r8. c16( b[ c) r c]( b[ d) r d]( b[ f') r f](
  b,[ g') r g]( b,[ es) r es]( b[ d) r d]( b[ c) r c](
  a!1) R1*3
  \set subdivideBeams = ##t
  r8.. c32 c16.( des32) des16.( g32) g16.( as32) as16.( f32) f16.( c'32) c16.( des32)
  des4~ des8.. r32 r2 R1*8
  g,,8( b c es g f es f es2) r R1 r8 g,( as b c d es f g c,2) r4.
  r8 b,( c d es f g as b) r r2. g1( c as2 a~ a4 es'2.) d'1(~ d
  es8)\noBeam a,( h c d)\noBeam g,( as b
  c d es)\noBeam g,,( a! h! c d es)\noBeam g-> r2. R1*2
  des4( c8.) es16 des4( c8.) es16 f4( es8.) as16 as4->( ges)
  ges( f8.) as16 ges4( f8.) as16 b4( as8.) des16 des4->( ces)
  r4 h!2. b! r4 ces2. r4 c!2. r4 ces2. r4 b2. r4 a2. r4 as4 r2.
  R1 f,8-. r e-. r16 g-. f8-. r e-. r16 g-.
  a8-. r g-. r16 a-. f4-. r R1 <b' d>1\fermata
  \bar "||"
  R1*5 a,!2 r R1*5
  \bar "||"
  h'1~ h~ h~ h~ h b!~
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  b2.~ b d,4 r2 c4 r2 b4 r2 \repeat unfold 4 {g4 r2}
  f4 r2 f4 r2 a4 r2 b4 r2 c4 r2 c4 r2 a4
  \tuplet 3/2 4 {a'8( b a g a g} f4) r des( c2. b a)
  b4-. r d-. a-. r es'-. d-. r f-. es-. r d-. c-. r es-.
  b-. r es-. d-. r h-. b! b'-> b-> b2. R2.*4
  r2 <d, g>4(<e a><fis h><gis cis><ais dis>2.) R2.*9
  a,2.~( a4 e2 f2.~ f4 g2 f2.) r4 gis2->
  fis'8->( c~ c2)
  \cadenzaOn
  <cis' fis>2.~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1 b,~ b~ b R1*4 r4 r16 des'8.(~ des2 h1~ h)
  R1 r4 fis'2.
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
  <b, es>1~ q
  <<
    {
      es c->
    }
    \\
    {
      c2 b b a!
    }
  >>
  <gis dis'>4-. r2. R1*5
  h1
  R1 \bar "||"
  R1*9
  \set subdivideBeams = ##f
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  r2^\markup {\italic Solo} f,16( fis) d'-. b-. r4 r r16
  \override Glissando.minimum-length = #4
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \afterGrace b'8\glissando {
  \stemDown \hideNotes
  e,16 }
  \unHideNotes
  \set subdivideBeams = ##t
  r16 r2 r4 \times 4/5 {r32 \set stemLeftBeamCount = #3 dis,[( g,) h'!-. r}
  b,!32-. r \set stemRightBeamCount = #3 e-.] r ges,[( f') r a-. gis( a)] r16
  f32([ ges e! b') r c h,!( g')]
  r dis'-. cis,-. d'-. gis,16( a) r c32( cis f-.) a,-. h-. b-.
  r16 e,32( es) r16. f''32-. r c,( es) f,-. h16( a32 b~
  b16)[ d32-. fis,-. r gis'-.] r16
  a,32([ g) des'-. r cis( d16) as32-.]
  a'!16[ r32 dis,-. h16( ges'32 e)] r f-. r16 r8
  e16-- r f,32-. r gis'-. c!-. f,!-.[ r h,-. b'-. e16-.] r
  r4 c,4( cis) es( e) r8 h'! fis8.( d16 cis'4) f,8.( h,!16 e!4)
  R1*9
  \bar "|."
}
