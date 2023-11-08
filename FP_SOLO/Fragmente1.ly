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

#(set-default-paper-size "a4" 'landscape)
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 0
  %ragged-right = ##t
  ragged-last = ##t
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

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

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
      s4 f''2\rest e''1 s4 g''1~ g'' s s2 gis'2.( s4 gis'1)
      s2. a''8^~ a''1 s2 cis'''2~
    }
    \\
    {
      as'\breve \ppp   s1 %s8
      %\once \override NoteHead.X-offset = #.3
      \once \override Accidental.extra-offset = #'(3 . 0)
      \once \override NoteColumn.force-hshift = #1.7
      gis''1 s s2. es''8~ es''2 s4 s
      \tweak #'duration-log #1
      h'!
    }
  >>
  \bar ""
  \break
  <<
    {
      s8
      \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      \tweak #'duration-log #0
      gis'!4. s16
      \tweak #'duration-log #0
      gis'!2 s16
      \xLV #8
      \tweak #'duration-log #0
      a'2_\laissezVibrer
    }
    \\
    {
      \tweak #'duration-log #1
      cis'''!4^~
      \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      \tweak #'duration-log #0
      cis'''!4.
      \tweak #'duration-log #0
      e'''2. s8
      \stemUp
      \revert Stem.stencil
      \revert Dots.dot-count
      \xLV #8 es'''2.^\laissezVibrer
    }
    \\
    {
      s4. s16
      \stemDown
      a''8~
      \override Stem.stencil = ##f
      \tweak #'duration-log #0
      a''4
      \revert Stem.stencil
      \override Dots.dot-count = #0
      \xLV #2.5
      \tweak #'duration-log #1
      des''4.\laissezVibrer s16
      \override Stem.stencil = ##f
      \xLV #8
      \tweak #'duration-log #0
      e''2_\laissezVibrer
    }
  >>
  \bar "S"
  \ottava #1
  \set Staff.ottavation = #"8"
  des''''1\pppp
  \ottava #0
  \clef bass
  \ottava #-1
  \set Staff.ottavation = #"8"
  <des,, es,,>\ppp
  \ottava #0
  \clef treble
  \ottava #1
  \set Staff.ottavation = #"8"
  \acciaccatura {\stemDown gis'''8} a''''1
  \ottava #0
  es'2
  <<
    {
      \override TupletBracket.bracket-visibility = ##f
      \times 2/3 {r4 f'2.}
      \ottava #1
      \set Staff.ottavation = #"8"
      \once \override Slur #'direction = #DOWN
      \acciaccatura {\stemDown gis'''8}
      \override Stem.stencil = ##f
      \tweak #'duration-log #0
      a''''2
      \ottava #0
      s2
    }
    \\
    {
      s1 s2 d'2
    }
  >>
  s1
  \bar ""
  \break
  <<
    {
      es'!1 s g' f''!2~ f''1
    }
    \\
    {
      s1 gis e'2
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
      s1. s2 f''1 s s s s4. c''8~ c''1
      \stemDown
      b'2 s1 s4 fis''8~ fis''1
    }
    \\
    {
      s1. \times 2/3 {dis''2 f''!4^~}
      f''2 s4 a'!2. s1 a'4~ a'2.
    }
    \\
    {
      s4\sustainOn h'2\rest g'1\rest s s s s s4 e'!\breve
      gis'2._~ gis'4 s2.
      \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      \tweak #'duration-log #0
      g'_~
    }
  >>
  \bar ""
  \break
  <<
    {
      s4
      \override Dots.dot-count = #0
      \tweak #'duration-log #1
      c''!4.
      \override Stem.stencil = ##f
      \tweak #'duration-log #0
      d''2 s4
      \xLV #8
      \tweak #'duration-log #0
      b'!2.\laissezVibrer s8\sustainOff
    }
    \\
    {
      \times 2/3 {fis'2 fis'!4~}
      \tweak #'duration-log #1
      fis'4. \xLV #8 f'1\laissezVibrer
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.7
      \tweak #'duration-log #0
      g'4.
      \tweak #'duration-log #0
      g'!2 s8 \xLV #8 ges'1_\laissezVibrer
    }
  >>
  \bar "S"
  r1\sustainOn
  \clef bass
  \ottava #-1
  \set Staff.ottavation = #"8"
  <a,,, c,,>
  \ottava #0
  %s4
  \clef treble
  s1 r2 es'\breve
  \clef bass
  \ottava #-1
  \set Staff.ottavation = #"8"
  <a,,, c,, des,, es,,>1
  \ottava #0
  \bar ""
  \break  
  \clef treble
  <<
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
    \new Staff = "RH" {
      %\accidentalStyle dodecaphonic
      \rechts
    }
    \new Staff = "LH" {
      %\accidentalStyle dodecaphonic
      \links
    }
  >>
}