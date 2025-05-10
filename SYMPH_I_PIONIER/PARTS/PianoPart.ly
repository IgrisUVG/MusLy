\version "2.19.15"

\language "deutsch"

%\header {
%  title = "Pioniersymphonie"
%  subtitle = "Piano"
%  %meter = "Grave"
%  composer = "I. G."
%  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
%}

#(ly:set-option 'relative-includes #t)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  indent = 10
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override BarNumber.break-visibility = ##(#f #t #t)
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%%%% RH %%%%%%%%%%%%
\include "../rechts.ly"
%%%%%%%%%%% LH %%%%%%%%%%%%
\include "../links.ly"
%%%%%%%%%%%%D%%%%%%%%%%%%

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = \markup {\fontsize #3 "Pioniersymphonie"}
    subtitle = "Piano"
    %meter = "Grave"
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  
  %%%%%%%%%%%%%%%%%%%%%%%%%% ERsTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \rechts
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \links
      %\new Dynamics = "PED" \pedal
    >>
    \header {
      title = "Erste Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% DRITTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  \score {
    \new PianoStaff
    <<
      \new Staff = "RH" \rechtsDrei
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \linksDrei
      %\new Dynamics = "PED" \pedal
    >>
    \header {
      title = "Dritte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
  \pageBreak
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%% VIERTE TEIL %%%%%%%%%%%%%%%%%%%%%%%%%%
  
  \score {
    \new PianoStaff
    <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "RH" \rechtsVier
      %\new Dynamics = "DYN" \dynamic
      \new Staff = "LH" \linksVier
      %\new Dynamics = "PED" \pedal
    >>
    \header {
      title = "Vierte Teil"
      subtitle = ##f
      subsubtitle = ##f
      composer = ##f
      %breakbefore = ##t
    }
  }
  
}