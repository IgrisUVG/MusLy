\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Tango"
  meter = "Tango"
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
  \key f \minor
  \time 2/4  
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  r16. c''32(\noBeam d e f g as b h c des d es e
  <d, as' c f>8->) r16. <c, d f as c>32( <ces es f as ces>4)
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key f \minor
  \time 2/4
  %\set Staff.printKeyCancellation = ##f
  R2 <f,, f'>8_> r16. <c' c'>32( <des! des'!>4)
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##t
  s16. s32\< s4. s2*4\sf
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}