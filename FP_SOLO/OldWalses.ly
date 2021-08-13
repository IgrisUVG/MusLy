\version "2.19.15"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #20
  score-system-spacing.basic-distance = #35
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

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

paren =
#(define-event-function (parser location dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
      \normal-text \italic \fontsize #1 (
      #(ly:music-property dyn 'text)
      \normal-text \italic \fontsize #1 )
       }
    #}))

%%%%%%%%%% ONE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsOne = \relative {
  \clef treble
  \key g \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento dolce"
  <<
    {
      \override Slur.positions = #'(3 . 1)
      d''4.( es4 f8 d4. es4 f8 d4. b8 d c~ c4.) d~(
      d es4 f8 d4. es4 f8 d4. b8 d c~ c4.) d4( es8
      g4. b4 c8 a2) s4 g4.( as4 b8 g4.  as4 b8 g4. es8 g f~ f4.) g~(
      g a!4 h8 g4. a4 h8 g4. e8 g fis~ fis4.) g~(
      g a4 h8 g4. a4 h8 g4. e8 g fis~ fis4. gis4 a8 b4.) s s2. s
    }
    \\
    {
      r8 <f, g>4. r8 <f b> r <f a>4. r8 b r <es, g>4. r4 r8 <d f>4. r8 <a' c>
      r8 <f g>4. r8 <f b> r <f a>4. r8 b r <es, g>4. r4 r8 <d f>4. r8 b'
      r <c es>4.
      \once \override Rest.extra-offset = #'(0.5 . 0.5)
      r4 r8 <d f>~ q2
      r8 <b c>4. r8 <b es> r <b d>4. r8 es r <as, c>4. r4 r8 <g h>4. r8 <d' f>
      r <h c e>4. r8 <h e> r <h d>4. r8 e r <a, c>4. r4 r8 <g h>4. r8 <d' fis>
      r <h c e>4. r8 <h e> r <h d>4. r8 e r <a, c>4. r4 r8 <gis h>4. r8 e'
    }
    \\
    {
      \voiceTwo
      s2.*8 s2
      \autoBeamOff
      \crossStaff {b8 s s2 b8 s}
      \autoBeamOn
      s2.*12 s2
      \autoBeamOff
      \crossStaff {d,8 g a b}
      \autoBeamOn
      s2
      \change Staff = LH
      \clef treble
      f'4^\fermata b,2\rest
    }
  >>
  \bar "|."

}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksOne = \relative {
  \clef bass
  \key g \minor
  \time 3/4
  %\set Staff.printKeyCancellation = ##f
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)

  g,8( d' a' b d4)
  f,,8( d' a' b <d f>4)
  es,,8( b' g' b <d f>4)
  f,,8( c' a' c <d f>4)
  g,,8( d' a' b d4)
  f,,8( d' a' b <d f>4)
  es,,8( b' g' b <d f>4)
  d,,8( b' f' b <d f>4)
  \makeOctaves #1 {
    es,,8( b' f' g
  }
  \stemDown
  b
  \change Staff = RH
  \makeOctaves #1 {
    d)
  }
  \change Staff = LH
  \stemNeutral
  \makeOctaves #1 {
    d,,8( b' f' a
  }
  \stemDown
  b
  \change Staff = RH
  \makeOctaves #1 {
    d)
  }
  \change Staff = LH
  \stemNeutral
  c,8( g' d' es g4)
  b,,8( g' d' es <g b>4)
  as,,8( es' c' es <g b>4)
  h,,8( g' d' f <g h>4)
  c,,8( g' d' e g4)
  b,,8( g' d' e <g h>4)
  a,,8( es' c' e <g h>4)
  h,,8( fis' d' fis <g h>4)
  c,,8( g' d' e g4)
  b,,8( g' d' e <g h>4)
  a,,8( es' c' e <g h>4)
  gis,,8( e' h' e <gis h>4)
  \shape #'((-0.3 . -0.1) (2 . 10) (-3 . 1) (-0.3 . -0.3)) Slur
  \makeOctaves #-1 {
    g,,8[( d' a' b]
  }
  d,[ g a b]
  \change Staff = RH
  \stemDown
  \makeOctaves #1 {
    d g a b
    \ottava #1
    \set Staff.ottavation = #"8"
    f''4)_\fermata
    \ottava #0
  }
  r2

}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicOne = {
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  s2.*5\p s2 s4-\markup { \italic { poco a poco cresc. } } s2.*3
  s4 s2\ff s2.\sp s2.*2\cresc s2 s4
  \once\override DynamicText.extra-offset = #'(.5 . -1)
  s2.*2\spp s2 s4-\markup { \italic { poco cresc. } } s2.*5
  s2.\f
  \override DynamicTextSpanner.extra-offset = #'(0 . 7.5)
  \override DynamicText.extra-offset = #'(0 . -.5)
  s\dim s\pp
}
%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%% TWO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsTwo = \relative {
  \clef treble
  \key g \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento dolce"
  <<
    {
      \override Slur.positions = #'(3 . 1)
      d''4.( es4 f8 d4. es4 f8 d4. b8 d c~ c4.) d~(
      d es4 f8 d4. es4 f8 d4. b8 d c~ c4.) d4( es8
      g4. b4 c8 a4. g) g4.( as4 b8 g!4.  as4 b8 ges4. es8 ges f~ f4.) g!~(
      g as4 b8 g4. a4 b8 g4. es8 g f~ f4.) g~(
      g a4 b8 g4. a4 b8 g4. es8 g f~ f4.) es~(
      es f4 g8 es4. f4 g8 es4. c8 es d~ d4.) e4( fis8 b2.) g2. s
    }
    \\
    {
      r8 <f, g>4. r8 <f b> r <f a>4. r8 b r <es, g>4. r4 r8 <d f>4. r8 <a' c>
      r8 <f g>4. r8 <f b> r <f a>4. r8 b r <es, g>4. r4 r8 <d f>4. r8 b'
      r <c es>4.
      \once \override Rest.extra-offset = #'(0.5 . 0.5)
      r4 r8 <d f>~ q2
      r8 <b c>4. r8 <b es> r <b d>4. r8 d r <as ces>4. r4 r8 <g! b>4. r8 <b des>
      r <b c>4. r8 <b es> r <as es'>4. r8 es' r <b d>4. r4 r8 <g b>4. r4
      r8 <as c>4. r8 <c es> r <g b>4. r8 es' r <f, as>4. r4 r8 <g b>4. r8 <b d>
      r <g as c>4. r8 <g c> r <g b>4.r8 c r <f, as>4. r4 r8 <fis a!>4. r8 c' g'2.
      s s
    }
    \\
    {
      \voiceTwo
      s2.*8 s2
      \autoBeamOff
      \crossStaff {b,8 s s2 b8 s}
      \autoBeamOn
      s2.*16 s2
      \autoBeamOff
      \crossStaff {e,8 g a b}
      \autoBeamOn
      s2
      \change Staff = LH
      \clef treble
      e4 b2\rest
    }
  >>
  \bar "|."

}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksTwo = \relative {
  \clef bass
  \key g \minor
  \time 3/4
  %\set Staff.printKeyCancellation = ##f
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)

  g,8( d' a' b d4)
  f,,8( d' a' b <d f>4)
  es,,8( b' g' b <d f>4)
  f,,8( c' a' c <d f>4)
  g,,8( d' a' b d4)
  f,,8( d' a' b <d f>4)
  es,,8( b' g' b <d f>4)
  d,,8( b' f' b <d f>4)
  \makeOctaves #1 {
    es,,8( b' f' g
  }
  \stemDown
  b
  \change Staff = RH
  \makeOctaves #1 {
    d)
  }
  \change Staff = LH
  \stemNeutral
  \makeOctaves #1 {
    d,,8( b' f' a
  }
  \stemDown
  b
  \change Staff = RH
  \makeOctaves #1 {
    d)
  }
  \change Staff = LH
  \stemNeutral
  c,8( g' d' es g4)
  b,,8( ges' d' es <ges b>4)
  as,,8( es' ces' es <ges b>4)
  g,,!8( es' b' des <e g>4)
  c,8( g' d' es g4)
  f,,8( c' as' c <f as>4)
  g,,8( f' b d <g b>4)
  es,,8( b' g' b <d f>4)
  as,8( es' b' c es4)
  g,,8( es' b' c <es g>4)
  f,,8( c' as' c <es g>4)
  g,,8( es' b' d <es g>4)
  as,,8( es' b' c es4)
  g,,8( es' b' c <es g>4)
  f,,8( c' as' c <es g>4)
  fis,,8( d' a'! c <fis a>4)
  \shape #'((0 . -1) (2 . 10) (0 . 2) (-0.3 . -0.3)) Slur
  \makeOctaves #-1 {
    g,,8[( d' a' b]
  }
  e,[ g a b]
  \change Staff = RH
  \stemDown
  \makeOctaves #1 {
    d g a b
    \ottava #1
    \set Staff.ottavation = #"8"
    e'4)
    \ottava #0
  }
  r2

}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicTwo = {
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  s2.*5\p s2 s4-\markup { \italic { poco cresc. } } s2.*3
  s4
  \once\override DynamicText.extra-offset = #'(0 . -.5)
  s2\ff
  \once\override DynamicText.extra-offset = #'(0 . -2)
  s2.\sp
  \override DynamicTextSpanner.extra-offset = #'(-1.5 . -1)
  s2.*3\cresc
  \once\override DynamicText.extra-offset = #'(.5 . -1)
  s2.*3\spp s2.*5-\markup { \italic { poco a poco cresc. } }
  \override DynamicText.extra-offset = #'(0 . -1)
  s2.*4\paren\sp
  \override DynamicText.extra-offset = #'(0 . 1)
  s2.\f
  \override DynamicTextSpanner.extra-offset = #'(2 . 9)
  \override DynamicText.extra-offset = #'(0 . 1)
  \small s\dim \normalsize s\pp
}
%%%%%%%%%%%%%%%%%%%%%%


\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    composer = "I. G."
    tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
  }
  \markup { \vspace #1 }
%%%%%%%%%%%%%%%%%%%%% ERSTE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsOne
      \new Dynamics = "DYN" \dynamicOne
      \new Staff = "LH" \linksOne
    >>
    \header {
      title = "Вальс I"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
%%%%%%%%%%%%%%%%%%%%% ZWEITE %%%%%%%%%%%%%%%%%%%
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \rechtsTwo
      \new Dynamics = "DYN" \dynamicTwo
      \new Staff = "LH" \linksTwo
    >>
    \header {
      title = "Вальс II"
      composer = ##f
    }
    \layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.basic-distance = #13
        \remove "Bar_number_engraver"
      }
    }
  }
}