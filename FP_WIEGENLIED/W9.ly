\version "2.19.15"
\language "deutsch"
%%%%%%%%%%% RH %%%%%%%%%%%%
neunteRH = \relative {
  \clef treble
  %\key es \minor
  \time 2/4
  \override Staff.TimeSignature #'stencil = ##f
  f''4.( e8) ges4( es \bar ".|:" c2) d4( b a2) ces4( as des2) g, ges4(es')
  \bar ":|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicNeun = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
neunteLH = \relative {
  \clef treble
  %\key es \minor
  \time 2/4
  \override Staff.TimeSignature #'stencil = ##f
  c'8[( g' c) h,] b[( es ges b]) a[( dis, e c]) b[ d( es e] f[) a,( des c])
  as[( es' d es]) b[( des f ges]) g![( d b a]) b[( es ges b])
}