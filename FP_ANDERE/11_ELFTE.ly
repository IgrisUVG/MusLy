\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "11" }
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
  <des' e g as c>1<dis fis g d'!><e f! gis dis'><es fes a e'!>
  \cadenzaOn
  <d e! b' fis'>1\fermata
  s4 s32
  \cadenzaOff
  \bar "|"
  \break
  g'2
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \omit Staff.TimeSignature
  <e fis b>1<cis g' a c!><d! fis a b><h! f'! g b>
  \cadenzaOn
  <<
    {
      <e fis a>1
    }
    \\
    {
      d4^( g,4. as8
      \override Beam.grow-direction = #RIGHT
      a64[ b h c cis d dis e f fis g gis a b h c
      \top cis d dis e f fis g]
      \override Beam.grow-direction = #'()
      gis64[ a b h c cis d dis e f fis])
    }
  >>
  \cadenzaOff
  \bar "|"
  \break
  \bot
  h,,,,16
}

%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  s1\pp
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