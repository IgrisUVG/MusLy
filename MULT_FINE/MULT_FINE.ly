\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Fine"
  %meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

%#(set-global-staff-size 16)
\paper {
  indent = 3.0\cm  % space for instrumentName
  %short-indent = 1.5\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #25
  left-margin = 20
  right-margin = 20
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 15
}


\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "clarinet.ly"
\include "cello.ly"
\include "archi.ly"

\score {
  <<
    \new StaffGroup
    <<
      \new Staff = "Staff_flute" {
        \set Staff.instrumentName = #"Flute"
        % shortInstrumentName, midiInstrument, etc.
        % may be set here as well
        \fluteMusic
      }
      \new Staff = "Staff_clarinet" {
        \set Staff.instrumentName =
        \markup { \concat { "Clarinet in B" \flat } }
        % Declare that written Middle C in the music
        %  to follow sounds a concert B flat, for
        %  output using sounded pitches such as MIDI.
        \transposition b
        % Print music for a B-flat clarinet
        \transpose b c' \clarinetMusic
      }
      \new Staff = "Staff_cello" {
        \set Staff.instrumentName = #"Cello"
        \celloMusic
      }
      \new GrandStaff = "GrandStaff_violins" \with {
        systemStartDelimiter = #'SystemStartSquare
      }
      <<
        \new Staff = "Staff_violinI" {
          \set Staff.instrumentName = #"Archi I"
          \archiIMusic
        }
        \new Staff = "Staff_violinII" {
          \set Staff.instrumentName = #"Archi II"
          \archiIIMusic
        }
      >>
    >>
  >>
}