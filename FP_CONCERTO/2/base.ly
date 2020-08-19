\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

base = {
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \key d \major
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #3
}