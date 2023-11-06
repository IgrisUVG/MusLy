\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  %meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #30
  last-bottom-spacing #'basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \remove "Clef_engraver"
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
pocoCr = #(make-music 'CrescendoEvent
            'span-type 'text
            'span-text "poco cresc.")
pocoDim = #(make-music 'CrescendoEvent
             'span-type 'text
             'span-text "poco dimin.")
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%% INCLUDE %%%%%%%%%


%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \time 4/4

}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \time 4/4

}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f

}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}