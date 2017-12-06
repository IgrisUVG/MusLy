\version "2.19.15"

\language "deutsch"

ossia = \relative {
  \set Staff.fontSize = #-3
  \override Staff.StaffSymbol.staff-space = #(magstep -3)
  \override Staff.StaffSymbol.thickness = #(magstep -3)
  \clef treble
  \key e \major
  \time 2/4
  R2*73 R2*31
  h'8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
  h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4 r2

}