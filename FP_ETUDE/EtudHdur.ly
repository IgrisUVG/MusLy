\version "2.19.15"

\language "deutsch"

rechtsHdur = \relative {
  \clef treble
  \key h \major
  \override Staff.TimeSignature.stencil = ##f
  r16 h' cis dis h ais fis' h, gis e' cis dis h fis cis' h
  \bar ".|:"
  fis h cis dis h ais fis' h, gis e' cis dis h fis cis' h
  \bar ":|."
  \mergeDifferentlyDottedOn
  <<
    {
      e,16 ais h gis fis h dis, dis' cis fis, h gis cis, ais' fis dis
      h cis dis e
    }
    \\
    {
      \dotsUp
      e4. dis cis4 h
    }
  >>
  fis'16 gis ais h cis dis e fis gis ais h cis
  dis cis h ais gis fis e dis e fis gis ais h cis dis e
  fis gis fis e dis cis h ais gis ais h cis dis e fis gis
  \ottava #1
  \set Staff.ottavation = #"8"
  ais h-5 ais gis fis e dis cis h cis dis e fis gis ais h
  cis dis cis h ais-3 h-5 ais gis fis gis fis e dis e dis cis
  h1 <h dis gis h>2 <fis h e fis>4
  \ottava #0
  <dis fis h dis><h dis fis h><ais dis fis ais>2 <gis h e gis>4
  <fis h cis fis>1
  fis16 gis ais h cis dis e dis cis h cis dis e fis gis ais
  h fis gis ais
  \ottava #1
  \set Staff.ottavation = #"8"
  h cis dis e fis gis ais h cis dis e dis
  \bar "||"
  cis h ais gis fis e dis cis
  \ottava #0
  h ais gis fis e dis cis h
  gis' cis, dis e fis gis ais h
  \ottava #1
  \set Staff.ottavation = #"8"
  cis dis e fis gis ais h ais
  gis fis e dis cis h cis dis e fis gis ais h cis dis cis
  h ais gis fis e dis cis h
  \ottava #0
  ais gis fis e dis cis h ais
  fis' h, cis dis e fis gis ais
  \ottava #1
  \set Staff.ottavation = #"8"
  h cis dis e fis gis ais gis
  fis e dis cis h ais h cis dis e fis gis ais h cis dis
  e dis cis h ais gis fis e
  \ottava #0
  dis cis h ais gis fis e dis
  e fis gis ais h cis-3 dis e-5 fis, gis ais h cis dis e fis-5
  gis, ais h cis
  \ottava #1
  \set Staff.ottavation = #"8"
  dis e fis gis ais h ais gis fis e dis cis 
  \ottava #0
  h ais gis fis e dis cis h ais h cis dis e fis gis ais
  \ottava #1
  \set Staff.ottavation = #"8"
  h cis dis e fis gis ais h ais h ais gis fis e dis cis
  \ottava #0
  h ais gis fis e dis cis h cis dis e fis gis ais h cis
  \ottava #1
  \set Staff.ottavation = #"8"
  dis e fis gis ais h cis dis e fis gis fis e dis cis h
  fis' e dis cis h ais gis fis
  \ottava #0
  e dis cis h cis dis e dis
  cis h ais gis fis e dis cis h h' ais gis fis e dis cis
  h cis dis e fis gis ais h
  \ottava #1
  \set Staff.ottavation = #"8"
  cis dis e fis gis ais h cis
  dis cis h ais gis fis e dis
  \ottava #0
  cis h ais gis fis e dis cis
  h1
  \bar "||"
}

dynamicHdur = {
  \override Hairpin.to-barline = ##f
  s1*5\mp s8 s\> s2 s4\pp s1*2 s2 s\< s\mf s\> s1\p s2 s\> s1 s\!
}

linksHdur = \relative {
  \clef bass
  \key h \major
  \override Staff.TimeSignature.stencil = ##f
  \override Fingering #'staff-padding = #'()
  R1 \bar ".|:" R1 \bar ":|." r2 fis h,4 fis' cis'
  \clef treble
  <<
    {
      <fis_~ dis'~>_> q2
    }
    \\
    {
      s4
      \once \override NoteColumn.force-hshift = #1.7
      <e h'>2
    }
  >>
  <dis fis ais>2->
  <<
    {
      <h cis fis h>1_>
    }
    \\
    {
      s4
      \clef bass
      \stemUp
      h,, fis' dis'
    }
  >>
  \clef treble
  fis16 gis ais h cis dis e fis gis ais h cis dis e fis gis
  ais gis fis e dis e fis gis ais h ais gis fis e dis-3 cis
  h-5 fis'-2 e-1 dis cis h ais gis fis e dis cis
  \clef bass
  h ais gis fis
  e dis cis h ais gis fis e fis gis ais h cis dis e fis
  gis ais h cis dis e dis cis h ais gis fis e dis cis h
  cis dis e fis gis ais h cis
  \clef treble
  dis e fis gis ais h ais gis fis2.
  \clef bass
  ais,4 h1
  \bar "||"
  r2 fis'
  <<
    {
      dis1~ dis2 fis dis1~ dis2 fis
    }
    \\
    {
      cis2 h ais gis fis e dis cis
    }
  >>
  <h dis'>2 <ais' fis'>
  \clef treble
  <<
    {
    cis'2 h
    }
    \\
    {
      gis,1
    }
  >>
  <h ais'>1
  <e gis>2
  \clef bass
  <gis, e'>
  <<
    {
      gis'1~ gis2
    }
    \\
    {
      e,2 dis cis
    }
  >>
  <fis dis'>
  <<
    {
      fis'1~ fis2
    }
    \\
    {
      dis,2 cis h
    }
  >>
  <e h' gis'>2 <cis h' fis'>2. <fis, ais' cis>4~
  q2 <h fis' dis'> h,4 fis' cis' e fis h e fis
  \clef treble
  <<
    {
      dis1
    }
    \\
    {
      \stemUp
      \parenthesize h'16 ais gis fis e dis cis h
      \clef bass
      \stemDown
      ais gis fis e dis cis h ais
    }
  >>
  \bar "||"
  \stemNeutral
  gis ais h cis dis eis fisis gis
  \clef treble
  ais h cis dis eis fisis gis ais
  \parenthesize h ais gis fisis e! dis cis e_1
  \clef bass
  dis cis h ais gis fisis h ais  
}