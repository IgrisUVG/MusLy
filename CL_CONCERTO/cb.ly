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
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  \makeOctaves #1  {
    es,,2.~ es~ es R2.*6 c2.~ c ces R2.*13 as'2. as a g c,~( c ces~ ces~ ces) R2.*7 fis2.(
    es8) r r2 R2.*4 ces'2.~ ces r b~ b~ b d, es( b'~ b2 ges4~ ges2.) es~( es2 c4) cis2. R2.*2
    a'2. R2.*11 a2. as! R2.*19 d,2.:32~ d:32~ d:32~ d:32 fis-> f!2-> e4-> es!-> d2->~ d2. R2.*4
  }
  b''2.( f ges c, ces)
  \makeOctaves #1  {
    as ges f gis R2.*8 g2.( ges g ges f as4)-^ r2 as2.( a es') 
  }
  r2. f2( es4) des2 c4~ c b2( a2.) R2.*3
  r2 r8 as-+ a-+ d-+ f-+ a-+ as\open\glissando d~ d2 e8-+ f-+ a-+ as-+ r4 g8-+ d-+
  des-+ as4.\open\glissando h,8-. r r4 f'8-+ e-+ b!-+ r r2.
  \makeOctaves #1 {
    \repeat unfold 5 {dis,2.-> cis->}
  }
  \repeat unfold 3 {dis2. cis}
  R2.*3
  %%%%%%%%%%% ПРИДУМАТЬ ОБОЗНАЧЕНИЕ%%%%%%%%%%%
  R2.*22
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  %\cadenzaOn
  R2.*19 %\bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  R2.*20
  \numericTimeSignature
  \time 4/4
  R1*8
  %\cadenzaOff
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <d d' e>1~ q4 q2.->~ q1~ q4 q2.->~ q1~ q4 <d d' es>2.->~ q1~ q4 q2.->~ q1~ q4
  <des des' es>2.->~ q1~ q4 q2.->~ q1
  \makeOctaves #1 {
    as' g e2 d~ d1~ d
  }
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  g4-.-\markup {\italic pizz.} r des' r a r ges r 
  b r d r es r h r g r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r c r as'2 \glissando
  \repeat unfold 3 {
    g,4 r des' r a r ges r b r d r es r h r
    g r des' r a r ges r b r d r es r h r
    g r des' r a r ges r b r d r es r h r c r as'2 \glissando
  }
  g,4 r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r c r as'2
}