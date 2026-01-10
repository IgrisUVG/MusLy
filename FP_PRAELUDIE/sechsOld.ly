\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsSechs = {
  \clef treble
  \key d \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  <cis' e'>8. <h d'>16~ q4 <cis' e'>8 <d' fis'>~ q4
  <c' e'>8. <h d'>16~ q4 <c' e'>8 <d' g'>~ q4
  <e' a'>8. <d' fis'>8 <cis' e'>8.~ q2
  <e' a'>8. <d' fis'>8 <c' e'>4 <e' a'>8 <d' f'> <cis' e'>8.~ q2  r
  <e' a' cis'' e''>8. <d' g' h' d''>16~ q4 <e' a' cis'' e''>8 <fis' h' d'' fis''>~ q4
  <e' a' c'' e''>8. <d' g' h' d''>16~ q4 <e' a' c'' e''>8 <g' b' d'' g''>~ q4
  \stemDown
  e'''16( cis''' e'' fis'' a''4~ a''16) h''\( h'' h'' h''4\)
  <e'' e'''>16 <c'' c'''> <e' e''> <f' f''> <g' g''>4~ <g' g''>16 q q q <g' b' d'' g''>4
  \stemUp
  e''8. d''16^~ d''4 e''8 fis''^~ fis''4
  e''8. d''16^~ d''4 e''8 g''^~ g''4
  s2
  \stemNeutral
  <<
    {
      \repeat tremolo 8 a'16
      e''8. d''16~ d''4 e''8 fis''~ fis''4
      e''8. d''16~ d''4 e''8 g''~ g''4
      a''8. fis''8 e''8.~ e''2
      a''8. fis''8 e''4 a''8 f'' e''8.~ e''2
    }
    \\
    {
      s2 \repeat unfold 72 {a'16}
    }
  >>
  \stemNeutral
  a'16 a' a'32( e'' g'' a'' c'''4)
  <e'' h'' e'''>8. <d'' a'' d'''>16~ q4 <e'' h'' e'''>8 <fis'' cis''' fis'''>~
  q4~ q2
  \override Script.font-size = #-3
  \override ParenthesesItem.font-size = #2
  r4-\parenthesize-\fermata
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \shape #'((0 . 0) (0 . 0) (0 . 0) (2.5 . 0)) Slur
  cis''32_( d'' cis'' h' a' g' fis' e'
  fis'16) 
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) Slur
  e'8_( fis'16_~ fis'8) h'32\rest fis'( g' a'
  h' cis'' d'' e'' fis'' g'' fis'' e'' d'' cis'' h' a' g' fis' g' a'~
  a'16) a'8_( g'16 fis'32) g'( a' cis'' d'' h' d'' fis'')
  a''8~( a''32 g'' fis'' e'' fis'' d'' e'' d'' b' a' g' b'
  a' fis' e' d' cis'8~ cis') h <fis' a'>8. q16~ q8. q16
  <<
    {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(2 2 2 2)
      \override DynamicLineSpanner.staff-padding = #3
      s8 h''32( a'' g'' fis'' e'' d'' cis'' h' a' g' fis' e' d'2) s1
      \stemDown
      d''32\rest
      \once  \override Slur.positions = #'(1 . 1)
      cis'''( d''' fis''' a''' g''' fis''' e''' d''' b'' a'' d''' e''' d''' a'' g''
      fis'' a'' cis''' d''' cis''' h'' a'' g''
      \set subdivideBeams = ##f
      e''16) <a' cis'' fis'' a''> q q
    }
    \\
    {
      <cis'' cis'''>16 <d'' d'''> <h'~ h''^~>8 q2 s4
    }
    \\
    {
      s2 s8. <fis' a'>16 q q8 q16
      <cis' fis' cis''> <d' fis' d''> <h_~ fis'~ h'^~>8 q16 <d' fis' g' h'> <d' fis' a'> <d' fis' g'>
      <d' e' fis'> cis' d' a'
      \stemDown
      <cis'' cis'''> <d'' d'''> <h'_~ h''^~>8 q2
    }
  >>
  \stemUp
  <d' fis' g' cis''>16 q8-> q16 <d' d''>( <h h'>8.) <h d' fis' a'>16 q8-> q16~-> q <cis' d' fis' g'>8.->
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \stemNeutral
  \once  \override Slur.positions = #'(1 . 1)
  a''32( d'' e'' fis'' a'' d'' e'' fis'' cis''' d'' fis'' g'' d''' d'' fis'' g''
  h'' d'' g'' a'' h'' d'' g'' a'' h'' d'' fis'' g'' h'' d'' fis'' g''
  a'' d'' e'' fis'' a'' d'' e'' fis'' cis''' d'' fis'' g'' d''' d'' fis'' g''
  h'' d'' g'' a'' h'' d'' g'' a'' h'' cis''' d'''e''' fis''' e''' d''' cis'''
  \set subdivideBeams = ##f
  a''8.) <a' h' d'' a''>16~ q8. q16~ q q q q q <e' g' h' d'' e''>8 <fis' a' d'' fis''>16~
  q8. a'16~ a'8. a'16~ a' a'_\( a' a' a' fis' e' fis'_~ fis'4_~ fis'16\) e'8 fis'16_~ fis'4_~ fis'16
  \noBeam
  <e' h' e''>8._( <fis' cis'' fis''>1)
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \override Score.RehearsalMark.extra-offset = #'(0 . -1)
  \mark \markup {\small{( Какие-то воспоминания )}}
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksSechs = {
  \clef bass
  \key d \major
  \time 4/4
  <<
    {
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \repeat unfold 36 {a8}
      \repeat tremolo 4 a8
    }
    \\
    {
      <a, cis fis>8. <g, h, e>16~ q4 <a, cis fis>8 <h, d fis>~ q4
      <a, c f>8. <g, h, e>16~ q4 <a, c f>8 <b, d f>~ q4
      <c d g>8. <h,! d fis!>8 <a, cis fis>8.~ q2
      <c d g>8. <h, d fis> 8 <a, c f>4 <cis e gis>8 <b, d f> <a, cis fis>8.~ q2 r
    }
  >>
  <a, d fis a>8. <g, c e g>16~ q4 <a, d fis a>8 <h, e g h>8~ q4
  <a, d f a>8. <g, c e g>16~ q4 <a, d f a>8 <b, es f b>~ q4
  \clef treble
  <fis'! a' cis''! e''>4 <e' g' h' d''> <fis' a' c'' es''> <a' h' d'' fis''>
  \clef bass
  <a, c e f a>4 <g, h, d e g> <a, c e f a> <b, es g b>
  \clef treble
  <<
    {
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1 4)
      \set Timing.beatStructure = #'(1 1 1 1)
      \repeat unfold 16 {
        \change Staff = RH \stemDown a'16
        \change Staff = LH \stemUp a'
      }
    }
    \\
    {
      cis'8. h16~ h4 cis'8 d'~ d'4
      c'8. h16~ h4 c'8 d'~ d'4
    }
  >>
  \repeat tremolo 4 {
    \change Staff = RH \stemDown a'16
    \change Staff = LH \stemUp a'
  }
  \clef bass
  \stemNeutral
  \repeat tremolo 8 a16
  <<
    {
      \repeat unfold 72 {a16}
    }
    \\
    {
      cis8. h,16~ h,4 cis8 d~ d4
      c8. h,16~ h,4 c8 d~ d4
      e8. d8 cis!8.~ cis2
      e8. d8 c4 e8 d cis8.~ cis2
    }
  >>
  a16 a  a32( cis' e' g' h'4)
  \clef treble
  <c' g' c''>8. <b f' b'>16~ q4 <c' g' c''>8 <d' a' d''>~ q4~ q2 r
  \clef bass
  <d a cis'>16( <d g h>8. <d a cis'>8) r r4 r
  <d a cis'>8( <d g h> <d a cis'>) r r4 r
  <d a cis'>8 <d g h!>~ <d g h> r <d a cis>8. q16~ q8. q16
  <d g h>2 r16 <d g h> <d fis a> <d a cis'> q q8 q16
  <d g h>8 r r16 <d g h> <d g a> <d g h>
  <<
    {
      \autoBeamOff
      \crossStaff {
        s16 <g b> <fis a> a
      }
      \autoBeamOn
    }
    \\
    {
      <d fis g h> <d, d>8.
    }
  >>
  <g,, g,>8. q16~ q2 <d a cis'>16( <d g h>8) r16 r <d, d> q q
  <d, g, d> q8-> q16~ q4 <d a cis'>16 q8-> q16->~ q <d g h>8.->
  \clef treble
  <d' a' cis''>4. <d' g' h'>8~ q2
  <d' a' cis''>4. <d' g' h'>8~ q4. <d' a' cis''>8
  \clef bass
  r8. <d g h>16~ q8. q16~ q q q q q q8 <d a cis'>16~
  q8. <d g h>16~ q8. q16~ q q q q q8 q16 <d a cis'>~
  q4~ q16 < d g h>8 <d a cis'>16~ q4~ q16
  \noBeam
  <d g>8.( <d, a, d>1)
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamicSechs = {
  \override DynamicLineSpanner.staff-padding = #3
  \override Hairpin.minimum-length = #10
  s1\pp s s s s2 s2\< s1\f s s\pp s\f
  \once\override DynamicText.extra-offset = #'(0 . -2)
  s\p s s2 s\< s1\f s\p s\f s\p s2 s4\< s4\sf s1 s2. s4\pp s1 s s4. s8\ppp s16 s8.\mp\< s4
  s8\f s4.\>  s8.\mf s16\sf s4 s2.\ff s4\sp 
  \once\override DynamicText.extra-offset = #'(0.5 . 0)
  \revert Hairpin.minimum-length
  s2\mp s4\> s16 s16\sf s8\f s4\ff s16\sf s8.\mp  s4\p s16 s8.\< s2.\f s4\> s2.\p s4\>
  s8.\ppp s16\f s4 s16 s8.\> s4\! s8. s16\pp s4 s2\> s4\! s16 s8.\mf s4 s16 s8.\pp
}