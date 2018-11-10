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
    \new Staff %\with { instrumentName = "Gtr" }
    {
      \clef treble
      %\key ges \major
      \numericTimeSignature
      \time 4/4
      %\mark \markup {\circle 1}
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
          c'' a' e' c' | \bar ":|.|:" %\mark \markup {\circle 2}
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
      %breakbefore = ##t
    }
  }
  \score {
    \new Staff
    {
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
          e' e''-0 e'' e''
          c' e'' e'' e'' |
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
          c'' a' e' c' | \bar ":|.|:" %\mark \markup {\circle 3}
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
      %breakbefore = ##t
    }
  }
}