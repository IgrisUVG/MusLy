\version "2.18.0"

\language "deutsch"

\header {
  title = "Вальс II"
  meter = "Lento dolce"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #15
  markup-system-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #20
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
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}
%%%%%%%%% SCRIPTS %%%%%%%%%
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
wstem = #(define-music-function (parser location extent) (pair?) #{ 
     \once \override Staff.Stem #'X-extent = #extent 
#}) 
%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key g \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)

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
      r 
      \once \override Accidental.extra-offset = #'(.7 . 0)
      <g as c>4. r8 <g c> r <g b>4.r8 c r <f, as>4. r4 r8 <fis a!>4. r8 c' g'2.
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
links = \relative {
  \clef bass
  \key g \minor
  \time 3/4
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
dynamic = {
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
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}