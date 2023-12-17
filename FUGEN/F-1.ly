\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

ersteStimme = \relative {
  \voiceOne
  R1*4
  \stemUp
  a'8 d16 e fis8 a g h16 a g fis e d
  fis8 a16 g fis e d cis d h g' fis e d cis h
  cis a fis' e d cis h a h g e' d cis h a g
  a fis d' cis h a g fis g e cis' h a g fis e
  
}
zweiteStimme = \relative {
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
  d e fis h a4 a a fis g16 a d cis h a g fis
  
}
dritteStimme = \relative {
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
  fis h16 cis d8 fis, e g a a,
  d r r4
}

%%%%%%%%%%% RH %%%%%%%%%%%%
ersteRH = \relative {
  \clef treble
  \key d \major
  \override Staff.TimeSignature.stencil = ##f
  <<
    %\new Voice = "ersteStimme" \relative {  }
    \new Voice = "ersteStimme" \ersteStimme
    %\new Voice= "zweiteStimme" \relative {  }
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
ersteLH = \relative {
  \clef bass
  \key d \major
  \override Staff.TimeSignature.stencil = ##f
  %\new Voice= "dritteStimme" \relative {  }
  \new Voice= "dritteStimme" \dritteStimme
}