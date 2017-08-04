\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "SCHABLON"
  meter = "Von Langsam bis Rasch"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

#(set-default-paper-size "a4" 'landscape)

\paper {
  %#(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #20
  %left-margin = 15
  %right-margin = 15
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
         #(lambda (m p)
            (let ((mu (ly:music-property m 'element)))
              (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
              (ly:make-music-relative! mu p)
              (ly:music-transpose mu (ly:make-pitch arg 0 0)))
            p)
         \transpose c' $(ly:make-pitch arg 0 0) $mus
         $mus
     >>
   #})
pocoCr = 
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco cresc.")
pocoDim =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco dimin.")
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%% INCLUDE %%%%%%%%%


%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key c \major
  \time 4/4  
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key c \major
  \time 4/4
  %\set Staff.printKeyCancellation = ##f
  
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