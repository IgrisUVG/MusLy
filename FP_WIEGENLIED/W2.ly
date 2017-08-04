\version "2.19.15"
\language "deutsch"
%%%%%%%%%%% RH %%%%%%%%%%%%
zweiteRH = \relative {
  \clef treble
  \key gis \minor
  \time 6/8
  \override Staff.TimeSignature #'stencil = ##f
  \repeat unfold 3 {gis'4. fisis} h2.
  \repeat unfold 3 {gis4. fisis} cisis'2.
  cis4. c fis,2. h4. ais eis2. \bar ":|."
  gis~ gis~ gis~ gis
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicZwei = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
zweiteLH = \relative {
  \clef bass
  \key gis \minor
  \time 6/8
  \override Staff.TimeSignature #'stencil = ##f
  <<
    {
      \repeat unfold 22 {dis'8[ ais gis ais]} dis ais~ <gis ais>2.
    }
    \\
    {
      \teeny \parenthesize dis4.\repeatTie \normalsize
      \repeat unfold 14 {e4 dis8~ dis4.} e4 dis8~ dis2.
    }
  >>
}