\version "2.19.15"

\language "deutsch"

\header {
  %title = "Madrigals"
  title = \markup {
    \fill-line {
      \override #'(font-name . "GothicG")
      \fontsize #4
      \bold
      "Madrigals"
    }
  }
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)
\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  score-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  left-margin = 18
  right-margin = 18
}

\layout {
  %indent = 10
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

#(ly:font-config-add-font "gothicg_.ttf")

%%%%%%%%%%%%%%%%%%%%%%% RH %%%%%%%%%%%%%%%%%%%%%%%
rechts = \relative {
  \key gis \minor
  \clef treble
  <h' gis'>2<cis dis><h e><ais!cis><h dis>
  <<
    {
      cis4 h ais1 gis
    }
    \\
    {
      gis2~ gis fisis dis e
    }
  >>
  <gis eis'>2<ais fisis'>
  \break
  <h gis'>2<cis dis>
  <<
    {
      e2 cis fis1~ fis
    }
    \\
    {
      h,1~ h2 ais! h1
    }
  >>
  <h gis'>2<cis dis><h e><ais! cis><h dis>
  <<
    {
      cis4 h ais1
    }
    \\
    {
      gis2~ gis fisis
    }
  >>
  \once \override Script.extra-offset = #'(0 . -1)
  <dis gis>1\fermata
  \bar "||"
  \break
  <cis e>2<dis fis><e gis>4<cis fis><dis fis><eis gis>
  <fis a>
  <<
    {
      gis8 fis gis4 fis8 e
    }
    \\
    {
      e4 <h dis> cis
    }
  >>
  <dis fis>1
  %\break
  <e cis'>2
  <<
    {
      his'4 fis'8 e
    }
    \\
    {
      <dis, gis>4 gis
    }
  >>
  <fis dis'>4<e cis'><dis h'><cis ais'>
  <dis h'>
  <<
    {
      ais'8 gis ais4 gis8 fisis
    }
    \\
    {
      cis4 <h dis><ais dis>
    }
  >>
  \once \override Script.extra-offset = #'(0 . -1)
  <his dis gis>1\fermata
  \bar "||"
  \break
  <<
    {
      <h' gis'>2<cis dis><h e><ais!cis>
    }
    \\
    {
      ais4->~ \tuplet 3/2 {ais8-> ais-> ais->} ais2->
      gis4->~ \tuplet 3/2 {gis8-> gis-> gis->} gis2->
    }
  >>
  <<
    {
      <h dis>2 cis4 h ais1 gis
    }
    \\
    {
      \stemUp
      s2
      \once \override NoteColumn.force-hshift = #.2
      gis2~
      \once \override NoteColumn.force-hshift = #-.6
      gis fisis
      \stemDown
      dis <e fis>
    }
    \\
    {
      \voiceTwo
      fis1-> eis->\once\showStaffSwitch
      \change Staff = LH
      ais,^>
      \change Staff = RH
    }
  >>
  \break
  <ais' dis gis>2-> <h fis' ais>->
  \clef bass
  <ais,, h dis>\fermata r
  \clef treble
  <<
    {
      <gis'' eis'>2<ais fisis'><h gis'>2<cis dis>
    }
    \\
    {
      fis,2-> gis-> ais4.-> ais8->~ ais4 ais->
    }
  >>
  <<
    {
      e'2 cis fis1~ fis
    }
    \\
    {
      \stemUp
      h,1~
      \once \override NoteColumn.force-hshift = #.2
      h2 ais! h1
    }
    \\
    {
      \voiceTwo
      gis1~ gis fis
    }
  >>
  \break
  <<
    {
      <h gis'>2<cis dis><h e>
    }
    \\
    {
      ais4 gis ais2
      gis4 fis
    }
  >>
  <<
    {
      <ais!cis>2
    }
    \\
    {
      gis2
    }
    \\
    {
      \voiceFour
      eis2
    }
  >>
  <<
    {
      <h' dis>2 cis4 h ais1
    }
    \\
    {
      \stemUp
      s2
      \once \override NoteColumn.force-hshift = #.2
      gis2~
      \once \override NoteColumn.force-hshift = #-.6
      gis fisis
    }
    \\
    {
      \voiceTwo
      <dis fis>1 eis
    }
  >>
  <<
    {
      cis1
    }
    \\
    {
      \once \override Script.extra-offset = #'(0 . -1)
      <ais dis gis>1^\fermata
    }
  >>
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%% LH %%%%%%%%%%%%%%%%%%%%%%%
links = \relative {
  \key gis \minor
  \clef bass
  < gis dis'>2<h fis'><a cis><fisis dis'><gis e'><fis cis'>
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
  < gis dis'>2<h fis'>
  \clef treble
  <cis a'>
  <<
    {
      fis2~ fis1
    }
    \\
    {
      d2 fis,1
    }
  >>
  h1
  \clef bass
  < gis dis'>2<h fis'><a cis><fisis dis'><gis e'><fis cis'>
  <dis dis'>1<gis his>\fermata
  \bar "||"
  <cis, gis'>2<h h'><e h'>4<fis ais>
  <<
    {
      h2
    }
    \\
    {
      dis,4 cis
    }
  >>
  <fis cis'>4<gis cis> gis, <a fis'><h h'>1
  <cis gis'>2 gis4 <cis cis'><dis ais'><e ais> fis <fis, fis'>
  <h fis'><cis e> dis dis,
  \once \override Script.extra-offset = #'(0 . -2)
  gis1\fermata
  \bar "||"
  < gis' dis'>2<h fis'><a cis><fisis dis'><gis e'><fis cis'>
  <dis dis'>1
  <<
    {
      h'1
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #-.5
      gis2 e
    }
  >>
  \clef treble
  <h' gis'>2-> <e gis ais>->
  \clef bass
  <gis,,, e'>\fermata r
  <<
    {
      cis''1
    }
    \\
    {
      fis,2 dis
    }
  >>
  < gis dis'>2<h fis'>
  \clef treble
  <cis a'>
  <<
    {
      fis2~ fis1
    }
    \\
    {
      d2 fis,1
    }
  >>
  h1
  \clef bass
  < gis dis'>2<h fis'><a cis><fisis dis'><gis e'><fis cis'>
  <dis dis'>1
  \once \override Script.extra-offset = #'(0 . -2)
  <gis,, gis'>\fermata
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%% D %%%%%%%%%%%%%%%%%%%%%%%
dynamic = {
  s1*5\pp s1\< s\mf s1*2\> s1\ppp s1*4\pp s1\> s1*8\ff
  s1*3\p s4 s2.\> s1\pp
  \override DynamicText.extra-offset = #'(0 . -1.6)
  s\f s1*3\pp s4
  \once \override Hairpin.extra-offset = #'(0 . -1.6)
  s2.\> s1 s\ppp
  \revert DynamicText.extra-offset
  s1*5\p
}

%%%%%%%%%%%%%%%%%%%%%%%% S %%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}