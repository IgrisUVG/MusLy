\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsMMXXII = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  %\override TupletNumber.transparent = ##t
  %\override TupletBracket.bracket-visibility = ##f
  \key as \major
  \time 12/8
  \ottava #1
  \set Staff.ottavation = #"8"
  es''''8 as, c, f b des c
  %\bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicCesGes = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksMMXXII = \relative {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f
  %\override TupletNumber.transparent = ##t
  %\override TupletBracket.bracket-visibility = ##f
  \time 12/8
  \ottava #-1
  \set Staff.ottavation = #"8"
  a,,,8 es' cis' b, e es' d e,!
  %\bar "|."
}