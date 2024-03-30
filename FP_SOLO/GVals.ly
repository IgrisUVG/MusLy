\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "G valse"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

%#(set-global-staff-size 18)
\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #25
  last-bottom-spacing.basic-distance = #30
  left-margin = 25
  right-margin = 25
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
rechtsUp = \relative {
  \clef treble
  \key ges \major
  \time 3/4
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark.extra-offset = #'(-2 . 3)
  \mark "Lento"
  \partial 4
  \stemDown
  b'
  \stemUp
  b2. ces des4 b8 as ges4 as2 a4\break
  b2. ces des4 b as
  ges2. as b4 as8 ges es4 ges2 f4 ges2. as
  b4 as8 ges es4 b'4 as8 ges es4\break
  fis2 e4 fis2. fis2 a4 fis8 e d2 e2. f
  es'2.~ es8 f d c b4 b2. ces des4 b8 as ges4
  as2. as4 f2 ges2. as4 f8 es des4 es2.
  f ges as4 f8 es des4 es2. b' des4. b8 as ges
  as2. ces4. as8 ges es ges2.~ ges2
  \bar "|."
}
rechtsDovn = \relative {
  %\override Rest.extra-offset = #'(0 . -1.5)
  s4 r <b des f>2 r4 <des es ges>2 r4 <ces eses>2
  r4 eses( des) r <b des f>2 r4 <des es ges>2
  r4 <ces es>2 r4 <ges b des>2 r4 <b ces es>2
  r4 <as ces>2 r4 ces( b) r4 <ges b des>2
  r4 <b ces es>2 r4 <as ces>2 r4 <as ces>2
  r4 <a d>2 r4 <h d>2 r4 <a h d>2 r4 <g h>2
  r4 <g b! des!>2 r4 <a b d>2 r4 <f' g b>2
  r4 <d es ges!>2 r4 <b des! f>2 r4 <des es ges>2
  r4 <ces eses>2 r4 <heses c es>2 r4 <f as c>2
  r4 <as b des>2 r4 <ges heses>2 r4 heses( as)
  r4 <f as c>2 r4 <as b des>2 r4 <ges heses>2
  r4 heses( as) r4 <b des f>2 r4 <b ges'>2
  r4 <ges ces es>2 r4 <ges b ces>2 r2 <ges b des>4~
  q2 \bar "|."
}
%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \clef bass
  \key ges \major
  \time 3/4
  %\set Staff.printKeyCancellation = ##f
  \partial 4 r4
  ges,2. as b4 <ces b'>2 <<{s4 ces'2}\\{des,2.}>>
  ges, as b4 <ces b'>2
  es,2. f ges4 <as b'>2 <<{s4 as'2}\\{b,2.}>>
  es, f ges4 <as ges'>2 ges4 <as ges'>2
  d,2. g d g a
  %\pageBreak
  b, c es
  ges as b4 <ces b'>2 ges2.
  des es f4 <ges f'>2 <<{s4 ges'2}\\{as,2.}>>
  des, es f4 <ges f'>2 <<{s4 ges'2}\\{as,2.}>>
  ges eses des ces ges'~ ges2
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
    \new Staff = "RH"
    <<
      {
        \rechtsUp
      }
      \\
      {
        \rechtsDovn
      }
    >>
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
  %\midi {}
}