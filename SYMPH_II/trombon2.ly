\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "changePitch.ly"

trombonTwoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*12 <fis a>16.-. q32 q8~ q4~ q8 <e as>16-><es g>-><d f>8-><h d>--
  <h dis>2(<a d><c f><es g>)\breathe
  R1*3 r2 <d g>->(<e gis>) r4 <des f>4(
  <cis fis>--)<c e>--<h d>--<c e>--~ q2 r R1*6 r2. as4( a! as b b
  ces1~ ces4) r2. R1 r2. as4( a! as b b c1~ c4) r2. R1*11
  <des f>2->(<d f>->)<g b>->(<a c>->)<b cis>->(<a d>->)
  <h e>->(<b d>->)<g c>-> r R1*5 r2. r8 f->~ f f d[ h] d4 f ges1
  R1 <g, d'>2-- r r <f des'>(<f c'><eis cis'><f des'>1)
  r8 <es' as>(<c f>4<des g>8)<d f>(<f a>4
  <e g>8)<g c>(<es as>4)<d f>(<cis fis>)
  <c! g'>--<h gis'>--<c e>--<d f>--
  <e g>8-. r r16 <des ges>-> r8
  <d fis a>16->[ r8 <dis fis>16->] r8 q16-> r
  <es g>-> r8. r4 h2-> r2. <es, b'>4(<fis h!>2) r R1*19
  <a d>4 r r <b d>(<a d>) r r <ais d>( h) r2. R1*8
  r2 r8 <c es>(\noBeam<cis e>)<cis fis>--
  <d f!>16-. r8. r4 <a c>16-> q-> q8-> r4 R1
  r2. <c ges'>8-- r r a---> r2. R1
  r16 <d f>8 q16 r q8 q16 r <cis e>8 q16 r <es g>8 q16
  <dis fis>4 h cis4. dis8 e cis dis[ eis] <fis ais>2
  g c, des1-><cis fis>2<a d><b d><b es>
  <<
    {
      d e! a, g
    }
    \\
    {
      a4( g) g2 g4( f) f( e)
    }
  >>
  <dis gis>2 r
  r8 <d' f>(<ges b>) r <d f>(<ges b>) r4
  r <e a> \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \override TupletBracket.bracket-visibility = #'if-no-beam
    d16( cis) e( a,) cis( h) cis( f,) h( a) e( b')
  }
  e2-> r R1 r2 b
  <<
    {
      es f
    }
    \\
    {
      b,1
    }
  >>
  es2 r R1 r2 b~( b h f) <fes' as>(<es g>1 d) R1*4 r4 r8. c16( fis,2)
  R1*2 des'4( c b as ges ges' f es f) r2. R1*4
  a4:16 g4:16 a4:16 g4:16 e4:16 f4:16 e4:16 d4:16
  c4:16 d4:16 cis2:16 R1
  gis4( fis8.) ais16 gis4( fis8.) ais16 h4( ais8.) dis16 h2
  b4( as8.) c16 b4( as8.) c16 des4( f8.) des16 c2
  des4( es8.) f16 ges4( as) f r2. R1*16
  r4 es2 f4~ f es2 des4 c~ \times 2/3 {c8 des-> es->} f2-> R1*7
  r8 as( b4.) b8( c d es2) r R1*10 \repeat unfold 2 {b4:16 as4:16}
  f4:16 ges4:16 f4:16 es4:16 \repeat unfold 2 {es4:16 des4:16}
  b'4:16 ces4:16 b4:16 as4:16 <e! g>4<d fis><e g><d fis>
  \repeat unfold 3 {
    \changePitch {c8 c16 c16 c8 c8 c4 c4}{
      <es ges> q q q q q r
    }
  }
  \changePitch {c8 c16 c16 c8 c8 c4 c4}{
    <es f> q q q q q r <es g> q q q q q r <es a> q q q q q r
  }
  <des as'>4 r2. R1*3 b'1 R1
  \bar "||"
  R1*11
  \bar "||"
  R1*6
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  R2.*15 r4 <a a'>2 r4 b2-> r4 <a es'>2->
  r4 <b des>2-> r4 <a c>2-> R2.*7 r4 c-> c-> d2.
  R2.*6 dis,2.~_( dis4 b2 ces2.~ ces4 b2 ces2.~ ces~ ces~ ces
  heses~ heses g a) R2.*3 b'2. d
  \cadenzaOn
  cis~ cis~ cis~ cis~ cis~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  cis2 r R1*3 <b, b'>1~ q~ q( <c a'>~) q4 r2 <des as'>4
  <ces as'>2<b ges'> R1*4
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
  r2 b'4( es,~ es2) es-> es'1-> f-> dis4-. r2.
  R1*5 h,1
  R1 \bar "||"
  R1*10
  r4 r16
  \override Glissando.minimum-length = #4
  \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
  \override Glissando.thickness = #2
  \afterGrace as'8\glissando {
  \stemDown \hideNotes
  e16 }
  \unHideNotes
  r r2
  \repeat unfold 2 {
  	r2.
		\afterGrace fis16\glissando {
		\stemDown \hideNotes
		c16 }
		\unHideNotes
		r8. R1
	}
	\set subdivideBeams = ##f
  r32 g'[ r32 g r32 g r32 g] r32 g[ r32 g] r8 r2
  R1*10
  \bar "|."
}
