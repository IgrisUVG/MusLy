\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "13" }
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
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
top = \change Staff = "RH"
bot = \change Staff = "LH"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
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

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "In walso"
  <<
    {
      d''2.~ d2 r4
    }
    \\
    {
      r2 <b, e g a>4~ q2 r4
    }
  >>
  e2.~ e2 r4
  <<
    {
      d'2.~ d2 r4
    }
    \\
    {
      r4 fis,( g~ <b, e g a>2) r4
    }
  >>
  r4 <d fis cis'>2
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \override Staff.KeySignature.flat-positions = #'(3)
  \clef bass
  \omit Staff.TimeSignature
  \time 3/4
  g,2.~ g2 r4
  <<
    {
      r2 <g' ais h d>4~ q2 r4
    }
    \\
    {
      \stemUp
      cis,,2.~ cis2 r4
    }
  >>
  g'2.~ g4
  <<
    {
      s2 r4 <gis' h> q
    }
    \\
    {
      as4( fis e2) r4
    }
  >>
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
  %\midi {}
}