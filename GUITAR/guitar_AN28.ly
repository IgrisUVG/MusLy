\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "№ 28"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \revert NoteHead.no-ledgers
}
\score {
  \new Staff \with {
    instrumentName = "Guit."
  }
  {
    \clef treble
    \key d \major
    \time 3/4
    \override Staff.TimeSignature #'stencil = ##f
    d'4 a'<e'' g''> %\bar "|:"
    \repeat volta 4 {
      <d'' fis''> d' <a a'> | <g g' h'> d'8( e') g'4 | h' cis'' e''8( g'') |
    }
    \alternative {
      {<d' a''>4 a' <e'' g''> }\bar ":|."
      {<d' a''> h' d'' }
    }
    <b g''> d'8( e') g'4 | a' \glissando b' fis'' |
    <a e''> g'8( a') d''4 | e' cis'' <a g'> \bar "||"
    d' a' <e'' g''> | <d'' fis''> d' <a a'> |
    <g g' h'> d'8( e') g'4 | h' cis'' e''8( g'')^\markup {
      \italic "  "
      \tiny \raise #1
      \musicglyph #"scripts.segno"
    }
    \bar ".|:"
    <d' \parenthesize a''>4  a' <e'' g''> | <d'' fis''> d' <a a'> |
    <g g' h'> d'8( e') g'4 | h' cis'' e''8( g'') \bar ":|."
    <d' a''>4 <h' d''> <e'' g''> | <b g' e''> d'8( e') g'4 |
    a' d'' fis'' | <a e''> g'8( a') d''4 | e' cis''
    \once \override Score.RehearsalMark #'extra-offset = #'( 3.5 . 0 )
    \once \override Score.RehearsalMark #'font-size = #1
    \mark \markup { \musicglyph #"scripts.coda" }
    <a g'>
    \bar "||"
    d' a' <e'' g''> | <d'' fis''> d' <a a'> |
    <g g' h'>8[ h] d'[( e')] g'[( a')] | h'[( cis''] d''-.[) e'']( g''[ a'')] \glissando |
    <fis''' d'>4 e'''16( fis''' e'''8) cis'''4\2 \glissando
    \set glissandoMap = #'((0 . 1))
    <a'' g'> \glissando
    \glissandoSkipOn
    h' d'' |
    \glissandoSkipOff
    <a e''>
    d'8( fis') e'4 |
    \time 4/4
    a'8( b') fis''4 e'' d''|
    \time 3/4
    d' h'! <d'' a''> | <b g''> d'8( e') g'4 | a' b' fis'' |
    <a e''> g'8( a') d''4 | e' cis'' <a g'>
    ^\markup {
      \italic "   "
      \tiny \raise #1.5
      \musicglyph #"scripts.segno"
    }
    \bar "||"
    \cadenzaOn
    \stopStaff    
    s4
    \bar "||"    
    \startStaff
    \cadenzaOff
    \once \override Score.RehearsalMark #'font-size = #1
    \mark \markup { \musicglyph #"scripts.coda" }
    \set tieWaitForNote = ##t
    d'4~ a' <cis'' a''> | <d' d'' fis''> s4
  }
}
