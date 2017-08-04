\version "2.19.15"

\language "deutsch"

%%%%%%%%%% FOUR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsFour = \relative {
  \time 4/2
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  <<
    {
      \override Slur.positions = #'(1 . 1)
      h'1( ais2. h4 a!1) r r gis2.( f'4 e1.) d4 fis,_~ fis1 r R\breve R\breve\break
      h1( ais2. h4 a!1) e'-> R\breve\fermata
    }
    \\
    {
      r4
      \shape #'((0 . 0) (0 . -1) (-1.5 . 0.5) (0 . 0.3)) Slur
      g,( e dis e dis \change Staff = LH h2)\change Staff = RH r4
      \shape #'((0.5 . 2.5) (1 . 0) (0 . 2) (0 . 3)) Slur
      g'( fis dis e dis c \change Staff = LH b a)\change Staff = RH
      \shape #'((0 . -1) (0 . -1) (-1.5 . 0.5) (0 . 0.5)) Slur
      fis'( f dis e! d \change Staff = LH gis,2)\change Staff = RH r4
      \shape #'((0 . -1) (0 . -1) (-1.5 . 0) (0 . 0.3)) Slur
      fis'( f d cis \change Staff = LH b^~) b2\change Staff = RH r4
      \shape #'((0 . -1) (-1 . -1) (-2 . 0.2) (0 . 0.3)) Slur
      f'( e dis e dis \change Staff = LH g,!2) 
      \shape #'((0 . 0.2) (2 . -0.5) (-0.5 . -2) (0 . 0.3)) Slur
      fis4(\change Staff = RH a' gis f dis cisis dis cisis)\change Staff = LH 
      \shape #'((0 . 0.2) (2 . -0.5) (-0.5 . -2) (0 . 0.3)) Slur
      f,(\change Staff = RH a' gis f d cis d cis) r4
      \shape #'((0 . 0) (0 . -1) (-1.5 . 0.5) (0 . 0.3)) Slur
      g'( e dis e dis \change Staff = LH h2)\change Staff = RH r4 
      \shape #'((0.5 . 2.5) (1 . 0) (0 . 2) (0 . 2.8)) Slur
      g'( f dis2 cis4 \change Staff = LH b g eis\breve)^\fermata
    }
  >>
  \change Staff = RH
  \bar "|."
  \stopStaff
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicFour = {
  \override Hairpin.to-barline = ##f
  \once \override DynamicText #'extra-offset = #'(1 . -2.9)
  s1*20\pp
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksFour = \relative {
  \time 4/2
  \clef bass
  \stemDown
  s1*4 \xLV #8 es,4_\laissezVibrer s2. s1*5 \xLV #8 es4_\laissezVibrer s2. s1
  \xLV #8 es4_\laissezVibrer s2. s1*7
  \stopStaff
  s4-\markup { Attacca }
}