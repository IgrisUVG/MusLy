\version "2.19.15"
%\version "2.18.2"

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

cbMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest.expand-limit = #2
  \clef "bass_8"
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  <e,, e'>2(<g g'><des des'>2. a'4 b2<des, des'>4 h'~ h)\breathe
  h( <d,! d'!>2<dis dis'>2.) r4 R1*3
  <e e'>2(<g g'><des des'>2. a'4 b2 <des, des'>4 h' <e, e'>2) r
  R1*7 r2 h'4( b cis--) r2. <b b'>2-> r r2. <b b'>4~
  q <as as'>~ q c~ c \makeOctaves #-1 {e( g) ges} R1*3
  r4. c,8-\markup {\italic pizz.} r a r
  \makeOctaves #1 {
    ges( f es des4) b'( as ges1~ ges4) r2. R1 r2. as8 ges(
    f es des4) b'( as g1~ g4)
  }
  r2. R1*4
  <<
    {
      c'1( h b c4 d2.) e2( a,)~ a
    }
    \\
    {
      e2( f g1 es2 f~ f b,) c( a') s
    }
  >>
  r4 des,-- g( \makeOctaves #-1 {h b2)}
  r2 \times 2/3 {r4 <h, as'>-> f'->}
  <g, g'>-^ r \times 2/3 {r <es' c'>-><a, a'>}
  es'-^ r \times 2/3 {r <a, a'>-> d->}
  <h h'>-^ r \times 2/3 {r <b b'>-><h h'>->}
  <c c'>8-^ g4( <ges ges'>4.) r4 R1*5
  r2 \makeOctaves #1 {a!( as fis4 f es1)}
  as'4->( as,->) r2
  \makeOctaves #1 {g-- r r b( f cis' b es) as,( f4 d}
  c') \makeOctaves #1 {
    es( d) cis c!8( g' gis16 fis gis8) a( e) d16 cis d dis
    e g, e' f ges f ges as a d, a' b h ais h cis
    es2-> gis,,->
  }
  r2. <es es'>4-- h'2( <es, es'><es' es'>) r
  h(
  \makeOctaves #-1 {
    es ges) r R1*6 b2-- r f-- r fis4( h) r2
  }
  R1 r2 d,4--
  \override TextScript.extra-offset = #'(3 . 2)
  d---\markup {\italic sim} g g es es des des fis fis e e f! f
  b, b f' f cis cis g' g <d a'>-> r r <g, g'>( d') r r <g, g'>(
  e') \makeOctaves #1 {h( gis e) a( gis g fis g) d'( c b as1)}
  des8( \makeOctaves #-1 {ges as[)} es]( fes4)
  \makeOctaves #-1 {f!( ges)} des( eses) ces(
  des)<ges, ges'>( b ces es) fes <b, b'>2(
  d8)_. r4. r8 \makeOctaves #1 {
    a(\noBeam cis) fis,( d)-. r4. r8 a'(\noBeam cis) fis,(
    d16)-. r8. d'8( cis) c16-> b-> a8-> g( fis f!)-.
  }
  r r2. r2 r8 c'-"picc."\noBeam a ges es r r2. R1
  b'2 a4 b h!1 a4 gis fis2 es4-- \makeOctaves #1 {b'-- g--} d'--
  \makeOctaves #1 {as1---> fis2 fis f!} c' h b
  \makeOctaves #1 {a c gis} es' \makeOctaves #1 {b r4 a( b)}
  r2. R1 r2
  <<
    {
      g'2( fis4 fes es2~) es1~ es~ es~ es~ es~ es~ es( d)
    }
    \\
    {
      e,!2~ e es~ es1~ es~ es~ es~ es~ es~ es( d)
    }
  >>
  b'4( as8.) c16 b4( as8.) c16 des4( c8.) f16 des2 R1
  c4( b8.) d16 es4( f8.) g16 as4( c8) r16 c,( fis,2)
  as'4( c8.) as16 g4( fis) b,( as ges f des' c b as
  ges ges' f es b) r2. R1*4 a4:16 g4:16 f4:16 e4:16
  c'4:16 h4:16 a4:16 g4:16 f2:16 e2:32 R1
  gis4( fis8.) ais16 gis4( fis8.) ais16 h4( ais8.) dis16 h2
  b4( as8.) c16 b4( as8.) c16 des4( f8.) des16 c2 des4( es8.) f16 ges4( as)
  f r2. R1*6 r2
  \makeOctaves #-1 {
    f2:32~ f1:32~ f1:32~ f1:32~ f1:32~ f1:32~ f1:32~ f1:32~
    f4:32( es4:32 des4:32 c4:32 as'4:32 ges4:32 f2:32)
  }
  b,4:32( as4:32 ges4:32 f4:32 des'4:32 ces4:32 b2:32)
  f4:32( ges4:32 b2:32) R1 es2.( c8 d es2) r R1
  es_( as, g f2 b es,1:32) as1:32 des2:32 fis,2:32
  d'!4:32 c2.:32 b2:32 as2:32 g2:32 f2:32 es1:32 as2:32 g2:32
  c8 b-> r2. R1 r2 f2\fermata b4:16 as4:16 ges4:16 f4:16
  des'4:16 c4:16 b4:16 es,16-> b'8.:16 es4:16 des4:16 ces4:16 b4:16
  ges'4:16 f4:16 es4:16 as,16-> es'8.:16 e!4 d c h
  b2. r4 ces2. r4 a2. r4 as2. r4 g2. r4 ges2. r4 <f f'>4 r2.
  d''!16( c b a g fis e d c b as g ges4->)
  d!1~ d cis'4( c b2~ b1)\fermata\bar "||"
  \makeOctaves #1 {fis2( d es1) fis2( d ges) r ges r}
  R1*6
  \bar "||"
  R1*4 r2.
  \makeOctaves #1 {dis'4( h2 b}
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  \makeOctaves #1 {f2.) es}
  b''4-. r2 f4-. r2 g4-. r2 h!4-. r2 c4-. r2 h4-. r2
  c4-. r2 f,4-. r a-. b-. r2 a4-. r2 g4-. r2
  c,4-. r e!-. f-. r2 f,4-. r2 b2. f' b a
  g,4-- r2 a4-- r2 b4-- r2 f'2( es4) d2( c4) b r2
  h!4 r2 c4 c2->( b4) r2 R2.*4 f2.~ f R2.*5 ges2.~(
  ges as~ as heses b! h!) c2.:32( des2.:32 d! 2.:32
  <b b'>2.:32~ q2.:32)
  \cadenzaOn
  <<
    {
      fis'~ fis~ fis~ fis~ fis~\fermata
      \cadenzaOff
      \bar "."
      \time 4/4
      fis2 b\rest s1*7 s4
    }
    \\
    {
      \stemUp
      fis,2.~ fis~ fis~ fis~ fis~ fis1~ fis~ fis~ fis(
      es)~ es~ es( a!)~ a4
    }
  >>
  r8 as( es' ges,4.)<as ces'>2<es b''><h'! h'!> r R1*2
  r4 es,2. R1*8
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
  \makeOctaves #1 {
    g2. d4~ d fis f des es f2 e4 g2. d4~ d2
  }
  h'
  \makeOctaves #-1 {es1 es~ es c2 g' f1 gis4-.} r2.
  <es b'>2<d b'> \makeOctaves #1 {c b as g f1}
  <dis' ais'>2( <cis gis'> <h fis'>1)
  R1 \bar "||"
  R1*7
  es4 des ces h ges fes es4. r8
  g4 f es b' as4. g'8( des4) r
  b as ges f des' ces b4. r8
  \makeOctaves #1 {
    d4 ces heses as fes' eses des4. r8
    f4 es des as ges4.
  }
  f'8( h,!4) r
  c4 b as g es' des c2 R1*2
  r8
  f'!8\glissando
  \override NoteColumn.glissando-skip = ##t
  s2. s1
  \hide Staff.Stem  
  \revert NoteColumn.glissando-skip
  \undo \hide Staff.Stem
  e,2_\fermata r g,1~ g2 r
  \bar "|."
}
