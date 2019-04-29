\version "2.19.15"

\language "deutsch"

diatonicScale = \relative { e' fis gis a h cis dis }

ossia = \relative {
  \tag #'Ossia {
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \set Score.alternativeNumberingStyle = #'numbers-with-letters
    \set Score.barNumberVisibility = #all-bar-numbers-visible
  }
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
    h'8-.-"E-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
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
  \tag #'Ossia {
    \set Score.currentBarNumber = #17
  }
  e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  r2 \break
  \set Score.currentBarNumber = #1
  \override Score.VoltaBracketSpanner.Y-offset = 7
  \repeat volta 2 {
    h8-.-"I v." e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
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
  \tag #'Ossia {
    \set Score.currentBarNumber = #17
  }
  e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  r2
  \bar "||"
  \tag #'Ossia {
    \break
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  \transpose e b, {
    \relative {
      h'8-.-"II v. B-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
      h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
    }
  }
  \bar "||"
  \tag #'Ossia {
    \pageBreak
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  h8-.-"III v. E-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
  \modalTranspose e fis \diatonicScale {
    \relative {
      h'8-.-"fis-moll" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  h'8.(-"E-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4 r2
  \bar "||"
  \tag #'Ossia {
    \break
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%{
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  h8-.-"IV v. E-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
  h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
  \tag #'Ossia {
    \break
  }
  \transpose e as {
    \relative {
      h'8-.-"As-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  %%}
  %R2*15 r4
  \transpose e a {
    \relative {
      h''8.(-"A-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r

    }
  }
  h'8.(-"E-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-.
  r r4 r2
  \bar "||"
  \tag #'Ossia {
    \break
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  \transpose e c {
    \relative {
      h'8-.-"V v. C-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  \transpose e h {
    \relative {
      h'8.(-"H-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r %r4
    }
  }
  h'8.(-"e-moll" a16 g8) e-. h-. r cis-. fis-. h8.( a16 g8) h-. e,-. r
  cis-. fis-. h8.( a16 g8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4 r2
  \bar "||"
  \tag #'Ossia {
    \break
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  \transpose e b, {
    \relative {
      h'8-.-"VI v. b-moll" e-. r g-. g( fis) r c-. h-. fis'-. r a-. a( g) r a-.
      h-. e,-. a16( g fis e g8) h,-. e16( d c h
      c8) e-. dis-. h'-. g8.( a16 e8) c-.
      h8-. e-. r g-. g( fis) r c-. h-. fis'-. r a-. a( g) r a-.
      h-. e,-. a16( g fis e g8) h,-. e16( d c h
      c8) e-. fis-. dis-. e-. r
      h'8.(-"B-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
      cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
    }
  }
  \bar "||"
  \tag #'Ossia {
    \break
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tag #'Ossia {
    \set Score.currentBarNumber = #1
  }
  \transpose e d' {
    \relative {
      h8-.-"VII v. D-dur" e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. dis-. h'-. gis8.( a16 e8) cis-.
      h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
      h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
      cis8) e-. fis-. dis-. e-. r
    }
  }
  h'8.(-"E-dur" a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  \bar "|."
}