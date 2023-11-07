\version "2.18.0"

\language "deutsch"

\header {
  %title = "Фрагменты 1"
  title = \markup { \musicglyph #"scripts.ufermata" }
  %meter = "Von Langsam bis Rasch"
  composer = "I. G."
  arranger = "Фрагменты 1"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = {
  \clef treble
  \once\override Score.RehearsalMark.extra-offset = #'(2 . 2)
  \mark \markup {\musicglyph #"scripts.ufermata"}
  \override Staff.TimeSignature.stencil = ##f
  \cadenzaOn
  <<
    {
      s4 s2        f''2\rest s4 
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {s4 \stemDown fis'''2~}
      fis'''\breve
    }
    \\
    {
      s4 f''2\rest e''1 s4 g''1~ g''
    }
    \\
    {
      as'\breve \pppp   s1     s8
      \once \override NoteHead.X-offset = #.3
      \once \override Accidental.X-offset = #.3
      gis''1
    }
  >>
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \cadenzaOn
  <<
    {
      s1.                s2                         
      f''1                           
    }
    \\
    {
      s1.                \times 2/3 {dis''2 f''!4^~} 
      f''2 a'!2.
    }
    \\
    {
      s4 h'2\rest g'1\rest
    }
  >>
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Staff = "LH" \links
  >>
}