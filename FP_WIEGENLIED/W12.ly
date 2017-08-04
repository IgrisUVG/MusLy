\version "2.19.15"

\language "deutsch"

lhBr = \markup {
  \path #0.1 #'((moveto 0 0)(rlineto -1 0)(rlineto 0 -2.5))
}
rhBr = \markup {
  \path #0.1 #'((moveto 0 0)(rlineto 1 0)(rlineto 0 2.25))
}
rhMark = \markup {
  \override #'(font-encoding . latin1) \italic "RH" 
}
lhMark = \markup {
  \override #'(font-encoding . latin1) \italic "LH" 
}
%%%%%%%%%%% RH %%%%%%%%%%%%
zwolfteRH = \relative {
  \clef treble
  \key c \major
  \override Staff.TimeSignature #'stencil = ##f
  %\override Fingering.staff-padding = #'()
  fis'2_\finger \lhMark ( es' d!1) g,!2_\finger \lhMark ( cis c!1) gis2( h h g b1 a)
  R1 % f!2_\finger \lhMark ( d' cis1) fis,2_\finger \lhMark ( c' h!1) g2( b b fis a1 gis)
  gis2( a fis1) b2( g h!1) c2( fis, fis' cis d1 f!~ f) s
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicZwolf = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
zwolfteLH = \relative {
  \clef bass
  \key c \major
  %\time 12/16
  %\override Fingering.staff-padding = #'()
  \override Staff.TimeSignature #'stencil = ##f
  <<
    {
      \stemDown
      \repeat unfold 5 {fis8[ cis' dis] g,[ a d]}
      fis,8[ cis' dis]\finger \rhMark g,[ a d]
      \repeat unfold 2 {fis,8[ cis' dis] g,[ a d]}
      fis,[ \finger \rhMark cis' dis] g,[ a d]
      fis,[ cis' dis] g,[ a d] fis,[ cis' dis] 
      \change Staff = RH
      g,[ a d] fis,[ cis' dis] g,[ a d]
      \change Staff = LH
      \repeat unfold 5 {gis,8[ h f'] b,[ c e]}
      gis,[ h f']\finger \rhMark b,[ c e]
      \repeat unfold 2 {gis,[ h f'] b,[ c e]}
      gis,[ h f'] b,[ c e]
      \repeat unfold 3 {gis,[ h f'] b,[ c e]}
    }
    \\
    {
      \stemUp
      g,,,1\finger \rhMark s gis\finger \rhMark s a s es s e2 f
      fis1\finger \rhMark s g\finger \rhMark s as s d, s s
    }
  >>
  f'''1\fermata
}