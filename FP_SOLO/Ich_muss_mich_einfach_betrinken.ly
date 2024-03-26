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
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #8
  markup-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #15
  last-bottom-spacing.basic-distance = #20
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
  \shape #'((0.5 . -2) (0 . 0) (0 . 0) (-0.3 . 0)) Slur
  g'4.^~^(^"Tempo I" g8 es h d c g
  b a e! g4 fis8)
  \once \override TextScript.extra-offset = #'(4 . 2)
  r^"rit." \makeOctaves 1 {b8. a16}
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
      \top \stemDown a'8\rest <g h> q\bot \stemUp
      \changePitch {c8 c8 c8}{        
        r <d f> q
        r <c es> q
        r <cis e!> cis
        r <a cis> q
        r <fis d'> q
      }
    }
    \\
    {
      \changePitch{c4 c8}{
        e r g r c, r a r d r c s
      }
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
}