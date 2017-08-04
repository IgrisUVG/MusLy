\version "2.18.0"

\language "deutsch"

\header {
  title = "Танец бомжа"
  meter = "Allegretto"
  composer = "УШИ ВАН ГОГА"
  tagline = \markup {\char ##x00A9 "Уши ван Гога"}
}
#(set-global-staff-size 18)
\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #28
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  system-system-spacing #'basic-distance = #25
  %score-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  indent = #15
  ragged-right = ##f
  ragged-last = ##f
}
sax = \relative e'' {
  \clef treble
  \key gis \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  R1*2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  cisis'8 cisis cis cis his his h h
  a a gis gis fisis fisis fis fis
}
guitar = {
  \clef treble
  \key fis \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  
}
rechts = {
  \clef treble
  \key fis \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  R1*4
  \repeat unfold 4 {r4 <gis a cis'> r2}
  \repeat unfold 2 {r4 <gis a cis'> r8 q r4}
  r4 <a c' dis' e'!> r <e' g' b' e''>
  r8 <e' fisis' ais' dis''> r8 <es' fis' a' d''>
  r8 <d' eis' gis' cis''> r8 <cis' disis' fisis' hisis'>
  \repeat unfold 4 {
    <a'' cis''' dis''' a'''>4-> r8 <dis' fis' a' dis''>
    <cis' fis' a' cis''>4 <his eis' a' his'> 
  }
  \set Staff.printKeyCancellation = ##f
  \key as \major
  r8 <es ges as c'> r4 r2 R1
  r8 <ges as c' es'>4. r2 R1*9
  \key fis \minor
  \repeat unfold 6 {
    <a'' cis''' dis''' a'''>4-> r8 <dis' fis' a' dis''>
    <cis' fis' a' cis''>4 <his eis' a' his'> 
  }
  \clef bass
  <cis dis fis a>4 r4 r2
}
links = {
  \clef bass
  \key fis \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  R1*4
  \repeat unfold 4 {fis,4 r r8 \acciaccatura gis,8 a,8 e,4}
  \repeat unfold 2 {fis,4 r8 his,8( cis)[ r16 gis,]( a,8) e,}
  a,4 r8 h, c4 r <h, h><b, b><a, a><gis, gis>
  \repeat unfold 4 {<fis, fis>4-> r8 <e, e>16(<es, es><d,! d!>8)<cis, cis><eis, eis>4}
  \set Staff.printKeyCancellation = ##f
  \key as \major
  R1*4
  r4 <des es g b> r2
  r8 <es as c'> r4 r2
  R1
  r8 <c es as> r4 <as, c es as> r
  r4 <des f as ces'> r <d f as ces'>
  r2 r8 <c es as> r4
  R1*2
  \key fis \minor
  \repeat unfold 6 {<fis, fis>4-> r8 <e, e>16(<es, es><d,! d!>8)<cis, cis><eis, eis>4}
  <fis,, fis,>4 r4 r2
}
chord =  {
  \chordmode {
    \germanChords
    s1*4
  }
}
bass = \relative e, {
  \clef bass
  \key fis \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  eis'8 eis e e dis dis d d c c h h b b a a
  eis'4 e dis8. dis16 d4 c8 c h h b8. b16 a4 \bar "||"
  fis4 r8 fis e4 r fis8 fis r fis e4 r
  fis4 r8 fis e4 r fis8 fis r fis e4 r
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|:"
  fis4     r8 fis e4 r
  fis8 fis r  fis e4 r
  a8   a   r  a   c4 r
  h'8 h b b a a gis gis
  \bar ":|."
  fis,8 fis e fis h4 a fis8 fis e fis r2
  fis8  fis e fis h4 a fis8 fis e fis r2
  \mark \markup { \musicglyph #"scripts.segno" }
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \bar ".|:"
  \set Staff.printKeyCancellation = ##f
  \key as \major
  \set Timing.beatStructure = #'(2 2)
  as8^"Jazz" c des d es e f g
  as c, des d es as, a c
  des des f as d, d f as
  es es c es f es c ces
  b c des d es g, b heses
  as c f ces b fes' es g,
  \bar ":|."
  as c des d es e f g
  as c, des d es as, a c
  des des f as d, d f as
  es es c es f es c ces
  R1*2
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fis \minor
  \set Timing.beatStructure = #'(1 1 1 1)
  fis,8 fis e fis h4 a fis8 fis e fis r2
  fis8  fis e fis h4 a fis8 fis e fis r2
  fis8  fis e fis h4 a fis8 fis e fis r2
  r8    fis e fis r2 \bar "|."
}
\score {
  \new StaffGroup
  <<
    \new Staff \with {
      instrumentName = \markup {
        \right-column {
          "Alto Sax"
          \line { "in B" \smaller \flat }
        }
      }
    }
    %\transpose c' b,
    \sax
   % \new Staff \with {instrumentName = "Guitar"} \guitar
    \new PianoStaff \with {instrumentName = "Piano"}
    <<
      \new Staff = "RH" \rechts
      \new Staff = "LH" \links
    >>
    \new ChordNames \chord
    \new Staff \with {instrumentName = "Bass"} \bass
  >>
}