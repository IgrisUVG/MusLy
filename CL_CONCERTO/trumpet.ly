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

trumpetMusic = \relative es' {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  <es g b>2.~ q~ q R2.*6 <es g c>2.~( q <f as des>) R2.*10  f'2.~ f~ f~ f~ f
  <c ges'>2( <d f>4 <cis e>2.) r2.
  <<
    {
      <g_~ c>2.( <es_~ g b~ ces~><es_~ ges_~ b^~ ces^~> q)
    }
    \\
    {
      r4 <es~ b'^~>2_~ \hideNotes q2.
    }
  >>
  R2.*7 <fis b d fis>2.~ q8 r r2 r2. r4 <b d fis>2~ q2. r <ces es ges ces>4-^ r2 R2.*2
  <c c'>2.~ q4. ges'-> f-> c-> R2.*10 e2-> r4 <b, d ges>2.R2.*9 r4 a''2->~ a r4 R2.*15
  <ges, ces eses>4-. q-. q-. R2.*12 <f a c f>4-.-^ r2 R2.*17
  <<
    {
      ces'2.->~ ces~ ces
    }
    \\
    {
      s2. ges->^~ ges
    }
    \\
    {
      \voiceTwo
      s2. s2 ces,4->~ ces2.
    }
  >>
  r4 <es es'>-> q-> q2.-> r4 q-> q-> q2.-> r
  <<
    {
      fis'~ fis~ fis4 b,2\rest R2.*16
    }
    \\
    {
      fis4-^ r2 s2. s
    }
  >>
  \repeat unfold 4 {<f as e' g>2.->~ q} r2. q2.-.-^ r2.
  <<
    {
      g'2.->~ g~ g~ g
    }
    \\
    {
      s2 g4->~ g2.~ g~ g
    }
    \\
    {
      \voiceTwo
      s2. s4 \stemUp g2^>~ \hideNotes g2.~ g
    }
  >>
  R2.*13 r2 <cis, g' as c>4-.-^ R2.*11 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*6
  \makeOctaves #-1 {d8( cis c4 h~ h8) e(->~ e2 fis2.)}<b, d>
  b~ b~ b b~ b~ b b~ b~ b
  \bar "||"
  \numericTimeSignature
  \time 4/4
  <es, fis c' des>1~ q~ q <fis g c e> R1*4 r4
  <<
    {
      as2( g4) r ges( f fes es d des c h1)
    }
    \\
    {
      b2( h4 c2 des4 deses ces b heses as g1->)
    }
  >>
  <g c><a cis><h d><c es>4-^ r g'2-- g'1->
  <<
    {
      f->
    }
    \\
    {
      r4 c'8^> c^> c2^>
    }
  >>
  c,-> d->
  <<
    {
      e1-> d-> h'2 r
    }
    \\
    {
      \repeat unfold 2 {r4 a8^> a^> a2^>} d,1->
    }
  >>
  R1*6 r2 <as b d>( <a h d>4)-. r2. R1*4 <as des ges>1~(
  q4 q <ges b f'><es ges des'><b es as>1)
  <e c' g'>1-><fis d' a'>-><fis e' h'>->~ q
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  <as es' des'>4-^
}