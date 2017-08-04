\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%\include "makeOctaves.ly"

links = {
  \clef bass
  \key e \major
  \time 3/4
  <<
    {
      fis4 e2 dis2.
    }
    \\
    {
      \dotsUp <e, h,>2. fis,4 cis,2
    }
  >>
  <fis, cis><a, e>4
  <<
    {
      fis4 e2 dis2.
    }
    \\
    {
      \dotsUp <e, h,>2. fis,4 cis,2
    }
  >>
  <fis, cis><a, e>4
  <<
    {
      fis4 e2
    }
    \\
    {
      \dotsUp <e, h,>2.
    }
  >>
  <gis, dis>2<h, e>4<a, e>2<h, e>4
  <<
    {
      <e, h, e>2.
    }
    \\
    {
      a2\rest ais4
    }
  >>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      fis'4 e'2 dis'2.
    }
    \\
    {
      <e h>2. fis4 cis2
    }
  >>
  <fis cis'><a e'>4
  <<
    {
      fis'4 e'2 dis'2.
    }
    \\
    {
      <e h>2. fis4 cis2
    }
  >>
  <fis cis'><a e'>4
  <<
    {
      fis'4 e'2
    }
    \\
    {
      <e h>2.
    }
  >>
  <gis dis'>2<h e'>4<a e'>2<h e'>4<e h e'>2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2
      \once \override NoteColumn.force-hshift = #-.5
      fis4 e2
      \once \override NoteColumn.force-hshift = #-.5
      e4 fis a
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2
      \once \override NoteColumn.force-hshift = #-.5
      fis4 e2
      \once \override NoteColumn.force-hshift = #-.5
      e4 fis a
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2 s2. s
      \once \override NoteColumn.force-hshift = #-.5
      gis2 a4
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2
      \once \override NoteColumn.force-hshift = #-.5
      fis4 e2
      \once \override NoteColumn.force-hshift = #-.5
      e4 fis a
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2
      \once \override NoteColumn.force-hshift = #-.5
      fis4 e2
      \once \override NoteColumn.force-hshift = #-.5
      e4 fis a
      \once \override NoteColumn.force-hshift = #-.5
      gis4 fis2 s2. s <e, h, gis>
      \once \override NoteColumn.force-hshift = #-.5
      h2 cis'4~
      \once \override NoteColumn.force-hshift = #-.5
      cis'2.
      \once \override NoteColumn.force-hshift = #-.5
      cis'2 e'4
      \once \override NoteColumn.force-hshift = #-.5
      h2 cis'4~
      \once \override NoteColumn.force-hshift = #-.5
      cis'2.
      \once \override NoteColumn.force-hshift = #-.5
      cis'2 e'4
      \once \override NoteColumn.force-hshift = #-.5
      h2 cis'4
      \once \override NoteColumn.force-hshift = #-.5
      dis'2 e'4 s2. s
    }
    \\
    {
      \voiceFour
      e2. \dotsUp h, cis2 s4 e2. \dotsUp h, cis2 s4
      e2. s s e
      e2. \dotsUp h, cis2 s4 e2. \dotsUp h, cis2 s4
      e2. s s s
      fis4 gis2 a4 gis2 a s4 fis4 gis2 a4 gis2 a s4
      fis4 gis2 h2. s s
    }
    \\
    {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4
      \once \override NoteColumn.force-hshift = #-.3
      a,2 gis,4
      \once \override NoteColumn.force-hshift = #-.3
      gis, h, <cis e>
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4
      \once \override NoteColumn.force-hshift = #-.3
      a,2 gis,4
      \once \override NoteColumn.force-hshift = #-.3
      gis, h, <cis e>
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4 <gis, dis h>2<h, e gis>4<a,e a>2<h, e a>4
      \once \override NoteColumn.force-hshift = #-.3
      h,4 cis2
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4
      \once \override NoteColumn.force-hshift = #-.3
      a,2 gis,4
      \once \override NoteColumn.force-hshift = #-.3
      gis, h, <cis e>
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4
      \once \override NoteColumn.force-hshift = #-.3
      a,2 gis,4
      \once \override NoteColumn.force-hshift = #-.3
      gis, h, <cis e>
      \once \override NoteColumn.force-hshift = #-.3
      h,2 a,4 <gis, dis h>2<h, e gis>4<a,e a>2<h, e a>4
      s2.
      \once \override NoteColumn.force-hshift = #-.3
      e~
      \once \override NoteColumn.force-hshift = #-.3
      e2 cis4~
      \once \override NoteColumn.force-hshift = #-.3
      cis fis <e a>
      \once \override NoteColumn.force-hshift = #-.3
      e2.~
      \once \override NoteColumn.force-hshift = #-.3
      e2 cis4~
      \once \override NoteColumn.force-hshift = #-.3
      cis fis <e a>
      \once \override NoteColumn.force-hshift = #-.3
      e2.~
      \once \override NoteColumn.force-hshift = #-.3
      e4 gis2 <e a cis'>2<e a h>4<e gis h>2.
    }
  >>
  \relative {
    \set tupletSpannerDuration = #(ly:make-moment 2 8)
    \times 2/3 {
      e,8 h' gis'
      \clef treble
      a e' a cis, e a
      \override TupletNumber #'transparent = ##t
      h, dis a' cis, gis' cis e, gis cis fis, a cis a cis fis e, a cis
      h, e gis a e cis e cis a h dis fis cis e gis e gis cis a fis cis fis cis a e' cis a
      gis h e a, cis e cis e a h, dis gis dis gis h e, gis h e, a cis e cis a e' h a
      e gis h e
      \change Staff = RH
      gis h e gis h
    }
    \change Staff = LH
    h,,16 gis, h e fis a, cis e gis h, cis <fis a>
    <gis h> h, cis <dis fis><cis e> gis a dis gis h, cis e
    a cis, e fis h  dis, e gis cis h, e a
    e' gis,, h e fis a, cis e gis h, cis <fis a>
    <gis h> h, cis <dis fis><cis e> gis a dis gis h, cis e
    a cis, e fis h  dis, e gis cis h, e a
    <<
      {
        h-> gis, h e fis-> a, cis e h' h, cis fis
        gis-> ais, h dis e-> gis, ais h dis-> e, gis ais
        \clef bass
        dis4 cis h
      }
      \\
      {
        h'4 fis s gis e dis
        dis16-> e, a! h cis-> e, gis a h-> e, fis a
      }
    >>
    h e, fis h a cis, e h' gis a, h fis' e gis h e gis4-> cis,32 h a gis fis e h gis
  }
  <e,, e,>8[<fis, e fis><h, dis h>]<gis, cis gis>[<e, fis, e><dis, h, dis>]
  <cis, gis, cis>
}