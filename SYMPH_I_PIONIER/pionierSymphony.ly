\version "2.19.15"

\language "deutsch"

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16)
\paper {
  system-separator-markup = \slashSeparator
  %#(set-paper-size "a4")
  indent = 1.5\cm
  short-indent = 1.0\cm

  top-system-spacing.basic-distance = #15
  top-markup-spacing.basic-distance = #8
  %markup-system-spacing.basic-distance = #26
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #15
  two-sided = ##t
  inner-margin = 20
  outer-margin = 10
}
\layout {
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #t #t)
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
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override StaffGroup.InstrumentName.self-alignment-X = #RIGHT
  \override PianoStaff.InstrumentName.self-alignment-X = #RIGHT
}

\include "flute.ly"
\include "oboe.ly"
\include "clarinet.ly"
\include "fagotto.ly"
%%%%%%%%%%%%%%%%%%

\include "corno1.ly"
\include "corno2.ly"
\include "trumpet.ly"
%%%%%%%%%%%%%%%%%%

\include "rechts.ly"
\include "links.ly"
%\include "pedal.ly"
%%%%%%%%%%%%%%%%%%

\include "timpani.ly"
%%%%%%%%%%%%%%%%%%

\include "vni1.ly"
\include "vni2.ly"
\include "vle.ly"
\include "vc.ly"
\include "cb.ly"
%%%%%%%%%%%%%%%%%%

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
      \new StaffGroup = "StaffGroup_woodwinds"
      <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"Flauto"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusic
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"Oboe"
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

      %%%%%%%%%%%%%%%% PIANO %%%%%%%%%%%%%%%%
      \new PianoStaff  \with {
        instrumentName = #"Piano"
        shortInstrumentName = #"F-p"
        %fontSize = #1
        %\override StaffSymbol.staff-space = #(magstep 1)
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        %\consists #Span_stem_engraver
      }
      <<
        \new Staff = "RH" \RemoveEmptyStaves \rechts
        %\new Dynamics = "DYN" \dynamicPiano
        \new Staff = "LH" \RemoveEmptyStaves \links
        %\new Dynamics = "PED" \RemoveEmptyStaves \pedal
      >>

      %%%%%%%%%%%%%%%% DRUMS %%%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_drums" <<
        \new Staff = "Staff_timpani" {
          \set Staff.instrumentName = #"Timpani"
          \set Staff.shortInstrumentName = #"Timp"
          \timpMusic
        }
      >>

      %%%%%%%%%%%%%%% STRINGS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_strings" <<
        \new StaffGroup = "GrandStaff_violins" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_violinI" {
            \set Staff.instrumentName = #"Violini I"
            \set Staff.shortInstrumentName = #"V-ni I"
            \vniOneMusic
          }

          \new Staff = "Staff_violinII" {
            \set Staff.instrumentName = #"Violini II"
            \set Staff.shortInstrumentName = #"V-ni II"
            \vniTwoMusic
          }
        >>
        \new Staff = "Staff_viola" {
          \set Staff.instrumentName = #"Viole"
          \set Staff.shortInstrumentName = #"V-le"
          \vleMusic
        }

        \new StaffGroup = "GrandStaff_bassi" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_cello" {
            \set Staff.instrumentName = #"Violoncelli"
            \set Staff.shortInstrumentName = #"Vc"
            \vcMusic
          }
          \new Staff = "Staff_bass" {
            \set Staff.instrumentName = #"Contrabassi"
            \set Staff.shortInstrumentName = #"Cb"
            \cbMusic
          }
        >>
      >>
    >>
    %\midi {}
    %\paper { }
    %\layout { }
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
      \new StaffGroup = "StaffGroup_woodwinds"
      \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"Flauto"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusicDrei
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"Oboe"
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
      \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
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

      %%%%%%%%%%%%%%%% PIANO %%%%%%%%%%%%%%%%
      \new PianoStaff  \with {
        instrumentName = #"Piano"
        shortInstrumentName = #"F-p"
        %fontSize = #1
        %\override StaffSymbol.staff-space = #(magstep 1)
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        %\consists #Span_stem_engraver
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      <<
        \new Staff = "RH" \RemoveEmptyStaves \rechtsDrei
        %\new Dynamics = "DYN" \dynamicPiano
        \new Staff = "LH" \RemoveEmptyStaves \linksDrei
        %\new Dynamics = "PED" \RemoveEmptyStaves \pedal
      >>

      %%%%%%%%%%%%%%%% DRUMS %%%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_drums"
      \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
      <<
        \new Staff = "Staff_timpani" {
          \set Staff.instrumentName = #"Timpani"
          \set Staff.shortInstrumentName = #"Timp"
          \timpMusicDrei
        }
      >>
      %%%%%%%%%%%%%%% STRINGS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_strings"
      <<
        \new StaffGroup = "GrandStaff_violins" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_violinI" {
            \set Staff.instrumentName = #"Violini I"
            \set Staff.shortInstrumentName = #"V-ni I"
            \vniOneMusicDrei
          }

          \new Staff = "Staff_violinII" {
            \set Staff.instrumentName = #"Violini II"
            \set Staff.shortInstrumentName = #"V-ni II"
            \vniTwoMusicDrei
          }
        >>
        \new Staff = "Staff_viola" {
          \set Staff.instrumentName = #"Viole"
          \set Staff.shortInstrumentName = #"V-le"
          \vleMusicDrei
        }

        \new StaffGroup = "GrandStaff_bassi" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_cello" {
            \set Staff.instrumentName = #"Violoncelli"
            \set Staff.shortInstrumentName = #"Vc"
            \vcMusicDrei
          }
          \new Staff = "Staff_bass" {
            \set Staff.instrumentName = #"Contrabassi"
            \set Staff.shortInstrumentName = #"Cb"
            \cbMusicDrei
          }
        >>
      >>
    >>
    %\midi {}
    %\paper { }
    \layout {
      \context {
        \Score
        %\remove "Timing_translator"
        %\remove "Default_bar_line_engraver"
        %\remove "Bar_number_engraver"
        %\RemoveEmptyStaves
        %\override VerticalAxisGroup.remove-first = ##t
      }
    }
    \header {
      title = "Dritte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%

  \score {
    <<
      %%%%%%%%%%%%%%% WOODWINDS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_woodwinds"
      <<
        \new Staff = "Staff_flute" {
          \set Staff.instrumentName = #"Flauto"
          \set Staff.shortInstrumentName = #"Fl"
          \fluteMusicVier
        }

        \new Staff = "Staff_oboe" {
          \set Staff.instrumentName = #"Oboe"
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

      %%%%%%%%%%%%%%%% PIANO %%%%%%%%%%%%%%%%
      \new PianoStaff  \with {
        instrumentName = #"Piano"
        shortInstrumentName = #"F-p"
        %fontSize = #1
        %\override StaffSymbol.staff-space = #(magstep 1)
        %\override StaffGrouper.staff-staff-spacing.basic-distance = #15
        %\consists #Span_stem_engraver
      }
      <<
        \new Staff = "RH" \RemoveEmptyStaves \rechtsVier
        %\new Dynamics = "DYN" \dynamicPiano
        \new Staff = "LH" \RemoveEmptyStaves \linksVier
        %\new Dynamics = "PED" \RemoveEmptyStaves \pedal
      >>

      %%%%%%%%%%%%%%%% DRUMS %%%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_drums" <<
        \new Staff = "Staff_timpani" {
          \set Staff.instrumentName = #"Timpani"
          \set Staff.shortInstrumentName = #"Timp"
          \timpMusicVier
        }
      >>

      %%%%%%%%%%%%%%% STRINGS %%%%%%%%%%%%%%%
      \new StaffGroup = "StaffGroup_strings" <<
        \new StaffGroup = "GrandStaff_violins" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_violinI" {
            \set Staff.instrumentName = #"Violini I"
            \set Staff.shortInstrumentName = #"V-ni I"
            \vniOneMusicVier
          }

          \new Staff = "Staff_violinII" {
            \set Staff.instrumentName = #"Violini II"
            \set Staff.shortInstrumentName = #"V-ni II"
            \vniTwoMusicVier
          }
        >>
        \new Staff = "Staff_viola" {
          \set Staff.instrumentName = #"Viole"
          \set Staff.shortInstrumentName = #"V-le"
          \vleMusicVier
        }

        \new StaffGroup = "GrandStaff_bassi" \with {
          systemStartDelimiter = #'SystemStartSquare
        }
        <<
          \new Staff = "Staff_cello" {
            \set Staff.instrumentName = #"Violoncelli"
            \set Staff.shortInstrumentName = #"Vc"
            \vcMusicVier
          }
          \new Staff = "Staff_bass" {
            \set Staff.instrumentName = #"Contrabassi"
            \set Staff.shortInstrumentName = #"Cb"
            \cbMusicVier
          }
        >>
      >>
    >>
    %\midi {}
    %\paper { }
    %\layout { }
    \header {
      title = "Vierte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }

}