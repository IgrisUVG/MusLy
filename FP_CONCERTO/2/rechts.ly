\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\include "makeOctaves.ly"

rechts = {
  \clef treble
  \key d \major
  \time 4/4
  %\override DynamicLineSpanner.staff-padding = #3
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #3
  R1*5
  \relative d'' {
    a1~ a2 d e a fis1~ fis2 d fis cis fis1 g
    <a, d e a>1~ q2 <d g a d><e a d e><a cis e a>
    <fis a d e fis>1~ q2 <d d'><fis a d fis><cis cis'>
    <fis a e' fis>1<g h d g><a cis a'><h d g h>2
    \ottava #1
    \set Staff.ottavation = #"8"
    <cis e cis'>8<d fis d'><e g e'><fis a fis'> q2<g h g'>
    \ottava #0
    \override Score.TextSpanner.staff-padding = #3
    \override Score.TextSpanner.direction = #DOWN
    \override TextSpanner.style = #'line
    \once \override TextSpanner.bound-details.left.text =
    \markup { \small на \small 3 }
    \override TextSpanner.bound-details.right.text =
    \markup { \draw-line #'(0 . 1) }
    \once \override TextSpanner.bound-details.left.padding = #-.5
    \override TextSpanner.bound-details.right.padding = #-1
    <a, e' a>2\startTextSpan
    <g d' e g>4\stopTextSpan
    \override TextSpanner.bound-details.left.padding = #1
    \override TextSpanner.bound-details.left.text =
    \markup { \draw-line #'(0 . 1) }
    <fis d' e fis>->\startTextSpan
    r
    \ottava #1
    \set Staff.ottavation = #"8"
    <h g' a h>\stopTextSpan
    <es g a es'>2~\startTextSpan q4\stopTextSpan
    <d g a d>\startTextSpan<a d e a>
    \ottava #0
    <e a d e>\stopTextSpan<fis h cis fis>2.<fis cis' d fis>4~(
    q <fis h d fis>) r2<fis a cis fis>2<g a h g'>4<e a e'>~(
    q <d g a d>) fis2~( fis4 g) e2~( e4 d) d2
    \override TextSpanner.bound-details.right.padding = #0
    \override TextSpanner.bound-details.left.padding = #0
    R1*68
    \set subdivideBeams = ##t
    %\set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set baseMoment = #(ly:make-moment 1 6)
    %\set beatStructure = #'(4 4 4)
    \tuplet 3/2 2 {
      fis,16[ e' a d, a fis' h e, d a' g' fis]
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      e,[ d' a' h, cis, a' g' fis, a, g' fis' a,]
      h,[ a' e' g, fis e' h' d, d, cis' g' h,]
      a,[ a' fis' g, cis, gis' e' a, a, fis' d' e,]
      a,4 e' d a g fis d' e a, cis a'
      fis h, cis fis h d,
      <<
        {
          \voiceTwo
          cis
        }
        \\
        {
          \voiceFour
          \once \override NoteColumn.force-hshift = #.2
          a
        }
      >>
      a' fis e d a h g' d e a h %fis
    }
  }
}