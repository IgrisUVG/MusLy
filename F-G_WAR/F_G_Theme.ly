\version "2.19.15"

\language "deutsch"

\header {
  title = "MMXIXIXII"
  %instrument = "Flute"
  %meter = "Lustig"
  %composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #20
  top-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #30
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #20
  left-margin = 25
  right-margin = 25
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
}

\include "scripts.ly"

fluteMusic = \new Voice \with {
  \remove "Forbid_line_break_engraver"
  \override Beam.breakable = ##t
}
\relative e'' {
  \clef treble
  \key e \major
  \time 2/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lustig"
  \repeat volta 2 {
    h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
    \break
    h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  }
  \alternative {
    {
      cis8) e-.
      \set Score.repeatCommands = #'((volta #f))
      dis-. h'-. gis8.( a16 e8) cis-.
      \break
    }
    {
      cis8\repeatTie e-.
    }
  }
  fis-. dis-.
  e-. r
  h'8.( a16
  \repeat volta 2 {
    gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
    \break
    cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-.
  }
  \alternative {
    {
      e-. r  
      \shape #'((0 . 0) (0 . 0) (1.5 . 0.5) (2.5 . -1)) Slur
      h'8.( a16)
    }
    {
      e8-. r r4
    }
  }
  \bar "|."
}

\score {

  \new Staff {
    \fluteMusic
  }

}