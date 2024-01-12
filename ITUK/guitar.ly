\version "2.19.15"

\language "deutsch"

guitarChords = \chordmode {
  %\germanChords
  %\set chordNameSeparator = \markup { "/" }
  \tag #'Partitur { \override ChordName.font-size = #-2 }
  \partial 4
  h16:m7 c8.:m7
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "1.-4."))
    d1:m7 a
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {d1:m7 a}
  }
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 2 {c2 d h:m e:m}
    \alternative {{c d e1:m}{c2:9 d:maj9}}
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    c2 d h:m e:m c d e1:m
    c2 d h:m e:m c2:9 d:maj9
  }
  \repeat unfold 3 {e4:m9 a8.:m6 h16:7.9 s2}
  \time 3/4
  e4:m9 a8.:m6 h16:7.9 s4
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 9/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  R1
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 3 {d1:m7.9}
    \alternative {{a:maj7}{f:9/des}}
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 2 {d1:m7.9 a:maj7}
    d1:m7.9 f:9/des d1:m7.9 a:maj7
  }
}

guitar = \relative {
  \time 4/4
  \partial 4
  \override NoteHead.style = #'slash
  \tag #'Partitur { \tiny }
  \stemDown
  h'16 h8.
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \set Score.repeatCommands = #'((volta "1.-4."))
    d4 d d d a a a a
    \set Score.repeatCommands = #'((volta #f) end-repeat)
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {h4 h h h h h h h}
  }
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 2 {c2 d h e}
    \alternative {{c d e1}{ c2 d }}
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    h2 h h h h h h1
    h2 h h h h h
  }
  \repeat unfold 3 {h4 h8. h16~ h2}
  \time 3/4
  h4 h8. h16~ h4%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 9/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1)
  \grace {s8}
  R4*9
  \time 5/4
  R4*5
  \time 4/4
  R1
%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%
  \tag #'Part {
    \repeat volta 3 {d4 d d d}
    \alternative {{a a a a}{f f f f}}
  }
%%%%%%%%%%%%%%%% Partitur %%%%%%%%%%%%%%%%%%
  \tag #'Partitur {
    \repeat unfold 4 {h4 h h h h h h h}
  }
}