\version "2.19.15"

\language "deutsch"

diatonicScale = \relative { e' fis gis a h cis dis }

ossia = \relative {
  \set Staff.fontSize = #-3
  \override Staff.StaffSymbol.staff-space = #(magstep -3)
  \override Staff.StaffSymbol.thickness = #(magstep -3)
  \clef treble
  \key e \major
  \time 2/4
  %R2*50
  %R2*23
  %R2*31
  \repeat volta 2 {
    h'8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
    h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  }
  \alternative {
    {
      cis8) e-.
      \set Score.repeatCommands = #'((volta #f))
      dis-. h'-. gis8.( a16 e8) cis-.
    }
    {
      cis8\repeatTie e-.
    }
  }
  fis-. dis-.
  e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  r2 \break
  \override Score.VoltaBracketSpanner.Y-offset = 7
  \repeat volta 2 {
    h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
    h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  }
  \alternative{
    {
      cis8) e-.
      \set Score.repeatCommands = #'((volta #f))
      dis-. h'-. gis8.( a16 e8) cis-.
    }
    {
      cis8\repeatTie e-.
    }
  }
  fis-. dis-.
  e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  r2
  %\break
  \bar "||"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \transpose e b, {
    \relative {
      h'8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
    }
  }
  \break
  \bar "||"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
  \modalTranspose e fis \diatonicScale {
    \relative {
      h'8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4 r2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%{
  h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
  \transpose e as {
    \relative {
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  %%}
  %R2*15 r4
  \transpose e a {
    \relative {
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-.
    }
  }
  r r4 r2

}