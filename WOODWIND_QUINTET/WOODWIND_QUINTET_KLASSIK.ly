\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  %meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 18)
\paper {
  %#(set-paper-size "a4")
  indent = 1.5\cm  % space for instrumentName
  %short-indent = 1.0\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-markup-spacing.basic-distance = #15
  score-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #5
  score-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #22
  last-bottom-spacing.basic-distance = #20
  two-sided = ##t
  inner-margin = 18
  outer-margin = 12
  print-all-headers = ##t
}

\layout {
  %\context { \RemoveEmptyStaffContext }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "oboe.ly"
\include "clarinet.ly"
\include "corno.ly"
\include "fagotto.ly"

\score {
  \new StaffGroup
  <<
    \new Staff = "Staff_flute" {
      \set Staff.instrumentName = #"Flauto"
      %\set Staff.shortInstrumentName = #"Fl"
      \fluteMusicErste
    }
    %\new Dynamics \dynamicFlute
    \new Staff = "Staff_oboe" {
      \set Staff.instrumentName = #"Oboe"
      %\set Staff.shortInstrumentName = #"Ob"
      \oboeMusicErste
    }

    \new Staff = "Staff_clarinet" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Clarinetto"
          \line { "in B" }
        }
      }
      %\set Staff.shortInstrumentName = #"Cl"
      %\transpose b c'
      \clarinettoMusicErste
    }
    %\new Dynamics \dynamicClarinet
    \new Staff = "Staff_horn" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Corno"
          \line { "in F" }
        }
      }
      %\set Staff.shortInstrumentName = #"Cor"
      \clef bass
      \transpose c f,
      \removeWithTag #'HornClefChanges
      %\removeWithTag #'HornClefChangesInC
      \cornoMusicErsteInF
    }
    \new Staff = "Staff_fagotto" {
      \set Staff.instrumentName = #"Fagotto"
      %\set Staff.shortInstrumentName = #"Fag"
      \fagottoMusicErste
    }
  >>
  \header {
    title = ##f
    subtitle = ##f
    meter = \markup {\fontsize #3 "Adagio"}
    composer = ##f
  }
}

\score {
  \new StaffGroup
  <<
    \new Staff = "Staff_flute" {
      %\set Staff.instrumentName = #"Fl"
      %\set Staff.shortInstrumentName = #"Fl"
      \fluteMusicZweite
    }
    %\new Dynamics \dynamicFlute
    \new Staff = "Staff_oboe" {
      %\set Staff.instrumentName = #"Ob"
      %\set Staff.shortInstrumentName = #"Ob"
      \oboeMusicZweite
    }

    \new Staff = "Staff_clarinet" {
      %\set Staff.instrumentName = #"Cl"
      %\set Staff.shortInstrumentName = #"Cl"
      <<
        %\transpose b c'
        \clarinettoMusicZweite
        \clarinettoDynamicZweite
      >>
    }
    %\new Dynamics \dynamicClarinet
    \new Staff = "Staff_horn" {
      %\set Staff.instrumentName = #"Cor"
      %\set Staff.shortInstrumentName = #"Cor"
      <<
        \clef treble
        \transpose c f,
        \removeWithTag #'HornClefChanges
        %\removeWithTag #'HornClefChangesInC
        \cornoMusicZweiteInF
        \cornoDynamicZweite
      >>
    }
    \new Staff = "Staff_fagotto" {
      %\set Staff.instrumentName = #"Fag"
      %\set Staff.shortInstrumentName = #"Fag"
      <<
        \fagottoMusicZweite
        \fagottoDynamicZweite
      >>
    }
  >>
  \header {
    title = ##f
    subtitle = ##f
    meter = \markup {\fontsize #3 "Allegro"}
    composer = ##f
  }
  \layout {
    indent = 5
  }
}
