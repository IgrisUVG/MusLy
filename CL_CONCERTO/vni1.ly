\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

vniOneMusic = \relative {
  \time 3/4
  \key es \major
  \override MultiMeasureRest.expand-limit = #2
  \set Score.skipBars = ##t
  R2.*6 <des''' f>2.~ q r <c es g>~ q <as des f> R2.*13 
  <e, h' f'>2. q <es c' ges'><es c' f>
  <es b' es>:32~ q:32~ q:32~ q:32~ q:32~ q:32~ q:32
  <e h' e>:32~ <e h'~ e>:32
  <eis h' eis>:32~ q:32~ <eis~ h' eis~>:32 <eis b'! eis>:32~ q8 r r2
  <<
    {
      r4 ces''2~ ces2.~ ces~ ces~ ces4 r2
    }
    \\
    {
      ces2.~  ces~   ces~ ces~ ces4 s2
    }
  >>
  R2.*2 <b d>2.~ q~ q R2.*9 r4 es,8( g b des <a cis e>2.:32) R2.*9
  r2 d,4( es a d,~ d2 g4 des2.) R2.*19 h2. d2 b!4 f' e2 R2.
  \once \hide Stem <as,! b>4:32\glissando s2 s2. s <b' f'>8-.-^ r r2
  R2.*5
  r2 f4( ges c f,~f2 b4 fes2.) as heses2( as4) des2( c4) R2.*9
  c,2.( cis c! cis d es4)-^ r2 R2.*18 
  \repeat unfold 4 {g2.->~ g} r g-.-^R2.*8
  g2.~ \repeat unfold 18 {g2.~} g2.( as!)~ as~ as\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  h'4( a d, g fis h, e d cis gis fis h, dis2 cis4 ais2.)
  R2.*3 r4 f8( es d4)
  \repeat unfold 4 {<ges b es>2. <fes as des>}
  <ges b es>2.
  %\bar "||"
  %\time 3/4
  <fes as des>
  \repeat unfold 9 {<ges b es>2. <fes as des>} <ges b es>2.
  \numericTimeSignature
  \time 4/4
  c4^\markup {\italic Solo} h8 f e b' es, d es ces' e, c' des4 es8 fes
  as, f' es d es des c fis, as b h cis dis f ges d' 
  des g, c fis, f h as e g b a es as d, c des b g b d g fis e es
  d h b fis g gis ais h c4 r4
  <<
    {
      s8 \repeat unfold 5 {b'4.~ b2~ b8} 
      \repeat unfold 5 {a4.~ a2~ a8} \repeat unfold 3 {as4.~ as2~ as8}
      as4.
    }
    \\
    {
      \repeat unfold 5 {e4 e~ e2} \repeat unfold 8 {es4 es~ es2}
      es4 es
    }
  >>
  <e g>4->(<d f>--<e g>--<a c>--<c e>1->)
}