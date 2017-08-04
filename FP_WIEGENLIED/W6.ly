\version "2.19.15"

\language "deutsch"

SopV = \relative {
  c''4 c c c c f b,2 d4 a c f, f2 g b4 c b f' d b f2
  d'4 c c h c1 f,2 e4 f f2 c' a4 d c2~ c c
}
AltV = \relative {
  a'4 e g2 f4 g a( g) d2 f~ f e f g4 a g d c2
  g'1 f2 e c d~ d4 e f g f1~ f4 e f2
}
TenV = \relative {
  g'2 f4 e d c d2 f,4 g a b c1 b4 f g c b f b a
  c2 d c2. d4~ d2 b a b4 c~ c d a2 g f
}
BasV = \relative {
  f2. c4 a2 g a4 b c d g,1 b4. a8 g4 f g b f2
  g1 c b2 c d c4 e f b, c2~ c f,
}
%%%%%%%%%%% RH %%%%%%%%%%%%
sechsteRH = \relative {
  \clef treble
  \key f \major
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
    \new Voice { 
      \voiceOne
      \SopV
    }
    \new Voice { 
      \voiceTwo
      \AltV
    }
  >>
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicSechs = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
sechsteLH = \relative {
  \clef bass
  \key f \major
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
    \new Voice { 
      \voiceOne
      \TenV
    }
    \new Voice { 
      \voiceTwo
      \BasV
    }
  >>
  \bar "|."
}