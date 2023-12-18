\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

ersteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \voiceOne
  R1*8
  c''2 d g2. a4 f2 d g e
  d c b a g f g c~ c4 d b2 g c a4
}
zweiteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \voiceTwo
  \stemDown
  c'2 d g2. a4 f2 d g e
  d4 c8 h c4 g'~ g f8 g a h c g a4 g8 e f4 d'8 a h4 a8 f g4 f8 d
  e4 a2 g4~ g d'2 c4~ c g2 h4~ h d2 c4~ c b2 a4~ a g2 f4~
  f e f b,8 a b4 f'2 e8 f g a b f g4 f8 d e4 c'8 g a4 g8 e
  f4
}
dritteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  R1*4
  g2 a d2.e4 c2 a d h
  a4 g8 f g4 c~ c h8 c d e f c d4 c8 a h4 g'8 d e4 d8h c4 a'8 e
  f4 g8 d e4 f8 c d4 e8 b c e d b c d b c a4 r
  r8 g c, d e f g a b f g a b c a b c d b c a b a4
  d,2 e a2. b4 g2 e a fis
  es4 d8 c d4 g~ g fis8 g a b c g a4 g8 d fis4 d'8 a b4 a8 fis g4 a8 e
  fis4 e8 d e4 fis8 g cis,4 e2 d4~ d a'2 cis4 d1
  g,2 a d2.e4 c2 a d h
  a g f e4 a~ a g2 d'4~ d c2 g4~ g h2 a4~ a f g g, c2 r
  \bar "|."
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