\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetZweiMusic = \relative {
  \clef treble
  \omit Staff.TimeSignature
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*4 a''4( as8) r ges4( f8) r es4-- a-- d,( des8) r c4.( des8) g,4.( b8)
  a2( es'~ es16 d c h b a as8) d16( c h a as ges f8)
  c'16( b a g a fis g a b c des es e fis g a gis8) r r4 b,16( h cis d e f g as
  b8) r r4 r2 R1*3 h,4( b8) r as4( g8) r f4-- h-- fes( es8) r d4.( es8) a,4.( c8)
  h2( f'~ f16 e d cis c h b8) e16( d des ces b as g8)
  d'16( c h a h gis a h c d es f ges as a h) b4( a8) r g4( fis8) r
  e4-- b'-- es,( d8) r cis4.( d8) as4.( h8) b2( e) f4-- r fes-- r
  \bar "|."
}
