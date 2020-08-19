\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "makeOctaves.ly"

links = {
  \clef bass
  \key d \major
  \time 4/4
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #3
  R1*5
  d,4 a, fis e a d' cis' a d, a, fis e a d' cis' g
  <<
    {
      h, \stemDown fis cis' a~ \stemUp a2 s
      \stemDown a,4 e a cis'^>^~ \stemUp cis'2 s
    }
    \\
    {
      s1 g,4 d h d'^>^~ \stemUp d'2 s
      \stemDown g,4 d g h^>
    }
  >>
  \stemNeutral
  <d,, a,, d,>4<a, fis><d a><fis d'><g e'><h g'><a fis'><e g d'>
  <d, a, d><a, fis><d a><fis d'><g e'><a g'><g fis'><e d'>
  <h,, h,><fis d'><cis' a'><h fis'><g,, d, g,><d h><a fis'><g d'>
  \clef treble <e' a' d''><h e' a'> \clef bass<a d' e'><e a d'>
  <g, g><d cis'><e a d'><h e' a'><a fis' g'><d g a e'><a, fis a>
  <<
    {
      d' g' <fis a fis'><e b e'><cis h cis'>
      <e fis h e'> s2.
    }
    \\
    {
      <fis, d a>4<e, d h><d, a,><g, d>
      \once \override NoteColumn.force-hshift = #1.6
      <fis, d>
      <h,, fis, h,><h, fis d'><g, d h><e, h, g>
    }
  >>
  <d, d>2. <fis, fis>4<e, e>1<cis, cis>2.<d, d>4~ q2.<g,, g,>4~
  q2 <fis,, fis,>4<f,, f,><e,, e,>2.<d,, d,>4~ q2. b,4(
  d fis gis b c' d' <e' fis'>2)
  R1*68
  d,4 a, fis g a e'
  \clef treble
  <<
    {
      \voiceOne
      s2 a'2 g'4 fis'
    }
    \\
    {
      \voiceThree
      fis'4 g' fis' e' d'2
    }
    \\
    {
      \voiceTwo
      d'4 a~ a1
    }
  >>
  \clef bass
  a,4 d e a h, fis d' <cis' fis'> g, d h
  <<
    {
      g'
    }
    \\
    {
      d'
    }
  >>
  cis' <h d'>
  <<
    {
      cis'2
    }
    \\
    {
      a4 gis
    }
  >>
  <a d'>4
}