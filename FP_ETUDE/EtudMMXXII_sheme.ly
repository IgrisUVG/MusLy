\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
shemeMMXXII = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.Clef.stencil = ##f
  \override Stem.stencil = ##f
  \override Flag.stencil = ##f
  \cadenzaOn
  a' b cis d es e
  \break
  a, es' cis b e es d e
}