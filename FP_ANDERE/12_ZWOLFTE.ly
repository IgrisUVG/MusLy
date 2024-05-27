\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "12" }
  %meter = "Lento"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(include-special-characters)
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
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
top = \change Staff = "RH"
bot = \change Staff = "LH"

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

%%%%%%%%%%% RH %%%%%%%%%%%%
rechts = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \key b \minor
  \bot
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  \stemUp
  g,32 des c des ces' f, e f es'! b a b g' des c des
  ces' f, e f \top es'! \bot b a b \top g' des c des ces' f, e f
  \stemNeutral
  es'! b a b g' des c des ces' f, e f es'! b a b
  \ottava #1
  \set Staff.ottavation = #"8"
  g' des c des ces' f, e f es'! b a b ces f, e f
  g des c des es b a b
  \ottava #0
  ces f, e f g des c des es b a b ces f, e f g des c des es b a b
  \stemUp
  \bot ces f, e f g des c des es b a b ces f, e f
  g des c des ces' fes, es fes eses' b a b g' des c des
  ces' fes, es fes \top eses' \bot b a b \top g' des c des ces' fes, es fes
  \stemNeutral
  eses' b a b g' des c des ces' fes, es fes eses' b a b
  \ottava #1
  \set Staff.ottavation = #"8"
  g' des c des ces' fes, es fes eses' b a b ces fes, es fes
  g des c des eses b a b
  \ottava #0
  ces fes, es fes g des c des
}

%%%%%%%%%%% LH %%%%%%%%%%%%
links = \relative {
  \override Staff.KeySignature.flat-positions = #'(3)
  \clef bass
  \omit Staff.TimeSignature
  \key b \minor
  \stemDown
  <b,,, f' b>4\laissezVibrer s2.
  \stemNeutral
  \makeOctaves #1 {
    f'''4. des8 b8. as16~ as des fes8
    \clef treble
    a4 des8. ges,16~ ges8
    \clef bass
    b,4 des8
    \stemDown
    b,,2\laissezVibrer des
  }
  \stemNeutral
  r4 r16
  \makeOctaves #1 {
    heses''16 as ces b fes' es
    \clef treble
    heses'    
    as ces b g as4.
    \clef bass
    fes8
  }
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
  %\midi {}
}