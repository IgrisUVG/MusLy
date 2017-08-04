\version "2.18.0"
\language "deutsch"
base = \relative es' {
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \key d \major
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #3
}