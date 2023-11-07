\version "2.19.15"
%\version "2.18.0"

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
  indent = 0
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
  \once\override Score.RehearsalMark.extra-offset = #'(1 . 2)
  \mark \markup {\musicglyph #"scripts.ufermata"}
  \override Staff.TimeSignature.stencil = ##f
  \cadenzaOn
  <<
    {
      s4 s2 f''2\rest s4 
      \override TupletNumber.transparent = ##t
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {s4 \stemDown fis'''2~}
      fis'''\breve
      b'1 b'! s2
      \once \override NoteColumn.force-hshift = #.7
      f'1 s s4
      \stemUp
      f'2_( s4 f'!1)
    }
    \\
    {
      r4 f''2\rest e''1 r4 g''1~ g'' r r2 gis'2.( s4 gis'1)
      r2. a''8^~ a''1 r2 c'''2
    }
    \\
    {
      as'\breve \pppp   r1 %s8
      %\once \override NoteHead.X-offset = #.3
      \once \override Accidental.extra-offset = #'(3 . 0)
      \once \override NoteColumn.force-hshift = #1.7
      gis''1 r r2. es''8~ es''2 r4 r h'!
    }
  >>
  \bar "||"
  \break
  <<
    {
      
    }
    \\
    {
      
    }
    \\
    {
      
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
      r1. r2 f''1 r r r r4. c''8~ c''1
      \stemDown
      b'2 r1 r4 fis''8~ fis''1
    }
    \\
    {
      r1. \times 2/3 {dis''2 f''!4^~} 
      f''2 r4 a'!2. r1 a'4~ a'2.
    }
    \\
    {
      r4 h'2\rest g'1\rest r r r r r4 e'!\breve
      gis'2._~ gis'4 s2.
      \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      \tweak #'duration-log #0
      g'
    }
  >>
  \bar "||"
  \break
  <<
    {
      
    }
    \\
    {
      
    }
    \\
    {
      
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