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
  R1*4
  \stemUp
  a'8 d16 e fis8 a g h16 a g fis e d
  fis8 a16 g fis e d cis d h g' fis e d cis h
  cis a fis' e d cis h a h g e' d cis h a g
  a fis d' cis h a g fis g e cis' h a g fis e
  fis8 h16 cis d8 fis e g16 fis e d cis h
  d8 fis16 e d c h a h8 r r4 R1
  e,8 h'4 a8 h d4 g,8 a cis4 fis,8 g d'4 cis8
  d\noBeam h16 cis d8 fis e a,16 h cis8 e
  d g,16 a h8 d cis fis,16 g a8 cis
  h e,16 fis g8 h a d,16 e fis8 a
  g cis,16 d e8 g fis16\noBeam e' a g fis e d cis
  d h g' fis e d cis h cis a fis' e d cis h a
  h8 fis'4 e8 fis a4 d,8 e g4 cis,8 d16 cis d4 cis8
  d2 r
  \bar "|."
}
zweiteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \voiceTwo
  R1 r2
  \stemUp
  d'8 a'16 h
  \stemDown
  cis8 e
  d fis16 e d cis h a cis8 e16 d cis h a gis
  a4 d, cis e
  \stemDown
  fis8 g a d h16 d g fis e d cis h
  a cis fis e d cis h a g8 h16 a g fis e d
  e8
  \stemUp
  \bot h a
  \stemDown
  \top d
  \stemUp
  \bot e, a g
  \stemDown
  \top cis
  \stemUp
  \bot d, g fis
  \stemDown
  \top h cis d e cis
  d e fis h a4 a a fis g16 a d c h a g fis
  g e c' h a g fis e fis d h' a g fis e d
  \stemUp
  \bot g,8
  \stemDown
  \top d'16 e fis8 a e h'16 a g fis e d
  fis8 a16 g fis e d cis d8 h' a e
  d16
  \stemUp
  \bot h g' fis
  \stemNeutral
  e d cis h cis a fis' e d cis h a
  h g e' d cis h a g a fis d' cis h a g fis
  g e cis' h a g fis e fis d h' a g fis e d
  e cis a' g fis e d cis d8\noBeam g' a
  \stemDown
  \top d~ d4 a g8 h a e
  d a'16 h cis8 e d fis16 e d cis h a
  cis8 e16 d cis h a g a8 fis g a
  d,2 r
}
dritteStimme = \relative {  
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \stemDown
  \top a8 d16 e fis8 a g h16 a g fis e d
  fis8 a16 g fis e d cis
  d h e d
  \stemNeutral
  \bot cis h a gis
  a fis d' cis h a gis fis gis e cis' h a gis fis e
  fis d h' a g! fis e d e cis a' g fis e d cis
  d e a g fis e d cis d4 a'
  d,8 fis fis,4 h8 e16 fis g8 h,
  \stemDown
  a d16 e fis8 a, g cis16 d e8 g,
  fis h16 cis d8 fis,
  \stemNeutral
  e g a a,
  d r r4 d''4 e fis d d,8 g16 a h8 d
  c e16 d c h a g h8 d16 c h a g fis
  g e a g fis e d cis! d h g' fis e d cis h
  cis a fis' e d cis h a h g e' d cis h a g
  fis8
  \stemDown
  \top a''4 a16 h g8 g4 g16 a
  fis8 fis4 fis16 g e8 e4 e16 fis
  d8 d4 d16 e cis8 cis4 cis16 d
  h8 h4 h16 cis a8\noBeam
  \bot
  \clef treble
  d16 e fis8 a
  \stemNeutral
  g h16 a g fis e d fis8 a16 g fis e d cis
  d h e d
  \clef bass
  cis h a g a fis d' cis h a g fis
  g e cis' h a g fis e fis e d8 h cis
  d2 r
}

%%%%%%%%%%% RH %%%%%%%%%%%%
ersteRH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef treble
  \key d \major
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Moderato"
  <<
    %\new Voice = "ersteStimme" \relative {  }
    \new Voice = "ersteStimme" \ersteStimme
    %\new Voice= "zweiteStimme" \relative {  }
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
ersteLH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef bass
  \key d \major
  %\new Voice= "dritteStimme" \relative {  }
  \new Voice= "dritteStimme" \dritteStimme
}