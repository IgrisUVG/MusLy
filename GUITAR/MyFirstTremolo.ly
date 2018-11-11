\version "2.18.0"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #18
  system-system-spacing #'basic-distance = #18
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

#(define RH rightHandFinger)

\book {
  \paper {
    print-all-headers = ##t
  }
  \header {
    title = "My First Tremolo"
    subtitle = "(Twelve Exercises)"
    %subsubtitle = "1"
    %meter = ""
    composer = "Y. Shilin."
    tagline = ##f
  }
  \score {
    \new Staff {
      \clef treble
      \numericTimeSignature
      \time 4/4
      <<
        {
          \override StrokeFinger #'extra-offset = #'(-1 . 9.1)
          a16\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          \override StrokeFinger #'extra-offset = #'(-1 . 5.6)
          a'\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          c'' e''-0 e'' e''
          a' e'' e'' e'' |
          a e''-0 e'' e''
          a' e'' e'' e''
          c'' e'' e'' e''
          a' e'' e'' e'' |
          e e''-0 e'' e''
          gis' e'' e'' e''
          h' e'' e'' e''
          gis' e'' e'' e'' |
          e e''-0 e'' e''
          gis' e'' e'' e''
          h' e'' e'' e''
          gis' e'' e'' e'' |
          e e''-0 e'' e''
          gis' e'' e'' e''
          d'' e'' e'' e''
          gis' e'' e'' e'' |
          e e'' e'' e''
          gis' e'' e'' e''
          d'' e'' e'' e''
          gis' e'' e'' e'' |
          a e''-0 e'' e''
          a' e'' e'' e''
          c'' e'' e'' e''
          a' e'' e'' e'' |
          c'' e'' e'' e''
          a' e'' e'' e''
          e' e'' e'' e''
          c' e'' e'' e'' |
        }
        \\
        {
          a4 a'-2 c''-1 a' |
          a a' c'' a' |
          e gis'-1 h'-0 gis'|
          e gis' h' gis'|
          e gis'-1 d''-4 gis'|
          e gis' d'' gis'|
          a a'-2 c''-1 a' |
          c'' a' e' c' | \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "1"
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \numericTimeSignature
      \time 4/4
      <<
        {
          \bar ".|:"
          \override StrokeFinger #'extra-offset = #'(-1 . 9.1)
          a16\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          \override StrokeFinger #'extra-offset = #'(-1 . 5.6)
          a'\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          c'' e''-0 e'' e''
          a' e'' e'' e'' |
          c'' f''-2 f'' f''
          a' f'' f'' f''
          c'' e''-0 e'' e''
          a' e'' e'' e'' |
          e e''-0 e'' e''
          gis' e'' e'' e''
          h' e'' e'' e''
          gis' e'' e'' e'' |
          e f''-2 f'' f''
          gis' f'' f'' f''
          h' e''-0 e'' e''
          gis' e'' e'' e'' |
          e e''-0 e'' e''
          gis' e'' e'' e''
          d'' e'' e'' e''
          gis' e'' e'' e'' |
          e f''-2 f'' f''
          gis' f'' f'' f''
          d'' e''-0 e'' e''
          gis' e'' e'' e'' |
          a e''-0 e'' e''
          a' e'' e'' e''
          c'' e'' e'' e''
          a' e'' e'' e'' |
          c'' f''-2 f'' f''
          a' f'' f'' f''
          c'' e''-0 e'' e''
          a' e'' e'' e'' |
        }
        \\
        {
          a4 a'-3 c''-1 a' |
          c'' a' c'' a' |
          e gis'-1 h'-0 gis'|
          e gis' h' gis'|
          e gis'-1 d''-4 gis'|
          e gis' d'' gis'|
          a a'-2 c''-1 a' |
          c'' a' c'' a' | \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "2"
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key e \minor
      \numericTimeSignature
      \time 4/4
      <<
        {
          \override StrokeFinger #'extra-offset = #'(-1 . 11.6)
          e16\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          \once\override Fingering #'extra-offset = #'(1.3 . -4)
          g''-4\RH #4 g''\RH #3 g''\RH #2
          \override StrokeFinger #'extra-offset = #'(-1 . 7.2)
          g'\RH #1
          \override StrokeFinger #'extra-offset = #'(-1 . 3.8)
          g''\RH #4 g''\RH #3 g''\RH #2
          h' g'' g'' g''
          g' g'' g'' g'' |
          e e''-0 e'' e''
          g' e'' e'' e''
          h' e'' e'' e''
          g' e'' e'' e'' |
          c' g''-4 g'' g''
          g' g'' g'' g''
          c'' g'' g'' g''
          g' g'' g'' g'' |
          c' e''-0 e'' e''
          g' e'' e'' e''
          c'' e'' e'' e''
          g' e'' e'' e'' |
          d' fis''-3 fis'' fis''
          a' fis'' fis'' fis''
          c'' fis'' fis'' fis''
          a' fis'' fis'' fis'' |
          dis' fis'' fis'' fis''
          a' fis'' fis'' fis''
          h' g'' g'' g''
          a' g'' g'' g'' |
          e e'' e'' e''
          e' e'' e'' e''
          g' e'' e'' e''
          h' e'' e'' e'' |
          c'' e'' e'' e''
          h' e'' e'' e''
          g' e'' e'' e''
          h' e'' e'' e'' |
        }
        \\
        {
          e4 g'-0 h'-0 g' |
          e g' h' g' |
          c'-3 g'-0 c''-1 g' |
          c' g' c'' g' |
          d'-0 a'-2 c''-1 a' |
          dis'-1 a'-2 h'-0 a' |
          e e'-2 g' h' |
          c''-1 h' g' h'
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "3"
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key e \minor
      \numericTimeSignature
      \time 3/4
      <<
        {
          e16 h''-4 h'' h''          
          g' h'' h'' h''          
          h' h'' h'' h'' |
          e g''-1 g'' g''
          g' g'' g'' g''
          h' g'' g'' g'' |
          e e''-0 e'' e''
          g' e'' e'' e''
          h' e'' e'' e'' |
          c'' e'' e'' e''
          h' e'' e'' e''
          g' e'' e'' e'' |
          e g''-4 g'' g''
          g' g'' g'' g''
          h' g'' g'' g'' |
          e' e'' e'' e''
          g' e'' e'' e''
          h' g''-4 g'' g'' |
          dis' fis''-3 fis'' fis''
          a' fis'' fis'' fis''
          h' fis'' fis'' fis'' |
          c'' fis''-3 fis'' fis''
          h' fis'' fis'' fis''
          a' fis'' fis'' fis'' |
          a a''-4 a'' a''
          c'' a'' a'' a''
          e'' a'' a'' a'' |
          a g''-4 g'' g''
          a' g'' g'' g''
          c'' g'' g'' g'' |
          dis' fis''-3 fis'' fis''
          a' fis'' fis'' fis''
          h' fis'' fis'' fis'' |
          h fis'' fis'' fis''
          a' g'' g'' g''
          h' g'' g'' g'' |
          e' e'' e'' e''
          g' e'' e'' e''
          h' e'' e'' e'' |
          c''e'' e'' e'' 
          h' e'' e'' e''
          g' e'' e'' e'' |
          e e'' e'' e''
          g e'' e'' e''
          h e'' e'' e'' |
          c' e'' e'' e'' 
          h e'' e'' e''
          g e'' e'' e''
        }
        \\
        {
          e4 g' h' |
          e g' h' |
          e g' h' |
          c''-1 h' g' |
          e g' h' |
          e'-2 g' h' |
          dis'-1 a'-2 h'-0 |
          c''-1 h' a'-2 |
          a c''-2 e''-3 |
          a a'-2 c''-1 |
          dis'-1 a'-2 h'-0 |
          h-1 a' h' |
          e'-2 g' h' |
          c''-1 h' g' |
          e g h |
          c' h g
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "4"
      subtitle = ##f
      composer = ##f
    }
  }
}