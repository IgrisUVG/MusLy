\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetEinsMusic = \relative {
  \clef treble
  \override Staff.TimeSignature.stencil = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  ges''4( f8) r es4( d8) r c4-- ges'-- h,( b8) r a4.( b8) e,4.( g8)
  fis2( c'~ c16 h a as g ges f8) h16( a as ges f es d8)
}
