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
zweiteRH = \relative {
  \clef treble
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  <<
    \new Voice = "ersteStimme" \ersteStimme
    \new Voice = "zweiteStimme" \zweiteStimme
  >>
}

%%%%%%%%%%% LH %%%%%%%%%%%%
zweiteLH = \relative {
  \clef bass
  \key g \major
  \override Staff.TimeSignature.stencil = ##f
  \new Voice= "dritteStimme" \dritteStimme
}