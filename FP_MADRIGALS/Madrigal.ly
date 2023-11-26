\version "2.19.15"

\language "deutsch"

\header {
  title = "Madrigals"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #5
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #5
  system-system-spacing.basic-distance = #15
  score-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #20
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

rechts = \relative {
  \key gis \minor
  \clef treble
  <h' gis'>2 <cis dis> <h e> <ais! cis> <h dis>
  <<
    {
      cis4 h ais1 gis
    }
    \\
    {
      gis2~ gis fisis dis e
    }
  >>
  <gis eis'>2 <ais fisis'>
  %\break
  <h gis'>2 <cis dis>
  <<
    {
      e2 cis fis1~ fis
    }
    \\
    {
      h,1~ h2 ais! h1
    }
  >>
  <h gis'>2 <cis dis> <h e> <ais! cis> <h dis>
  <<
    {
      cis4 h ais1
    }
    \\
    {
      gis2~ gis fisis
    }
  >>
  <dis gis>1\fermata
}

links = \relative {
  \key gis \minor
  \clef bass
  < gis dis'>2 <h fis'> <a cis> <fisis dis'> <gis e'> <fis cis'>
  <dis dis'>1
  <<
    {
      h'1 cis
    }
    \\
    {
      gis2 e fis dis
    }
  >>
  < gis dis'>2 <h fis'>
  \clef treble
  <cis a'>
  <<
    {
      fis2~ fis1
    }
    \\
    {
      dis2 fis,1
    }
  >>
  h1
  \clef bass
  < gis dis'>2 <h fis'> <a cis> <fisis dis'> <gis e'> <fis cis'>
  <dis dis'>1 <gis his>\fermata
  \bar "||"
}

dynamic = {
  s1*5\pp s1\< s\mf s1*2\> s1\ppp s1*4\pp s1\>
  s\ff
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}