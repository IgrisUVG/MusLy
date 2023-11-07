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
    %\remove "Clef_engraver"
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
  %\time 7/8
  %\compoundMeter #'((3 8) (2 4))
  \compoundMeter #'((3 4 8))
  \partial 4.
  as'8 g4
  \once \override Stem.stencil = ##f
  \override Dots.dot-count = #0
  \tweak #'duration-log #1
  cis4.~
  \stemUp
  cis8 e es h
  \mergeDifferentlyHeadedOn
  <<
    {
      \once \override Stem.stencil = ##f
      fis'2 s4.
      \override Dots.dot-count = #0
      \tweak #'duration-log #1
      h, g!8 b a es
      \once \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      \tweak #'duration-log #1
      as4. h!8 e es b
    }
    \\
    {
      s4. s4 \tuplet 3/2 {d8 cis gis}
      r4 s8 g4 s
      s s8 h2
    }
  >>
  \stemDown
  f'4 s8 r4 \tuplet 3/2 {cis8 c g}
  \compoundMeter #'((2 4 8))
  <<
    {
      \once \override Stem.stencil = ##f
      \override Dots.dot-count = #0
      fis2.
      
    }
    \\
    {
      s2 \tuplet 3/2 {d'8 cis gis}
    }
  >>
  \compoundMeter #'((3 2 3 2 8))
  <<
    {
      \stemDown
      <g c>2 s8 <a c>2 s8
    }
    \\
    {
      s4. r8 f s4. r8 d
    }
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  %\time 7/8
  \compoundMeter #'((3 4 8))
  \partial 4.
  r4 s8
  \shape #'((0 . 0) (0 . -.5) (.5 . -3) (.5 . 3)) Slur
  fis,8_( cis' gis'
  \stemDown
  \top a'2) \bot
  \stemNeutral
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (1 . 0)) Slur
  d,,,8_( a' <g' a> <h d>4) s
  gis,8( dis' ais' cis4) s
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (.9 . 0)) Slur
  f,,8_( c' g' c2)
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (1 . 0)) Slur
  d,,8_( a' e' <a h e>4) s
  \compoundMeter #'((2 4 8))
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (.9 . 0)) Slur
  g,8_( d' <a' h>4) s
  \compoundMeter #'((3 2 3 2 8))
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (.9 . -.2)) Slur
  f,8_( c' g' <a d>4)
  \shape #'((0 . 0) (0 . -.5) (.5 . -2) (.9 . -.2)) Slur
  f,8_( c' g' <h e>4)
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