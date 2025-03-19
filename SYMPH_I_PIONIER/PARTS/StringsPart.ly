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

\include "../vni1.ly"
\include "../vni2.ly"
\include "../vle.ly"
\include "../vc.ly"
\include "../cb.ly"

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
    \new StaffGroup = "StaffGroup_strings" <<
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
    \header {
      title = "Dritte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }
  %}
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  
  \score {
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
    \header {
      title = "Vierte Teil"
      composer = ##f
      %breakbefore = ##t
    }
  }
}