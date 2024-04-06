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
  \clef "bass_8"
  \set Score.skipBars = ##t
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r2.
  \time 4/4 R1*2
  \time 3/4 r2.
  \time 4/4 r1
  \time 3/4 r4 es,2
  \time 5/4 r1 r4
  \time 3/4 as,4( g f)
  \time 4/4 R1*18 r2 ges'\laissezVibrer^"picc"
  R1*17
  \key des \major
  R1*8 as,8-> des4-- b16( f ges8) ges ges b as es es ges as4 as b c des2
  R1*8 des8-> ges4-- es16( b ces8) ces ces es
  des as as ces b16 ces b as b as ges as
  b des ces b ces as b ces des b ces des es f ges f
  es des ces b ces as b ces des b as ges as ces b as
  b4 as2 ges4~ ges f ges f
  \key es \major
  es r r2 R1*8
  \key b \major
  f'8-> b4-- g16( d es8) es es g f c c es d16 es d c d c b c
  d f es d es c d es f d e fis g a b a g f es d es c d es f d c b c es d c
  b a b c es d es c f es f g f8 d' b c d d, g4 r R1*12
  \key g \major
  d8-> g4-- e16( h c8) c c e d a a c h16 c h a h a g a
  h d c h c a h c d h c d e fis g fis e d c h c a h c d h a g a c h a
  h d c h c a h c d h c d e fis g fis e d c h c a h c g2
}