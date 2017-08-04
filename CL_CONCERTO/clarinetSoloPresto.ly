\version "2.19.15"
%\version "2.18.2"

\language "deutsch"

clarinetSoloMusic = \relative {
  %\time 3/4
  %\key es \major
  %\set Score.skipBars = ##t

  %%%%%%%%%%%%%%%%%%%
  %\time 4/4
  %%%%%%%%%%%%%%%%%%%
  \key b \major
  r4 f''( e) h-. es! \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r des'-> f,( e) c'-. a,( as) g'-. \times 2/3 {h,8( c h} fis4-.) r f a( b) d'-. es,-.
  h-. e( f) c'-.
  r f,( e) h-. es-. \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r2 d'4( cis) ges,,-. \times 2/3 {h''8( c h} b4-.) e-. g,( as) r \acciaccatura {d8[ es e]} f4-.
  r cis,( d) es'-. r e-. d,( es!) des'-. g,( fis) c'-. \times 2/3 {gis8( a gis} f4) e,,-. h'''-.
  es,( d) r b'!-. \times 2/3 {fis,8( g fis} f4) a-. des'-. g,,( fis) r c''
}