\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%{
  \layout {
  \context {
  \Voice
  \consists "Melody_engraver"
  \override Stem.neutral-direction = #'()
  }
  }
%}

\include "noteHeads.ly"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
         #(lambda (m p)
            (let ((mu (ly:music-property m 'element)))
              (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
              (ly:make-music-relative! mu p)
              (ly:music-transpose mu (ly:make-pitch arg 0 0)))
            p)
         \transpose c' $(ly:make-pitch arg 0 0) $mus
         $mus
     >>
   #})

vniTwoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \override MultiMeasureRest.expand-limit = #2
  \set baseMoment = #(ly:make-moment 1 8)
  gis'2( e des2. cis4 d!2 es4 e~ e)\breathe
  f( g2 ais,2.) r4 R1*3
  h'2_( e, f2. fis4 as2 g4 gis~ gis2) r2 R1*7
  <gis h>2(<cis e>4<f b><fis a>--) r2. r2 <f, c' f>
  r2. r8 f( g4) r8 g( as4) r8 as(
  a!) h( cis\noBeam es4.) des4 R1*3
  r2. <as' es'>8(<es ces'>
  <c! a'!><a f'><fes des'>[<des as'>]) r2 R1*3
  r2. <as'' es'>8(<es ces'>
  <c! a'!><a f'><fes des'>[<des as'>]) r2 R1*6
  <<
    {
      \once\override Slur.positions = #'(1 . 1)
      g2( a g1 d'8[ c] b as g2 f4 es f2 e) e8 fis16( e fis4)
      g2
    }
    \\
    {
      \once\override Slur.positions = #'(1 . 1)
      \stemUp e2( f \stemDown f1 g4 f es d~ d c2 b4
      c2) cis~ cis!
    }
  >>
  r4 <des as'>--<d! b'>(<d c'><g cis>2)
  r2 \times 2/3 {r4 <f h>-><d as'>->}
  <g b>-^ r \times 2/3 {r <c es>-><a c>->}
  <cis es>-^ r \times 2/3 {r <a d>-><e f a>->}
  <fis a h>-> r \times 2/3 {r <b d>-><g h>->}
  <c f>8-^\noBeam<es, f g>(<des g><es b'>4.) r4 R1*4
  r2. \makeOctaves #1 {
    c4( f
    %\ottava #1
    %\set Staff.ottavation = #"8"
    f'2.~ f2 fis4 g b1)
    %\ottava #0
  }
  as,4->^( c,->) r2 d-- r r des--( f gis des'1)
  f,8( c' c16 b c8~ c16) a( b c d cis d8)
  f8(\( e16 d) d8( cis) d4\) r
  r16 b( c es gis) h,( e gis c) e,( gis a d) f,( as h
  c8) h16( a as ges f es d fis a d fis e! dis cis
  c! es g, es c g es c h8) r4. R1 d'2( es <b b'>1)
  d2( es <b b'>2) r R1*10 r2 <fis a d>4-- q--
  <g h d>--
  \override TextScript.extra-offset = #'(2 . -1)
  q--^\markup {\italic sim}<g b es> q
  <as des f> q <a cis fis> q < h e gis> q <c f a> q
  <d f b> q <f as c> q <e gis cis> q <g b d> q <fis a d> r2.
  R1*2 cis4_( ges'8 f d[ a] d dis,~ dis4) as'( b <b es>
  <ces es>1) des,4( es8 f ges as as4)
  r16 ges( as b ces des es f ges4) <ges, ges'>(
  <as f'>8<b es>
  <<
    {
      <b des>4<as ces>
    }
    \\
    {
      as8 ges f[ es]
    }
  >>
  <des es ges b>4
  <es ges b>)<des b'>16(<ces as'><b ges'><as fes'><des des'>2
  <d! d'!>8-.) r4. r <a fis' cis'>8(
  <d a' d>-.) r4. r <a fis' cis'>8( <d a' d>16-.) r8.
  \shape #'((0 . 0) (0 . 0) (2 . -2) (5 . 0)) Slur
  d8( e16 f <es a>4<fis a>)
  <<
    {
      <f! b>8-. r
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      f32 ces' b a b ces b a
    }
  >>
  \stemNeutral
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \override TupletBracket #'bracket-visibility = #'if-no-beam
  \shape #'((-16 . -3.5) (0 . -3) (0 . 0) (0 . 0)) Slur
  b32( ces fis, g as a b ces c ces b a as g fis f es fes es d!
  \repeat unfold 13 {es fes es d}
  es fes h, c cis d es e f fis g gis a b h c
  des c h b a as g ges f e es d des c h b
  \repeat unfold 4 {a b a gis}
  \set subdivideBeams = ##f
  b16) b f' b d b f d cis fis h e fis es a, f
  dis fis h e h' fis h, fis dis fis h dis gis e ais, dis,
  cis gis' cis e dis, gis dis' gis ais fis cis ais eis cis gis8
  g!4-- b-- c-- d-- es1---> fis2 r R1*3 r4 <gis h>(
  <<
    {
      b4
    }
    \\
    {
      gis8[ g]
    }
  >>
  <ges es'>4<f d'>2) r4 <fis a>(<f! b>) r2. <f h!>8 r 4. r2 R1*2
  g4._( es8 es'4 c8 b as g4 fis4. g4~ g4. es8 es'4 c8 b as g4 fis4. g4)
  g( fis8 g a b c cis~ cis d2.  g,8~ g fis8[ g] a[ b] c[ cis]~ cis d1) R1*3
  es,4( d8.) f16 g4( as8.) b16 c4( es8) r r2 c4( es8.) c16 b4( c)
  f,16 des f b, f' c f as, f' des f b, f' c f as,
  f'4( es8.) as16-. f4( ges) f4( es2 b4 b) \repeat unfold 3 {r16 d d d}
  \repeat unfold 3 {r es es es} \repeat unfold 2 {r d d d} r cis cis cis
  \repeat unfold 2 {r d d d} \repeat unfold 2 {r cis cis cis}
  r e e e r d d d r h h h r c! c c r d d d r h h h
  c'4( h8.) d16 c4( h8.) d16 e4( d8.) g16 e4( f e d e2:32)
  a2:32( fis2:32) R1 r2 fis8( e dis4) des-- r2. R1 f,4( ges8.) as16 b4( c)
  \repeat unfold 4 {r16 f,( as f)} \repeat unfold 6 {r ges( b ges)}
  r b( des b) r as( d as) r b( es b) \repeat unfold 3 {r c( es c)}
  \repeat unfold 2 {r d( f d)} \repeat unfold 2 {r es( g es)}
  \repeat unfold 2 {r c( es c)} r d( f d) r f( as f)
  r g( b g) r es( g es) r d( f d) r c( es c) a!1 R1*2
  \set subdivideBeams = ##t
  r8 c,16.( des32) des16.( f32) f16.( c'32) c16.( des32) des8 g,4~
  g8.. r32 r2. R1*5 b4( as8.) c16 b4( as8.) c16 des4( ces8.) des16 b4.( c16) des
  f4( es) f,2 R1 r8 es( f g as b c d) es->( g,4.) r2 R1
  es1:32( es1:32 d1:32 c2:32 b2:32 es8)\noBeam b_( c es es f as as b)\noBeam
  es,( f as as b des es es)\noBeam as,( ces ces cis fis,4) fis8_(
  a a h es,4) es8( f g as h c d f)\noBeam b,( b c d es f g as)\noBeam d,( es f
  g)\noBeam fis( g a h)\noBeam es,( f g as b c)\noBeam es,,( f g a h
  c)\noBeam es-> r2. r r16 c,( es f \tuplet 3/2 4 {as8 g f c' b as} es'2)\fermata
  f,1:16 \repeat unfold 2 {f4:16 ges4:16} \repeat unfold 2 {ges4:16 f4:16}
  R1 e4 d g fis \repeat unfold 3 {ges2. r4} as2. r4 b2. r4 c2. r4
  \repeat unfold 3 {r16 <f, as> q q} r <des f> q q
  r8 <b d! g b>-><c e! g c>4-><es as c es>8-><g b es g>-><b des ges b>4->
  <d! f a! d!>1~ q b, R1
  \bar "||"
  R1*8
  \cueClef "alto"
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \override Glissando.style = #'zigzag
  \once\override TextScript.extra-offset = #'(-5 . 0)
  <eis fisih>2^"Viole"\glissando
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
  \cueClefUnset
  \bar "||"
  R1*4 r2. fis'4( h2 des
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  c2.) des
  \override TextScript.extra-offset = #'(-.5 . .3)
  d!4^\markup {\italic "pizz. sempre"} r2
  c4 r2 d4 r2 d4 r2 es4 r2 h4 r2 c4 r2 a4 r2 b4 r2
  c4 r2 b4 r2 c4 r2 c4 r2
  c4 es(^\markup {\italic arc} c)
  b2( es4) es8( eses) eses[( des]) des( c)
  c( ces) ces[( b]) b( a) a4( b2)
  \override TextScript.extra-offset = #'(-.5 . .3)
  b4^\markup {\italic picc.} r d8( es fis b d2~
  d8) c( b\noBeam f4.) d'4( c8 b g4) es'2( a,4 b2.
  h!4.) g'8(\noBeam f es es4) b,-> b-> b r2 R2.*10
  es2.~( es4 b2 ces2.~ ces4 des2 ces2.~ ces4 ges2 g!2.)
  <a d>2.:32( <b es>2.:32 <c_~ f>2.:32<c_~ g'>2.:32
  <c_~ a'>2.:32<c b'>2.:32)
  \cadenzaOn
  <cis a'>~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q1~ q~ q~ q <es b'>~ q~ q <e! c'>~ q4 r8 f,( ges as4.)
  as2 b d! r R1 fis2 fis4( gis) h!( a2.)
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
  f,2. es4~ es1 g2 f~ f1 R1*2
  r2 es g es f1
  <dis gis>2( <gis dis'> <cis, fis>1)
  R1 \bar "||"
  R1*7
  \unset baseMoment
  b4 b b b <b des><ces d><b es>4. r8
  d4 <d f><es g><f a><g b>4. r8 r2
  f2-> f-> <f as>4<ges a><f b>4. b,16 c!
  des4 ces8. es16 des4 ces8. es16
  fes4 eses8. fes16 des4. d16 e
  f4 as8. g16 as4 b8. c16 des4 f8 r r2
  c,4 b8. d16 c4 b8. d16 es4 des8. es16 c2
  <a b>1~ q~ q~ q~ q~ q~ q2 r
  \bar "|."
}
