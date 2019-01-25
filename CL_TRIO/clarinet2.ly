\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetZweiMusic = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*4
}
