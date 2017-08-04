\version "2.19.15"

\language "deutsch"

cbMusic = \relative {
  \clef "bass_8"
  %\time 3/4
  %\key es \major
  \set Score.skipBars = ##t
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 4/4
  %des,,4 des2.~ des1~ des4 des2.->~ des1 as' g e2 d~ d1~ d
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  g,,4-. r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r c r as'2 \glissando
  g,4 r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r c r as'2 \glissando
}