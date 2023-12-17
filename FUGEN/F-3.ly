\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

ersteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  R1*4
}
zweiteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \stemDown
  c'2 d g2. a4 f2 d g e
  d4 c8 h c4 g'~ g f8 g a h c g a4 g8 e f4 d'8 a h4 a8 f g4 f8 d
}
dritteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  R1*4
}

%%%%%%%%%%% RH %%%%%%%%%%%%
dritteRH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef treble
  \key c \major
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lento"
  <<
    \new Voice = "ersteStimme" \ersteStimme
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
dritteLH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef bass
  \key c \major
  \new Voice= "dritteStimme" \dritteStimme
}