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

tubaMusic = \relative {
  \clef "bass_8"
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  <es,, es'>2.~ q~ q R2.*6 <c g'>2.~( <c g'^~><des g>) R2.*12
  r4 as''2~ as2.~ as a2( b4 h2.) R2.*2 r2 g4( ges2.~ ges)
  R2.*7 fis,2.~ fis8 r r2 r2. r8 d'~ d2~ d2. es~ es4 r2 R2.*2
  b2.~ b~ b d es( b~ b2 ges4~ ges2.) es'~( es2 c4) cis2. R2.*4
  d2. R2.*9 a2. R2.*15 \repeat unfold 8 {a2.~} a R2.*4 cis4-.-^ r2
  R2.*11 cis2. R2.*8 g2.( ges g! ges f as4-^) r2 R2.*18
  \repeat unfold 8 {dis2.-> cis->} dis cis2 r4
  \repeat unfold 19 {b2.~} b2. R2.*2 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*5
  e2.( d^~ d8) cis(~ cis2 <fis, fis'>2.) b R2.*9
  \bar "||"
  \numericTimeSignature
  \time 4/4
  c1~ c~ c c R1*3 
  r2.\makeOctaves #1 {g4( c1)~ c~ c~ c~ c fis, h c4-^} r2.
  as2( g) r es'-- g,( ges) r d'-- ges,( f) es1-^ R1
  \makeOctaves #1 {
    e'1~ e4 e2.~ e1~ e4 e2.->~ e1~ e4 es es8-. d-. cis-. c-. 
    h4-. r2. R1*4 es1( ges as4)
  } as-- ges-- fes-- \makeOctaves #1 {c1-> h-> a->~ a}
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <g g'>4-^
}