\version "2.19.15"

\language "deutsch"

top = \change Staff = "RH"
bot = \change Staff = "LH"

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
  \ottava #1
  \set Staff.ottavation = #"8"
  <dis' h' dis>1
  \ottava #0
  <<
    {
      ais2 fisis ais gis fis dis fis e dis his dis cis h fisis ais gis dis4 eis
    }
    \\
    {
      <h' dis>1 <gis e'>
      \once \override NoteColumn.force-hshift = #0.8
      <a h> <gis h>
      \once \override NoteColumn.force-hshift = #0.8
      <fis gis> <e gis>
      \once \override NoteColumn.force-hshift = #0.8
      <cis dis> <h e> h2
    }
  >>
  <ais fisis'>4 <h gis'>
  <<
    {
      h'2 ais
    }
    \\
    {
      <cis, fisis>1
    }
  >>
  <h dis gis>2 <cis' eis gis>4 <c e ais>
  \bar "||"
  <h dis h'>1 s2 dis,16 fis h dis
  <<
    {
      fis,4
    }
    \\
    {
      fis16 h dis fis
    }
  >>
  h, dis fis h dis, fis h dis fis, h dis fis
  \ottava #1
  \set Staff.ottavation = #"8"
  h, dis fis h
  dis h fis dis h' fis dis h
  \ottava #0
  fis' dis h fis dis' h fis dis
  h' fis dis h fis' dis h fis dis' h fis dis h' fis dis h s1
  \bar "||"
  r4 r8 dis16 fis h dis fis h
  \ottava #1
  \set Staff.ottavation = #"8"
  dis fis h dis
  fis dis h fis
  \ottava #0
  dis h fis dis h fis dis h \bot fis dis h fis \top dis''1-> s1*4 
  \bot fis1-> \top s1*3 \bot fis1-> \top dis-> s gis-> s fis-> s cis-> s dis->
  \bot \clef treble
  dis''16-> cis h ais gis fis e dis h'-> ais gis fis e dis cis h
  \bar ""\break
  fis'-> e dis cis h ais gis fis h-> ais gis fis e dis cis h
  \clef bass
  ais gis fis e dis cis h ais gis fis e dis 
  \ottava #-1
  \set Staff.ottavation = #"8"
  cis h ais gis
  \bar ""\break
  fis e dis cis h1->
  \ottava #0
  \bar "|."
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
  gis ais h cis dis e dis cis h ais gis fisis ais gis fis e
  dis cis h cis dis e fis gis a h cis dis e fis gis fis
  e dis cis h a gis fis gis a h a gis fis e dis cis
  dis his cis dis e fis gis a fis gis ais his cis dis e dis
  cis dis cis h ais gis fisis gis ais h ais gis fisis eis dis eis
  fisis gis fisis eis dis cis h cis dis e dis cis h ais gis ais
  h ais gis fis e dis cis h
  \ottava #-1
  \set Staff.ottavation = #"8"
  ais gis fis e dis e dis cisis
  dis eis fisis gis ais h cis dis
  \ottava #0
  eis fisis gis ais h cis dis e!
  dis cis h ais gis fisis gis ais h cis dis eis fisis gis ais h
  ais gis fisis eis dis cis h ais gis h ais gis fis! e! dis cis
  \bar "||"
  h fis' h dis fis, h dis fis h, dis fis h dis, fis h dis
  fis, h \top dis fis \bot h, \top dis fis h \bot r4 <fis, dis'>
  <e fis h e>2 <dis fis h dis> <h h'>1~ q
  \top fis''16 dis \bot h fis dis' h fis dis h' fis dis h fis' dis h fis
  \bar "||"\break
  \tweak #'duration-log #0
  h,16-> fis' h dis fis h r8 r2 <h,, fis'''>1->
  \tweak #'duration-log #0
  gis16-> dis' gis cis dis gis cis dis \top gis cis dis gis
  \ottava #1
  \set Staff.ottavation = #"8"
  cis dis gis cis dis h gis dis gis dis h gis
  \ottava #0
  dis h gis dis \bot h gis dis h
  \tweak #'duration-log #0
  dis,-> fis ais dis fis ais \top dis fis ais dis fis ais
  \ottava #1
  \set Staff.ottavation = #"8"
  dis fis ais dis
  fis dis ais fis
  \ottava #0
  dis ais fis dis ais fis dis \bot ais fis dis ais fis
  \tweak #'duration-log #0
  h,-> fis' gis dis' fis gis \top dis' fis gis dis' fis gis
  \ottava #1
  \set Staff.ottavation = #"8"
  dis' fis gis dis'
  fis dis gis, fis
  \ottava #0
  dis gis, fis dis gis, fis dis \bot gis, fis dis gis, fis
  \tweak #'duration-log #0
  cis-> gis' cis e gis \top dis' e gis dis' e gis dis'
  \ottava #1
  \set Staff.ottavation = #"8"
  e gis cis dis e dis cis gis
  \ottava #0
  e dis gis, e dis gis, e dis \bot gis, e dis gis,
  \tweak #'duration-log #0
  cis,-> fis ais e' fis ais \top e' fis ais e' fis ais 
  \ottava #1
  \set Staff.ottavation = #"8"
  e' fis ais e'
  fis e ais, fis
  \ottava #0
  e ais, fis e ais, fis e \bot ais, fis e ais, fis
  \tweak #'duration-log #0
  h,-> fis' h dis fis h \top dis fis h dis fis h
  \ottava #1
  \set Staff.ottavation = #"8"
  dis fis h dis
  fis dis h fis
  \ottava #0
  dis h fis dis h fis dis \bot h fis dis h fis
  \tweak #'duration-log #0
  h,-> gis' h e gis h \top e gis h e gis h
  \ottava #1
  \set Staff.ottavation = #"8"
  e gis h e
  gis e h gis
  \ottava #0
  e h gis e h gis e \bot h gis e h gis
  \tweak #'duration-log #0
  cis,-> fis h cis fis h \top cis fis h cis fis h
  \ottava #1
  \set Staff.ottavation = #"8"
  cis fis h cis
  fis cis h fis
  \ottava #0
  cis h fis cis h fis cis \bot h fis cis h fis
  \tweak #'duration-log #0
  fis,-> fis' ais cis fis ais cis \top fis ais cis fis ais
  \ottava #1
  \set Staff.ottavation = #"8"
  cis fis ais cis
  fis cis ais fis
  \ottava #0
  cis ais fis cis ais fis \bot cis ais fis cis ais fis
  \tweak #'duration-log #0
  h,-> fis' h dis fis h \top dis fis h dis fis h
  \ottava #1
  \set Staff.ottavation = #"8"
  dis fis h dis
  %CODA
  \time 17/4
  fis dis h fis
  dis' h fis dis
  h' fis dis h
  fis' dis h fis
  \bar ""\break
  \ottava #0
  dis' h fis dis
  h' fis dis h
  fis' dis h fis
  dis' h fis dis
  h' fis dis h
  \clef bass
  fis' dis h fis
  dis' h fis dis
  h' fis dis h
  \bar ""\break
  fis' dis h fis
  h,1->
  \bar "|."
}