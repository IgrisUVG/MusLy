\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #40
  system-system-spacing.basic-distance = #30
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

global = {
  \key fis \minor
  \time 3/4  
}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark.extra-offset = #'(0 . 3)
  \mark "Lento"
  a'2. fis a e cis'! h gis! g f ges f f des f as f
  cis h' a <fis h> a fis d fis a fis d d e cis
  a'4. <gis' cis>8<fis h><e gis><d fis>2. d, d 
  \cadenzaOn
  \override Script.extra-offset = #'(0 . -.5)
  fis_\fermata s s2
  \cadenzaOff
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
middle = \relative {  
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  %\set Staff.printKeyCancellation = ##f
  \set Timing.beamExceptions =
  \beamExceptions { 8[ 8 8] 8[ 8 8] }
  <<
    {
      \voiceTwo
      s8 cis2~ cis8
    }
    \\
    {
      s4 e2
    }
    \\
    {
      \voiceOne
      r8 s4 a4.
    }
    \\
    {
      s2
      \change Staff = RH
      d4
      \change Staff = LH
    }
    \\
    {
      \voiceTwo
      s2 s8 
      \change Staff = RH
      cis
      \change Staff = LH      
    }
  >>
  \stemUp
  d,,8^\markup {\italic simile} a' e'
  \change Staff = RH
  \stemDown
  fis a cis
  \change Staff = LH
  \stemUp
  f,, c' g'
  \change Staff = RH
  \stemDown
  a c d
  \change Staff = LH
  \stemUp
  c,, g' e'
  \change Staff = RH
  \stemDown
  g a h
  \change Staff = LH
  \stemUp
  fis, e' a
  \change Staff = RH
  \stemDown
  cis fis a
  \change Staff = LH
  \stemUp
  g,, d' a'
  \change Staff = RH
  \stemDown
  h d e
  \change Staff = LH
  \stemUp
  a,, e' gis
  \change Staff = RH
  \stemDown
  h c e
  \change Staff = LH
  \stemUp
  as,, es' g
  \change Staff = RH
  \stemDown
  b c es
  \change Staff = LH
  \stemUp
  f,, c' es
  \change Staff = RH
  \stemDown
  as c es
  \change Staff = LH
  \stemUp
  es,, b' f'
  \change Staff = RH
  \stemDown
  b des es
  \change Staff = LH
  \stemUp
  d,,! a' f'
  \change Staff = RH
  \stemDown
  a b c
  \change Staff = LH
  \stemUp
  des,, as' es'
  \change Staff = RH
  \stemDown
  f as c
  \change Staff = LH
  \stemUp
  b,, f' des'
  \change Staff = RH
  \stemDown
  f as b
  \change Staff = LH
  \stemUp
  des,, as' f'
  \change Staff = RH
  \stemDown
  as c es
  \change Staff = LH
  \stemUp
  ges,, des' as'
  \change Staff = RH
  \stemDown
  b des es
  \change Staff = LH
  \stemUp
  des,, as' es'
  \change Staff = RH
  \stemDown
  f as es'
  \change Staff = LH
  \stemUp
  fis,, cis' e
  \change Staff = RH
  \stemDown
  fis gis a
  \change Staff = LH
  \stemUp
  g, d' a'
  \change Staff = RH
  \stemDown
  d e fis
  \change Staff = LH
  \stemUp
  d,, a' fis'
  \change Staff = RH
  \stemDown
  h cis e
  \change Staff = LH
  \stemUp
  g,, d' a'
  \change Staff = RH
  \stemDown
  h d e
  \change Staff = LH
  \stemUp
  c,, g' d'
  \change Staff = RH
  \stemDown
  g c d
  \change Staff = LH
  \stemUp
  d,, a' e'
  \change Staff = RH
  \stemDown
  fis a cis
  \change Staff = LH
  \stemUp
  h,, fis' d'
  \change Staff = RH
  \stemDown
  fis a h
  \change Staff = LH
  \stemUp
  d,, a' fis'
  \change Staff = RH
  \stemDown
  a cis e
  \change Staff = LH
  \stemUp
  g,, d' a'
  \change Staff = RH
  \stemDown
  h d e
  \change Staff = LH
  \stemUp
  d,, a' e'
  \change Staff = RH
  \stemDown
  fis a e'
  \change Staff = LH
  \stemUp
  g,, d' fis
  \change Staff = RH
  \stemDown
  g h cis
  \change Staff = LH
  \stemUp
  gis, d' e
  \change Staff = RH
  \stemDown
  h' g'! f
  \change Staff = LH
  \stemUp
  a,, e' fis
  \change Staff = RH
  \stemDown
  gis a h
  \change Staff = LH
  \stemUp
  fis, cis' e
  \change Staff = RH
  \stemDown
  a cis gis'
  \change Staff = LH
  \stemUp
  e,,[ cis' e a h cis]
  d,, a' e'
  \change Staff = RH
  \stemDown
  fis a cis
  \change Staff = LH
  \stemUp
  b,, f' d'
  \change Staff = RH
  \stemDown
  f a c
  \change Staff = LH
  \stemUp
  g, d' fis!
  \change Staff = RH
  \stemDown
  a h cis
  \change Staff = LH
  \stemUp
  \cadenzaOn
  \tweak #'duration-log #1 d,,4 \teeny a'
  \change Staff = RH
  a' d 
  \stemDown
  \override Script.font-size = #3
  a' fis' e'2^\fermata
  \cadenzaOff
  \bar "|."
}
links = \relative {
  \clef bass
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  fis,2. d f c fis g a as f es d! des b des ges des
  fis g d g c, d h d g d g gis a fis e d b g' 
  \cadenzaOn
  \override NoteColumn.ignore-collision = ##t
  d^\fermata s s2
  \cadenzaOff
  \bar "|."
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" {
      \global
      \rechts
    }
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" {
      \global
      <<
        {
          \middle
        }
        \\
        {
          \links
        }
      >>
    }
  >>
}