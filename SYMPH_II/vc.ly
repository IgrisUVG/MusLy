\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

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

vcMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \override MultiMeasureRest.expand-limit = #2
  \stemUp
  \set doubleSlurs = ##t
  <h, gis'>2^\markup {\italic "unisono"}(<b g'>
  <as f'>2.<fis dis'>4<f! d'!>2<g des'>4<gis e'>~ q)
  \breathe
  <h dis>(<b e>2 ais2.) r4 R1*3
  \set doubleSlurs = ##f
  <h gis'>2^\markup {\italic "div"}(<b g'>
  <as f'>2.<fis dis'>4<f! d'!>2<g des'>4<gis e'>~ q2) r2
  \stemNeutral
  R1*7 r2 <cis e h'>4(<d f b><cis fis a>) r2.
  b'2-> r r2. r8
  <<
    {
      f8( g4->)
    }
    \\
    {
      f8~ f4
    }
  >>
  r8
  <<
    {
      g8( as4)
    }
    \\
    {
      f8~ f4
    }
  >>
  r8
  <<
    {
      as8( a!) g( a[ gis] g4)
    }
    \\
    {
      e8~ e d( e\noBeam es4.)
    }
  >>
  <des ges>4 R1*4 r2
  <<
    {
      \stemDown
      b'8( f es[ b] ces1~ \stemUp ces4) s2. s2
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      s2 r_\markup {\italic Solo}
      \once\override Slur.positions = #'(1 . 1)
      fes,~( fes4 es ges8 ces \times 2/3 {es8 ges ces}
      c!2)
    }
  >>
  h->( b8--)\noBeam d,( es[ b'~] b4) r r2
  <<
    {
      \stemDown
      b8( f es[ b] c1~ \stemUp c4) s2. s2
    }
    \\
    {
      \set baseMoment = #(ly:make-moment 1 8)
      s2 r_\markup {\italic Solo}
      \once\override Slur.positions = #'(1 . 1)
      f,~( f4 e g8 c \times 2/3 {e8 g c}
      des2)
    }
  >>
  \set baseMoment = #(ly:make-moment 1 8)
  d( es f8 es16 d b8 c~ c) d( f\noBeam d4 c8 es4
  e!2~ e8) d16( c d4)\breathe
  g,4.(<gis b>8 a2) g( f es f~ f1)
  e2 e~ e r4 f-- g( gis e2)
  r2 \times 2/3 {r4 <d f>-><h d>->}
  <b d>-^ r \times 2/3 {r <g' a>-><es g>->}
  <cis es>-^ r \times 2/3 {r <f a>-><e f>->}
  <e fis>-^ r \times 2/3 {r <b h!>-><d g>->}
  <c f>8-^\noBeam<ais c>(<h des><b es>4.) r4 R1*5 r2 <c f a>(
  <h f' as><a! d fis>4<g c f><ges b es>1)
  <es' as>4->(<as, es'>->) r2 <b d> r r <b des>(<c f><eis gis>
  <f b des>1) r8 <c es> r q r <d f> r q
  r <e g><es as>4(<f a>)<fis a>
  r8 <g b> r <gis h> r <a c> r <h d> r c r des r d r dis
  es r4. <h, dis>2-> r2. <b es g>4--<h! fis'>2(<b es g>
  <g' b>) r <h,! fis'>2(<b es g><b des ges>) r R1*10
  a'4( d,)<a fis'>-- q--<h g'>--
  \override TextScript.extra-offset = #'(2 . -.5)
  q--^\markup {\italic sim}<b g'> q <as f'> q <a fis'> q
  <h gis'> q <c a'> q <d b'> q <c as'> q <cis gis'> q <d b'> q
  <fis a>-> r r <b, d>(<a d>) r r <g cis>(
  <gis h>)<gis e'>(<h e fis><c e g>)
  <cis e a>(<cis e h'><d a' c!><cis a' cis>
  <es g b><g b es><es g b> q <es as ces>1)
  <as, f'>8[(<b des>]<ces es><des ges>
  <ces fes>4)
  \makeOctaves #1 {
    es8( des des4) des8( ces heses4)
  }
  <ces es'>(
  \makeOctaves #1 {
    des) ces8( b as4) ges( b) as
  }
  ges'16( f! es des ces b as ges
  f8-.) r4. r8 <es' a>(\noBeam<e g>)<cis fis>(
  <a f'!>)-. r4. r8 <es' a>(\noBeam<e g>)<cis fis>(
  <a f'!>16)-. r8.
  \shape #'((0 . 0) (0 . 0) (2 . 0) (5 . -1)) Slur
  f'8( g16 a <es a>4<fis a>)
  <<
    {
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \repeat unfold 2 {des'32 eses des c}
    }
    \\
    {
      f,!8^. r
    }
  >>
  \set baseMoment = #(ly:make-moment 1 8)
  \set subdivideBeams = ##t
  \shape #'((-16 . 4.5) (0 . 3) (0 . 0) (0 . 0)) Slur
  des'32( eses des c des32 eses des c
  des eses a, b ces c des eses es eses des c ces b a as
  g ges f fes es eses des c h b a as g ges f fes
  es8-.) c'-"picc."\noBeam a ges
  es r ges'32( ases ges f ges ases ges f
  ges ases ges f ges ases h, c cis d dis e f fis g gis
  a ais h c cis d dis e f e es d des c h b
  a as g ges f e es d des c h b a as g ges
  \set subdivideBeams = ##f
  f16) d'! b'! d f d b f h,! e a cis a' d, c g
  h, gis' cis fis eis dis fis, dis ais e' gis cis dis ais dis, h
  e, a e' a fis, h fis' dis' fis cis ais fis dis ais gis fis
  es4--<es' g>--<d g a>--<d g c!>--<f as des>1--->
  <a,cis fis>2<a d fis><b d f!><b es g><h! d g><cis e g>
  <d a'><g c g'><gis h gis'><b, es b'><c c'> r4 <d fis>(
  <d g>) r2. R1 r2 <as c>(<a! cis>4<b d><h es>2<b b'>1)<g' es'>2 r
  r <g, as c>(<fis a! cis>4<fes b d><es h' es>2<b' b'>1)
  <<
    {
      \times 2/3 {
        \once \override NoteColumn.force-hshift = #2.8
        \once\override Accidental.extra-offset = #'(3 . 0)
        h'!4 ais gis
      }
      \stemDown
      g4\rest g8\rest g8~( g fis8[ g] a[ b] c[ cis]~ cis d1)
    }
    \\
    {
      \stemUp
      \once \override NoteColumn.force-hshift = #1.4
      g,2 s
    }
    \\
    {
      \once\override Accidental.extra-offset = #'(1 . 0)
      <es b'>1
    }
  >>
  R1*4 r4 r8. c16( fis,2) as'4( c8.) as16 g4( fis)
  r4 es2( f4~ f es2) r4 des2( c) b4 r b'( a as g f g a! g f g
  a b) b( a as g a gis) a4:16 g4:16 a4:16 g4:16
  g4:16 gis4:16 g4:16 f4:16 f2:16 a2:16 R1*5 des,4( es8.) f16 ges4( as)
  f as( f des b) b'( ges es b) ges'( f d es) b'( as f d) b'( as g
  es) c'( b as g) es( f b, a!1) R1 r2. r8.. f32
  \set subdivideBeams = ##t
  f16.( c'32) c16.( des32) des16.( f32) f16.( c'32) c16.( des32) des8 g,4~
  g8.. r32 r2. R1*5 b,4:32( as4:32 ges4:32 f4:32
  des'4:32 ces4:32 b2:32) f4:32( ges4:32 b2:32) R1
  es4( c as f es2) r R1 es'_( as, g f2 b es,1:32) as1:32 des2:32 fis,2:32
  d'!4:32 c2.:32 b2:32 as2:32 g2:32 f2:32 es1:32 as2:32 g2:32 c8 b-> r2.
  R1 r2 f2\fermata \repeat unfold 2 {b'4:16 as4:16}
  as4:16 heses4:16 as4:16 ges4:16 b4:16 as4:16 b2:16
  ges4:16 f4:16 es2:16 e!4 d c h b2. r4 ces2. r4 a2. r4
  as2. r4 g2. r4 ges2. r4 des'' des c b
  \set subdivideBeams = ##f
  <b d!>16(<a c><g b><fis a><e g><d fis><c e><b d>
  <as c><g b><f as><es g><des ges>4->)
  d!1~ d cis'4( c b2~ b1)\fermata
  \bar "||"
  <cis a'>2(<h d as'><b es ges>1)
  <<
    {
      \stemDown
      <cis a'>2(<d as' h>
      \stemUp
      des2) d\rest b' d,\rest
    }
    \\
    {
      s1 \makeOctaves #1 {
        \once\override NoteColumn.force-hshift = #1.7
        ces4^( b) s2
        \once\override NoteColumn.force-hshift = #1.3
        eses4^( des) s2
      }
    }
  >>
  R1*3
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  \override Glissando.style = #'zigzag
  <e'! fih>2 \glissando
  \override NoteColumn.glissando-skip = ##t
  s
  \hide Staff.Stem
  \override ParenthesesItem.padding = #0.2
  \override ParenthesesItem.font-size = #8
  \teeny\parenthesize c4 s2
  \revert NoteColumn.glissando-skip
  \parenthesize e,4~ \parenthesize e1\fermata
  \undo \hide Staff.Stem
  \normalsize
  \unset Score.proportionalNotationDuration
  \bar "||"
  R1*3 r2
  \shape #'((0.5 . -0.2) (0.5 . -0.4) (0.3 . -0.3) (0 . -0.2)) Slur
  fis->\(( eis1) fis4 gis f2
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  g!2.\) ges
  \clef treble
  \override TextScript.extra-offset = #'(-.5 . .3)
  b4^\markup {\italic legato} d f a, c f d b g
  h! d f es g c h, d f es f es c d es d
  \clef bass
  b f es' c a g d b e! b c f c a f c'( es)
  des-- r2 es4-- r2 ges4-- r2 a4-- r2
  d,4( b'2) es,4( d'2~ d4 c) r c( b2) r4 fis( a
  g2.~ g fis) f!4 r2 R2.*6 eis'2.(~ eis4 c2 des2.~ des4 es2)
  R2.*7 <a,, d>2.:32_(<b es>2.:32<c~ d>2.:32
  <c f~>2.:32<d~ f>2.:32<d e!>2.:32)
  \cadenzaOn
  <cis fis>~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1*7 r4. <es as>4(<des ges>4.)
  ces'2( b fis1~ fis~ fis8)[ h16 h,] es8.[ ges16]
  h8 cis h[ dis,] \times 2/3 {e8 fis cis} d!2.
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
  <d g b>2.<b es g>4~ q <g' h! d><ges b des>2~
  q4 <es as des>2<f a c>4<d g b>2.<b es g>4~
  q2 <h d fis><b es ges>1<es g! b>~ q <es g c>2<es b' es>
  <f c' f>1<gis h dis>4-. r2.
  <es g>2<d f><es g> q <g c><es b'><f c'>1
  <dis gis>2( <cis fis> <h e>1)
  R1 \bar "||"
  R1*7
  es4 des ces h ges fes es4. r8
  g4 f es b' as4. g'8( des4) r
  <b f'><as f'><ges f'><f f'> des' ces b4. r8
  <des fes>4<ces es><des fes><ces es>
  <ces fes><c ges'><des fes>4. r8
  as'4 <es g><f as><as c><as des>4. f8( h,!4) r
  c4 b as g es' des c2 R1 r4 r8
  \revert Glissando.style
  as'8\glissando
  \override NoteColumn.glissando-skip = ##t
  s2 s2.
  \hide Staff.Stem  
  \revert NoteColumn.glissando-skip
  fis,4~
  \undo \hide Staff.Stem
  fis2_\fermata r R1*3
  \bar "|."
}
