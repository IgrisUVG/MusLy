\version "2.19.15"
\language "deutsch"
%%%%%%%%%%% RH %%%%%%%%%%%%
zehnteRH = \relative {
  \clef treble
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  ges'4( ges ges des f e! es2) d4_( b') des,( as') ges1 as4( b ces f, b as g2) d4( c') b( des,) ges1
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicZehn = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
zehnteLH = \relative {
  \clef bass
  %\key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  ges,8 des' b' as des, ges f es d a' c a c fis, g c, d a' fis g ges f des as ges des' ges as ces b des, ges,
  ces ges' des' es as, b es, as, es g' b es, c g' d' c a e! a, c des f b c
  \times 2/3 {des4 as des,} ges,2
}