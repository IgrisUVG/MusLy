\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #3 "10" }
  meter = "Lent"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #23
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
pocoDim =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco dimin.")

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \key ges \major
  \time 4/4
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  \once\override Slur.positions = #'(1 . 0)
  des''1( d2.
  \stemUp
  c4 b1 as2. ges4 f1^~ f)
  ges^\shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5))~
  \stemNeutral
  ges16
  %\once\override Slur.positions = #'(1 . 2.5)
  as^( b ces f es b des^~
  \stemUp
  des4^~ des16) es^( f ges
  \stemNeutral
  a4^~ a16)
  \once\override Slur.positions = #'(1 . 1)
  as^( d, f
  \stemUp
  e d c h f' e c a'
  \stemNeutral
  ges!2^~
  \stemUp
  ges16) es^( des b des ges f8)
  \stemNeutral
  d16^( ges, d'8^~ d8.)
  \once\override Slur.positions = #'(1 . 1)
  c16^( b as g as
  \stemUp
  es'8. d16
  \stemNeutral
  des c b c^~ c2^~ c16)
  \once\override Slur.positions = #'(1 . 1)
  g^( a c
  es des ces a d as as8^~ as4^~ as16)
  \shape #'(
             (( 0 . 0) (0 . 0) (0 . 0) (0 . 1))
             ((0.5 . 1.5) (1 . 0) (0 . 0) (0 . -3.5))
             ) Slur
  b^( ces des
  es4. des8 ces16 ges
  \stemUp
  b4 as8 b1)
  as1^\shape #'((0 . 0.5) (2 . 2) (-3 . 2) (0 . 0.5))~
  <as ges'>_\fermata
  \bar "|."
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key ges \major
  \time 4/4
  %\set Staff.printKeyCancellation = ##f
  \stemDown
  ges,8^\markup {\italic legato} des' ges des ges
  \change Staff = RH
  des' ges des
  \change Staff = LH
  f,, d' f a d, a'
  \change Staff = RH
  d f
  \change Staff = LH
  ges,, des'! ges des ges
  \change Staff = RH
  des'! ges des
  \change Staff = LH
  b,, f' d' b f' b
  \change Staff = RH
  d
  \change Staff = LH
  b
  c,, f c' a f' a c
  \change Staff = RH
  f
  \change Staff = LH
  f,, ces'! d ces f as! ces!
  \change Staff = RH
  d
  \change Staff = LH
  ges,, des' b' des, ges
  \change Staff = RH
  des' b' des,
  \change Staff = LH
  ges,, des' ges des ges
  \change Staff = RH
  des' ges des
  \change Staff = LH
  f,, d' f a d, a'
  \change Staff = RH
  d f
  \change Staff = LH
  ges,, des'! b'! des, ges
  \change Staff = RH
  des' ges des
  \change Staff = LH
  b,, b' f' b, f' b
  \change Staff = RH
  f'
  \change Staff = LH
  b,
  f, c' a' c, f a c
  \change Staff = RH
  f
  \change Staff = LH
  f,, ces'! as'! d, f as ces d
  ges,, des' b' des, ges
  \change Staff = RH
  des' ges des
  \change Staff = LH
  ges,, ces ges' es ces ges'
  \change Staff = RH
  es' ces
  \change Staff = LH
  ges, des' b'
  \change Staff = RH
  des es ges b des 
  \override Script.extra-offset = #'(0 . 2)
  s1-\fermata
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
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}