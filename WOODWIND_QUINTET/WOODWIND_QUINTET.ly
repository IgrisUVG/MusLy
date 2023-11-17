\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Голуби в солнечном небе"
  meter = "Adagio"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 18)
\paper {
  %#(set-paper-size "a4")
  indent = 1.5\cm  % space for instrumentName
  %short-indent = 1.0\cm  % space for shortInstrumentName
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  score-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 15
}
%\layout {
%  \context { \RemoveEmptyStaffContext }
%}
\include "flute.ly"
\include "oboe.ly"
\include "clarinet.ly"
\include "fagotto.ly"
\include "corno.ly"
\score {
  \new StaffGroup
  <<
    \new StaffGroup = "StaffGroup_woodwinds"\with {
      systemStartDelimiter = #'SystemStartSquare
    }
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
        %\set Staff.shortInstrumentName = \markup {
        %  \right-column {
        %    "Cl"
        %    \line { "in B" }
        %  }
        %}
        \transpose b c'
        \clarinettoMusicErste
      }
      %\new Dynamics \dynamicClarinet
      \new Staff = "Staff_fagotto" {
        \set Staff.instrumentName = #"Fagotto"
        %\set Staff.shortInstrumentName = #"Fag"
        \fagottoMusicErste
      }
    >>
    \new Staff = "Staff_horn" {
      \set Staff.instrumentName = \markup {
        \right-column {
          "Corno"
          \line { "in F" }
        }
      }
      %\set Staff.shortInstrumentName = \markup {
      %  \right-column {
      %    "Cor"
      %    \line { "in F" }
      %  }
      %}
      \transpose f c'
      \cornoMusicErste
    }
  >>
}

\score {
  \new StaffGroup
  <<
    \new StaffGroup = "StaffGroup_woodwinds"\with {
      systemStartDelimiter = #'SystemStartSquare
    }
    <<
      \new Staff = "Staff_flute" {
        %\set Staff.instrumentName = #"Flauto"
        %\set Staff.shortInstrumentName = #"Fl"
        \fluteMusicZweite
      }
      %\new Dynamics \dynamicFlute
      \new Staff = "Staff_oboe" {
        %\set Staff.instrumentName = #"Oboe"
        %\set Staff.shortInstrumentName = #"Ob"
        \oboeMusicZweite
      }

      \new Staff = "Staff_clarinet" {
        %\set Staff.instrumentName = \markup {
        %  \right-column {
        %    "Clarinetto"
        %    \line { "in B" }
        %  }
        %}
        %\set Staff.shortInstrumentName = \markup {
        %  \right-column {
        %    "Cl"
        %    \line { "in B" }
        %  }
        %}
        \transpose b c'
        \clarinettoMusicZweite
      }
      %\new Dynamics \dynamicClarinet
      \new Staff = "Staff_fagotto" {
        %\set Staff.instrumentName = #"Fagotto"
        %\set Staff.shortInstrumentName = #"Fag"
        <<
          \fagottoMusicZweite
          \fagottoDynamicZweite
        >>
      }
    >>
    \new Staff = "Staff_horn" {
      %\set Staff.instrumentName = \markup {
      %  \right-column {
      %    "Corno"
      %    \line { "in F" }
      %  }
      %}
      %\set Staff.shortInstrumentName = \markup {
      %  \right-column {
      %    "Cor"
      %    \line { "in F" }
      %  }
      %}
      <<
        \transpose f c'
        \cornoMusicZweite
        \cornoDynamicZweite
      >>
    }
  >>
}
