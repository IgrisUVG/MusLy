\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
top = \change Staff = "RH"
bot = \change Staff = "LH"

ersteStimme = \relative {

}
zweiteStimme = \relative {


}
dritteStimme = \relative {

}

%%%%%%%%%%% RH %%%%%%%%%%%%
dritteRH = \relative {
  \clef treble
  \key c \major
  \override Staff.TimeSignature.stencil = ##f
  <<
    \new Voice = "ersteStimme" \ersteStimme
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
dritteLH = \relative {
  \clef bass
  \key c \major
  \override Staff.TimeSignature.stencil = ##f
  \new Voice= "dritteStimme" \dritteStimme
}