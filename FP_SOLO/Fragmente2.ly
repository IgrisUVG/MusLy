\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Фрагменты 2"
  composer = "I. G."
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
  \once\override Score.RehearsalMark.extra-offset = #'(8 . 2)
  \mark \markup {\italic Allegretto}
  \override Staff.TimeSignature.stencil = ##f

}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = {
  \clef bass
  \override Staff.TimeSignature.stencil = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Staff = "LH" \links
  >>
}