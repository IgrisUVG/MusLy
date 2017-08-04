\version "2.18.0"

\language "deutsch"

\header {
  title = "УШИ ВАН ГОГА"
  %instrument = "Bass"
  tagline = \markup {\char ##x00A9 "Уши ван Гога"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #25
  top-markup-spacing #'basic-distance = #8
  markup-markup-spacing #'basic-distance = #25
  markup-system-spacing #'basic-distance = #15
  score-markup-spacing #'basic-distance = #25
  %system-system-spacing #'basic-distance = #20
  %score-system-spacing #'basic-distance = #15
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
  indent = #0
  ragged-right = ##f
  ragged-last = ##f
}
\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords
        e1*2:m a1:m s2
        e1:m a1:m f1 g2
        e1*2:m a1*2:m
      }
    }
    \new Staff
    \relative e {
      \clef bass
      \key e \minor
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      e,8 e g e~ e d' h4
      e,8 e g e~ e d' h4
      a8 a c a~ a g' e4
      \time 2/4
      R2
      \time 4/4
      e,8 e g e~ e d' h4
      a8 a c a~ a g' e4
      f,8 f f f f f f f
      \time 2/4
      g r4.
      \bar ":|.|:" \break
      \time 4/4
      %соло%
      e'2~^"Соло" e8 fis g h g'4. e h4
      a2~a8 h c e h'4. a8 g fis e h      
      \bar ":|." \break
      e,2 dis d! cis e dis d! cis e dis g fis
      \bar ".|:"
      \time 5/4
      f,8 f f f f f g4 r
      \time 4/4
      e8 e g e~ e d' h4
      \time 5/4
      f8 f f f f f  g4 r
      \time 4/4
      e8 e g e~ e d' h4
      \bar ":|."
    }
  >>
  \header { piece = "\"Шоколадка\"" }
}
\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords
        e1*2:m a1*2:m
      }
    }
    \new Staff
    \relative e, {
      \clef bass
      \key e \minor
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      
      d'8( e) r4 g8( e) r4 d8( e) g e r2
      g,8( a) r4 c8( a) r4 g8( a) c a r2
      
      \bar ":|."
    }
  >>
  \header { piece = "\"Ананизьм\"" }
}
\score {
  \new StaffGroup
  <<
    
    \new Staff \with {
      instrumentName = ""
    }
    \relative e'' {
      \key e \minor
      r8 <g, h e g>
      r <g h e g>
      r <g h e g>
      <a! c es as>4
      r8 <g h e g>
      r <g h e g>
      r <g h e g>
      <a! c es as>4
      r8 <a c e a!>
      r <a c e a>
      r <a c e a>
      <b d f  as b>4
      r8 <g h e g>
      r <g h e g>
      r <g h e g>
      <a! c es as>4
    }
    \new ChordNames {
      \chordmode {
        \germanChords
        e2.:m f4
        e2.:m f4
        a2.:m b4
        e2.:m f4
        h1 c
        d1:m
      }
    }
    \new Staff \with {
      instrumentName = "Bass"
    }
    \relative e,{
      \key e \minor
      \clef bass
      e8 r e r e r f4 
      e8 r e r e r f4 
      a8 r a r a r b4
      e,8 r e r e r f4 
      h8 c cis d e8 g16 b~b4
      c,8 cis16 d~ d d16 f8 as8. h!16~h4\bar ":|."
      d,1^"Соло" e f g^"и т. д."
    }
    
  >>
  \header { piece = "\"Тьфу\"" }
  \layout { indent = #15 }
}
\score {
  \new StaffGroup
  <<
    \new ChordNames {
      \chordmode {
        \germanChords
        %as1:7
      }
    }
    \new Staff
    \relative e, {
      \clef bass
      \key e \minor
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      R1*2
      f'8 f e e es es d d c c h h b b a a
      f'4 e es8. es16 d4 c8 c h h b8. b16 a4 \bar "||"
      fis4 r8 fis e4 r fis8 fis r fis e4 r
      fis4 r8 fis e4 r fis8 fis r fis e4 r
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      \mark \markup { \musicglyph #"scripts.segno" }
      \bar ".|:"
      fis4     r8 fis e4 r
      fis8 fis r  fis e4 r
      a8   a   r  a   c4 r
      h'8 h b b a a gis gis
      \bar ":|."
      fis,8 fis e fis h4 a fis8 fis e fis r2
      fis8  fis e fis h4 a fis8 fis e fis r2
      \mark \markup { \musicglyph #"scripts.segno" }
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      \bar ".|:"
      \key as \major
      as8^"Jazz" c des d es e f g
      as c, des d es as, a c
      des des f as d, d f as
      es es c es f es c ces
      b c des d es g, b heses
      as c f ces b fes' es g,
      \bar ":|."
      as c des d es e f g
      as c, des d es as, a c
      des des f as d, d f as
      es es c es f es c ces
      R1*2
      \bar "||"
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      \key e \minor
      fis,8 fis e fis h4 a fis8 fis e fis r2
      fis8  fis e fis h4 a fis8 fis e fis r2
      fis8  fis e fis h4 a fis8 fis e fis r2
      r8    fis e fis r2 \bar "|."
    }
  >>
  \header { piece = "\"Танец бомжа\"" }
}