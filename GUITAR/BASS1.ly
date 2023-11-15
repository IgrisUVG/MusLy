\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = ""
  meter = ""
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #26
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #25
  two-sided = ##t
  inner-margin = 25
  outer-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
bassNote = \relative {
  %\set Staff.stringTunings = #'bass-tuning
  \clef bass
  \key d \major
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  \compressFullBarRests
  d1<fis, a'>4.<g g'><a fis'>4
  <<
    {
      f'4. e8~ e4. d8\glissando(
      \stemDown
      cis') fis, h g'~ g2
      \stemNeutral
      \clef treble
      a2. fis4
    }
    \\
    {
      b,,2. r4 s1 d'2 cis
    }
  >>
  <h d'>2. d,16_( a' d g\glissando b1)
  \clef bass
  <<
    {
      a8_( g) fis \harmonicByFret #12 d,8\2~ \harmonicByFret #12 d,2 s1
      r4 cis a2 \stemDown cis,8 fis\glissando( a) d~\stemUp d2
      r4. c8~ c b a4
    }
    \\
    {
      a,2 h~ \stemUp h4 cis d \stemNeutral e f2 e4 d s2 r4 fis f1
    }
  >>
  r8 c'4 h!8~ h4. a8~( a\glissando e') h( cis!~ cis2) c!2. h4~ h2 b4 a
  d,4. fis a4 d4.\glissando( e,8~ e2)
  <<
    {
      h'1 cis d
      \clef treble
      \hideNotes \grace h8\glissando \unHideNotes
      e a,\glissando_( d) a'~ a2 h1
    }
    \\
    {
      d,,4. g dis4 e1 fis s2 r4 a g1
    }
  >>
  \clef bass
  \harmonicByFret #12 d4.\2
  \harmonicByFret #7 e,8\4~
  \harmonicByFret #7 e,2
  h,8 e( fis) \acciaccatura a\glissando h~ h4 cis <a d>1
  fis'8( e) cis g\glissando( a2)~ a8 a4 g8~ g4 fis8 e
  d1 cis h b a
}
\score {
  \new Staff \with {
    instrumentName = \markup {
      \left-column {
        "Bass"
      }
    }
  }
  \bassNote
}