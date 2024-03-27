\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Ich muss mich einfach betrinken"
  %meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #10
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
   'span-text "poco dim.")
xLV =
#(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
   #})
top = \change Staff = "RH"
bot = \change Staff = "LH"

\include "changePitch.ly"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  %\key c \minor
  \time 9/8
  \override Score.RehearsalMark.extra-offset = #'(6 . 2)
  \mark "Tempo di Valso"
  \partial 4.
  <<
    {
      <f' as>8<e g> e
    }
    \\
    {
      c4 h8
    }
  >>
  \override TextScript.extra-offset = #'(0 . 2)
  \changePitch {c4 c8}{
    c <a e'><a es'><c g'><h d><h e>
    <e, g><c e gis><c f a><a' c><c e><h d>
    <a c><a d><c e>^"poco rit."<h d><a c><h g'>
  }
  \bar "||"
  \break
  \shape #'((0 . -2) (0 . 0) (0 . 0) (-1 . 0)) Slur
  g'4.^~^(^"Tempo I" g8 es h d c g
  b a e! g4 fis8)
  \once \override TextScript.extra-offset = #'(4 . 2)
  r^"rit." \makeOctaves 1 {b8. a16}
  \shape #'((0 . -2) (0 . 0) (0 . 0) (-1 . 0)) Slur
  g'4.^~^(^"Tempo I" g8 es h d c g b a e! g f4)
  <<
    {
      e'4\rest s8
    }
    \\
    {
      s8 as, as
    }
  >>
  <<
    {
      \shape #'((0 . -2) (0 . 0) (0 . 0) (-1 . 0)) Slur
      g'4.~( g8 es h d c g b a e! g4 fis8)
    }
    \\
    {
      s2. s4. s r8 d4
    }
  >>
  \clef bass
  d8( fis a fis a d
  \clef treble
  a d fis d fis a)
  \bar "||"
  \break
  \time 6/8
  \override Score.RehearsalMark.extra-offset = #'(6 . 0)
  \mark "Allegretto"
  \bot ges,,8 des'  as'
  \top b des b'
  as ges des
  \bot b ges es \top
  \clef bass
  r <ces ces'>(-><b b'>) ges' <f as>(<des des'>)->
  <<
    {
      \voiceTwo
      <des des'>8 \bot
      \stemUp
      ges as b \top
      \stemDown
      es des
    }
    \\
    {
      \voiceOne
      \hideNotes r8\unHideNotes
      \clef treble
      des ges4 b
    }
  >>
  \clef bass
  r8 eses,, heses'
  \clef treble
  \stemDown \bot ges' \top
  <eses eses'>(<des des'>)
  \stemNeutral
  <b b'>
  \repeat tremolo 4 {des''32 b}
  \repeat tremolo 6 {des32 b}
  \repeat tremolo 12 {des32 as}
  \repeat tremolo 6 {des32 ges,}
  \repeat tremolo 6 {ces32 ges}
  \repeat tremolo 12 {b32 ges}
  \repeat tremolo 6 {as32^"rit." ges}
  \repeat tremolo 6 {as32 f}
  \repeat tremolo 12 {des'32^"a Tempo" des,}
  \repeat tremolo 12 {des'32 des,}
  \repeat tremolo 6 {des'32 des,}
  \repeat tremolo 6 {ces'32 ces,}
  \repeat tremolo 6 {b'32 b,}
  \repeat tremolo 6 {as'32 as,}
  \repeat tremolo 12 {ges'32 ges,}
  \repeat tremolo 12 {ges''32 ges,}
  \repeat tremolo 12 {ges'16}
  ges2.
  \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  %\key c \minor
  \time 9/8
  \partial 4.
  c4 \stemUp <h f'>8\stemNeutral
  <a e'>4<f c'>8<fis c'>4
  <<
    {
      e'!8 d4
    }
    \\
    {
      \dotsUp
      g,4.
    }
  >>
  <g f'>8 c,4 b8 a4 <f' es'>8
  <<
    {
      e'!4 f8
    }
    \\
    {
      g,4.
    }
  >>
  <a e'>4<f es'>8
  <<
    {
      e'4 f8
    }
    \\
    {
      g,4.
    }
  >>
  <fis e'>4<a dis>8
  \bar "||"
  <<
    {
      \override TextScript.extra-offset = #'(1 . 2)
      \top \stemDown a'8\rest <g h> q\bot \stemUp
      \changePitch {c8 c8 c8}{
        r <d f> q
        r <c es> q
        r <cis e!> cis
        r <a cis> q
        r <fis d'> q
        r <g' h><g h>
        r <g h> g
        r <h, g'> h
        r <c es!> q
        r <f, d'><f d'>
        r <fis d'> q
        r <g' b><g b>
        r <es g> q
        r <d fis> q
        r <g, b e><g b>
        r <a c> q
        r <a d> q
        r^"accel." <fis a d> q
        r <fis a d> q
        r <fis a d> q
      }
    }
    \\
    {
      \changePitch{c4 c8}{
        e r g r c, r a r d r c r
        e r es r d r f r b, r ces r
        g r a r b r c r d r d r
        a r f r d r
      }
    }
  >>
  \bar "||"
  \time 6/8
  s2. \makeOctaves 1 {es2. ces'4. des ges,2. ges}
  ges'8 des' as' b des b'
  b,,, f' des' f des' as'
  ces,,, ges' es' ges es' ces'
  des,,, b' ges' b ges' des'
  des,,, as' es' as des as'
  ges,, des' ges b des b'
  b,,, f' des' f des' as'
  ces,,, ges' es' ges ces es
  des,, b' ges' des, as' f'
  ges, des' ges a, c f
  \clef treble
  ges des' ges a, c f
  ges des' ges a, c f
  ges2.
  \bar "|."
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f
  \time 9/8
  \partial 4.
  s4.
  s4.*30
  \time 6/8
  s2.*9\f s2.-"dim" s2.*3\p s4. s-"dim" s2.*3 s2.\pp
}

%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}