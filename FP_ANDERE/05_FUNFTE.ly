\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "5" }
  %meter = "Allegro"
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #15
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

motifEins = \relative {c'''4( c, <fis as>2)}
motifZwei = \relative {c'''4( c, <ges' as>2)}
motifDrei = \relative {c'''4( c, <fis gis>2)}
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key c \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set Staff.printKeyCancellation = ##f
  <des' g c>2-><a h c>-><b fis' as>-><fis'' as>
  \repeat unfold 8 { \motifEins }
  \break
  <<
    {
      \motifZwei
    }
    \\
    {
      s8 f! f f f f f f
    }
    \\
    {
      \voiceTwo
      <b, e a>2 s
    }
  >>
  <<
    {
      \repeat unfold 6 { \motifZwei }
    }
    \\
    {
      \repeat unfold 11 { f'8 f f f }
    }
  >>
  <<
    {
      \repeat unfold 6 { \motifDrei }
      c'4( c, <fis gis>)
      \stemDown
      <ais dis e>
    }
    \\
    {
      \repeat unfold 13 { e8 e e e }
      e e s4
    }
  >>
  \ottava #1
  \set Staff.ottavation = #"8"
  <e' g! c>
  \ottava #0
  r r2
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key c \major
  \time 4/4
  \set Staff.printKeyCancellation = ##f
  %\set Timing.beamExceptions = #'()
  \makeOctaves #-1 {
    e2-> es-> d2. des4 c'2 h8 fis4.~ fis8 f4 es8 g2 r8 d4. es4 d8 des~
    des4 as'~ as8 b4 h8 c4 b8 a as4 d~ 
    d8 des h![ es,] a as g4 a!8 g d4 es f!8 ges g!8. a16 b8 h cis d es[ f!]
    ges2
  }
  \override TrillSpanner.extra-offset = #'(0 . -3)
  \override TrillSpanner.bound-details.left.text = \markup{ 
    \musicglyph #"scripts.trill"
    \raise #1.65 \teeny \doubleflat
  }
  des,~(\startTrillSpan
  #(define afterGraceFraction (cons 15 16))
  \afterGrace des1 {c16[\stopTrillSpan des]}
  es16 d! es e f e f ges g ges g as a as a b
  h8.) e,16( b'4~ b8.) es,16( as g!8.)
  \once\override Slur.positions = #'(1 . 1)
  a!16( as g ges f e es d des c h b a as g ges
  f e es d des c h b)
  \makeOctaves #1 {
    \override TupletBracket #'direction = #DOWN
    \times 2/3 {
      a4 as g
    }
    ges1-^
  }
  \clef treble
  g'''!4. a8 h2 d8 f,!4 e gis8\noBeam h cis h2
  \clef bass r16
  \shape #'((0 . -1) (0 . 1) (0 . 1) (2 . -.5)) Slur
  e,,,( h' e gis h cis dis e c! h a g!8 e16 g)
  <<
    {
      \stemDown
      h2
    }
    \\
    {
      s4
      \shape #'((0 . 0) (-.5 . 1) (5 . 2) (6 . -5)) Slur
      gis'8^( e16 gis)
    }
  >>
  \clef treble
  <a h>2-> h, <a' h>2-> h, <a' h>2-> h,4
  <<
    {
      <fis'' gis>4
    }
    \\
    {
      e8 e
    }
  >>
  <e g! c>4 r r2
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  s1\ff 
  \once\override DynamicText.extra-offset = #'(-1 . 10.5)
  s2\sf 
  \once\override DynamicText.extra-offset = #'(0 . 2)
  s\p 
  \once\override DynamicText.extra-offset = #'(.5 . 2)
  s1*6\pp s2 s2\cresc s1 
  \once\override DynamicText.extra-offset = #'(-2.3 . 9)
  s4\sf
  \once\override DynamicText.extra-offset = #'(-1.5 . 1)
  s2.\ppp s1*4 s2 
  \once\override DynamicText.extra-offset = #'(0 . -2.5)
  s\sf
  \once\override DynamicText.extra-offset = #'(-1 . 4)
  s8\p
  \once\override DynamicText.extra-offset = #'(-3 . -4)
  s8\fff s2. s1*8\mp
}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}