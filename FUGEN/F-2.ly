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
  d''8 g4 e16 h c8 c c e d a a c h16 c h a h a g a
  h d c h c a h c d h c d e fis g fis
  e d c h c a h c d h a g a c h a h4 a2 g4~ g fis g fis
  g fis f e8 d d16 g f e f d e f g e f g a h c h
  a g f e f d e f g e d c d f e d
  e8 a4 f16 c d8 d d f e h h d c16 a h c cis dis e fis
  g4 fis2 e4~ e dis e d
  e8 a4 fis16 cis d8 d d fis e h h d cis16 d cis h cis h a h
  \clef bass
  a8 d4 h16 fis g8 g g h a e e g fis16 g fis e fis e d e
  \stemDown
  fis g
  \stemUp
  \bot fis e fis d e fis
  \stemDown
  \top g
  \stemUp
  \bot e fis
  \stemDown
  \top g a h c h
  a g fis e fis
  \stemUp
  \bot d e fis
  \stemDown
  \top g
  \stemUp
  \bot e d c d
  \stemDown
  \top fis e
  \stemUp
  \bot d
  d8 e16 fis g4 g 
  \stemDown
  \top a h2 \bot r
}
zweiteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \voiceTwo
  R1*4
  d'8 g4 e16 h c8 c c e d a a c h16 c h a h
  \stemUp
  \bot a g a
  g
  \stemDown
  \top e' d c d a h c h d c h c g c h c4 d2 c4~ c h c h
  c h2 a4~ a g f g8 a
  h e4 h16 g a8 a a c! h fis fis a g16 a g fis gis h a h
  cis a
  \stemUp
  \bot gis fis gis e fis gis a fis
  \stemDown
  \top gis a h cis d cis
  h a gis fis gis e fis gis a
  \stemUp
  \bot fis e d e g! fis e
  \stemDown
  \top fis4 e2 d4~ d cis d2
  \stemUp
  d'8 g4 e16 h c8 c c e d a a c h16 c h a h a g a
  h4
  \clef treble
  <<
    {
      e4 g4. fis8 g2 r
    }
    \\
    {
      c,4 h d d2 r
    }
  >>
}
dritteStimme = \relative {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  R1*2 g8 d'4 h16 fis g8 g g h a e e g fis16 g fis e fis e d e
  fis g fis e fis d e fis g e fis g a h c h
  a g fis e f d e fis g e d c d fis e d
  \stemDown
  e8 h16 g 
  \stemNeutral
  d'4. f16 h, c4
  g8 c4 a16 e f8 f f a g d d f e c' g h
  c16 a' g f e g f e d f e d c h a h
  c d e fis! e g fis e dis cis h a g h cis dis
  e8 d!16 c! d h cis dis e cis dis e fis g a g
  fis e dis cis dis h cis dis e cis h a h d cis h
  a4 
  \stemDown
  h2
  \stemNeutral
  a4~ a gis 
  \stemDown
  a2
  \stemNeutral
  d,8 cis16 h cis a h cis d h cis d e fis g fis
  e d cis h cis a h cis d h a g a c h a
  h8\noBeam
  \stemDown
  h' a2 
  \stemUp
  g4~ g 
  \stemDown
  fis g fis g c d 
  \stemUp
  d, g2 r
  \bar "|."
}

%%%%%%%%%%% RH %%%%%%%%%%%%
zweiteRH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef treble
  \key g \major
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  <<
    \new Voice = "ersteStimme" \ersteStimme
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
zweiteLH = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \time 4/4
  \clef bass
  \key g \major
  \new Voice= "dritteStimme" \dritteStimme
}