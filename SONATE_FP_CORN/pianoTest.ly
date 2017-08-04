\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = ""
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #25
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}
rechtsT = {  
  \clef treble
  \override Staff.TimeSignature #'stencil = ##f
  %\override DynamicLineSpanner.staff-padding = #6
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3  
  <<
    {
      <es es'>2 s4 <h h'>
    }
    \\
    {
      d''4\rest c'16 es' g' gis'~
      \stemUp
      gis'4
      \stemDown
      h16 e' f' gis'
    }
  >>
  R1
}
linksT = {
  \clef bass
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
  <<
    {
      <e,,! f,>2 dis,,
    }
    \\
    {
      a16\rest \stemUp as, es b s4
      c'16\rest \stemUp e, h, gis s4
    }
    \\
    {
      s4 \times 2/3 {r4 \stemDown e8~} e2
    }
    \\
    {
      \hideNotes
      \shape #'((2 . 0) (1 . 2) (-4 . 1) (1 . 0)) PhrasingSlur
      a4^\( \change Staff = RH s8 g'8\)
      \change Staff = LH
      \override NoteColumn.ignore-collision = ##t
      \shape #'((-3.5 . -1.3) (-2 . 3) (-7 . 4) (0 . 0)) PhrasingSlur
      a4.^\( \change Staff = RH s16 gis'\)
      \change Staff = LH
      \unHideNotes
    }
  >>
  r8 \tuplet 23/12 {
    g,32[( gis, a, ais, h, c cis d dis e f fis
    g fis f e dis d cis c h, ais, a,]
  }
  gis,4) r
}
\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = 
    #'((basic-distance . 15)
       (minimum-distance . 8)
       (padding . 0)
       (stretchability . 0))
    %\remove "Bar_number_engraver"
  }
}
%%%%%%%%%%%%D%%%%%%%%%%%%
\include "dynamicPiano.ly"
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechtsT
    %\new Dynamics = "DYN" \dynamicPiano
    \new Staff = "LH" \linksT
  >>
}