\version "2.19.15"

\language "deutsch"

top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%% RH %%%%%%%%%%%%
siebenteRH = \relative {
  \clef treble
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \override Slur.positions = #'(1 . 1)
  c''2.( a'4 gis2. gis,4 h2. g'!4 fis2. c4 f!1 e dis~ dis) \break
  a'( e b' dis, d! a' g2) r \break
  <<
  	{
  		\shape #'((-0.5 . -4)(0 . 0)(0 . 0)(0 . -3)) Slur
  		c,2.( a'4 gis2. gis,4 h2. g'!4 fis2. c4 f!1 e)
  	}
  	\\
  	{
  		\shape #'((0.5 . 2)(0 . 0)(0 . 0)(0.5 . 2)) Slur
  		e,4( dis e dis f e f e fis eis fis eis g fis g fis
			as g as g a! gis a gis)
  	}
  >>
  <a e'>1~ q2 r
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicSieben = {
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  s2.\pp s4\< s1*3 s1*2\f\> s1*2\!
  s1*3\ppp s1*2\cresc s1\mp\> s4 s2.\!
  s1\mf s2. s4-\markup {\italic {poco dim.}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
siebenteLH = \relative {
  \clef treble
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
  	{
  		\shape #'((-0.5 . -6.5)(0 . -3)(0 . -10)(0 . -3)) Slur
			e'4( dis e dis f e f e fis eis fis eis g fis g fis
			as g as g a! gis a gis r
			\top \stemDown gisis ais gisis ais gisis ais gisis)\bot
  	}
  	\\
  	{
  		s1*6 \clef bass fis,,1~ fis
  	}
  >>
  \clef treble
  \stemNeutral
  \shape #'((0.5 . 3)(0 . 0)(0 . 0)(0 . 0.5)) Slur
  c'''4_( h c h b a b a as g as g g fis g fis f! e f e es1~ es2) r
  \clef bass
  \override Slur.positions = #'(1 . -1)
  a,,4( c e a b2) r h,4( d fis h ais2) r 
  \override Slur.positions = #'(1 . 1)
  h,4( dis f h b1) a^~ a2 r
  \bar "|."
}