\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  %meter = "Grave"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a4")
  indent = 1.2\cm
  short-indent = 0.5\cm
  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #28
  last-bottom-spacing.basic-distance = #15
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 20
  %outer-margin = 10
}

\layout {
  \context {
    \Score
    %\override BarNumber.break-visibility = ##(#f #t #t)
    %\RemoveEmptyStaffContext
  }
  \context {
    \Score
    %\remove "Timing_translator"
    %\remove "Default_bar_line_engraver"
    %\remove "Bar_number_engraver"
    %\RemoveEmptyStaves
    %\override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    %\consists "Timing_translator"
    %\consists "Default_bar_line_engraver"
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
}

\include "../flute.ly"
\include "../oboe.ly"
\include "../clarinet.ly"
\include "../fagotto.ly"
\include "../corno1.ly"
\include "../corno2.ly"
\include "../trumpet.ly"

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #4 "Pioniersymphonie"}
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }

  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    <<
      %%%%%%%%%%%%%%% WOODWINDS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_woodwinds" <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"3 Flauti"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusic
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"3 Oboi"
          \set Staff.shortInstrumentName = #"Ob"
          \oboeMusic
        }
        \new Staff = "Staff_clarinet" {
          \set Staff.instrumentName = \markup {
            \right-column {
              "Clarinetto"
              \line { "in B" }
            }
          }
          \set Staff.shortInstrumentName = \markup {
            \right-column {
              "Cl"
              \line { "in B" }
            }
          }
          \transpose b c'
          \clarinetMusic
        }
        \new Staff = "Staff_fagotti" {
          \set Staff.instrumentName = #"Fagotto"
          \set Staff.shortInstrumentName = #"Fag"
          \fagottoMusic
        }
      >>
      %%%%%%%%%%%%%%% BRASS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_brass"
      <<
        \new StaffGroup = "GrandStaff_corni" \with {
          instrumentName = \markup {
            \right-column {
              "2 Corni"
              \line { "in F" }
            }
          }
          shortInstrumentName = \markup {
            \right-column {
              "Cor"
              \line { "in F" }
            }
          }
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_hornI" {
            \transpose f c'
            \cornoOneMusic
          }
          \new Staff = "Staff_horn2" {
            \transpose f c'
            \cornoTwoMusic
          }
        >>
        \new Staff = "Staff_trumpet1" {
          \set Staff.instrumentName = \markup {
            \right-column {
              "Tromba"
              \line { "in B" }
            }
          }
          \set Staff.shortInstrumentName = \markup {
            \right-column {
              "Tb"
              \line { "in B" }
            }
          }
          \transpose b c'
          \trumpetMusic
        }
      >>
    >>
    \header {
      title = "Erste Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% DRITTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %{
  \score {
    <<
      %%%%%%%%%%%%%%% WOODWINDS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_woodwinds" <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"3 Flauti"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusicDrei
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"3 Oboi"
          \set Staff.shortInstrumentName = #"Ob"
          \oboeMusicDrei
        }
        \new Staff = "Staff_clarinet" {
          \set Staff.instrumentName = \markup {
            \right-column {
              "Clarinetto"
              \line { "in B" }
            }
          }
          \set Staff.shortInstrumentName = \markup {
            \right-column {
              "Cl"
              \line { "in B" }
            }
          }
          \transpose b c'
          \clarinetMusicDrei
        }
        \new Staff = "Staff_fagotti" {
          \set Staff.instrumentName = #"Fagotto"
          \set Staff.shortInstrumentName = #"Fag"
          \fagottoMusicDrei
        }
      >>
      %%%%%%%%%%%%%%% BRASS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_brass"
      <<
        \new StaffGroup = "GrandStaff_corni" \with {
          instrumentName = \markup {
            \right-column {
              "2 Corni"
              \line { "in F" }
            }
          }
          shortInstrumentName = \markup {
            \right-column {
              "Cor"
              \line { "in F" }
            }
          }
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_hornI" {
            \transpose f c'
            \cornoOneMusicDrei
          }
          \new Staff = "Staff_horn2" {
            \transpose f c'
            \cornoTwoMusicDrei
          }
        >>
        \new Staff = "Staff_trumpet1" {
          \set Staff.instrumentName = \markup {
            \right-column {
              "Tromba"
              \line { "in B" }
            }
          }
          \set Staff.shortInstrumentName = \markup {
            \right-column {
              "Tb"
              \line { "in B" }
            }
          }
          \transpose b c'
          \trumpetMusicDrei
        }
      >>
    >>
    \header {
      title = "Dtirtte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%

  \score {
    <<
      %%%%%%%%%%%%%%% WOODWINDS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_woodwinds" <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"3 Flauti"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusicVier
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"3 Oboi"
          \set Staff.shortInstrumentName = #"Ob"
          \oboeMusicVier
        }
        \new StaffGroup = "GrandStaff_clarinetto" \with {
          instrumentName = \markup {
            \right-column {
              "2 Clarinetti"
              \line { "in B" }
            }
          }
          shortInstrumentName = \markup {
            \right-column {
              "Cl"
              \line { "in B" }
            }
          }
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_clarinet1" {
            \transpose b c'
            \clarinetOneMusicVier
          }

          \new Staff = "Staff_clarinet2" {
            \transpose b c'
            \clarinetTwoMusicVier
          }
        >>
        \new Staff = "Staff_fagotti" {
          \set Staff.instrumentName = #"Fagotto"
          \set Staff.shortInstrumentName = #"Fag"
          \fagottoMusicVier
        }
      >>
      %%%%%%%%%%%%%%% BRASS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_brass"
      <<
        \new StaffGroup = "GrandStaff_corni" \with {
          instrumentName = \markup {
            \right-column {
              "2 Corni"
              \line { "in F" }
            }
          }
          shortInstrumentName = \markup {
            \right-column {
              "Cor"
              \line { "in F" }
            }
          }
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_hornI" {
            \transpose f c'
            \cornoOneMusicVier
          }
          \new Staff = "Staff_horn2" {
            \transpose f c'
            \cornoTwoMusicVier
          }
        >>
        \new StaffGroup = "GrandStaff_trombi" \with {
          instrumentName = \markup {
            \right-column {
              "2 Trombi"
              \line { "in B" }
            }
          }
          shortInstrumentName = \markup {
            \right-column {
              "Tb"
              \line { "in B" }
            }
          }
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_trumpet1" {
            \transpose b c'
            \trumpetOneMusicVier
          }
          \new Staff = "Staff_trumpet2" {
            \transpose b c'
            \trumpetTwoMusicVier
          }
        >>
      >>
    >>
    \header {
      title = "Vierte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }

}