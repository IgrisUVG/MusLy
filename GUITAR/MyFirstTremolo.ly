\version "2.18.0"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #10
  top-markup-spacing.basic-distance = #5
  markup-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #10
  last-bottom-spacing.basic-distance = #10

  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
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
          \override StrokeFinger.extra-offset = #'(-1 . 9.1)
          a16\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          \override StrokeFinger.extra-offset = #'(-1 . 5.6)
          a'\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
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
      title = "1."
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
          \override StrokeFinger.extra-offset = #'(-1 . 9.1)
          a16\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          \override StrokeFinger.extra-offset = #'(-1 . 5.6)
          a'\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
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
      title = "2."
      subtitle = ##f
      composer = ##f
    }
  }
  %\pageBreak
  \score {
    \new Staff {
      \clef treble
      \key e \minor
      \numericTimeSignature
      \time 4/4
      <<
        {
          \override StrokeFinger.extra-offset = #'(-1 . 11.6)
          e16\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          \once\override Fingering.extra-offset = #'(1.3 . -4)
          g''-4\RH #4 g''\RH #3 g''\RH #2
          \override StrokeFinger.extra-offset = #'(-1 . 7.2)
          g'\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
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
      title = "3."
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
          \break
          e g-3 h-1 |
          c'-2 h-1 g-2
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "4."
      subtitle = ##f
      composer = ##f
    }
  }
  %\pageBreak
  \score {
    \new Staff {
      \clef treble
      \numericTimeSignature
      \time 3/4
      <<
        {
          \bar ".|:"
          \override StrokeFinger.extra-offset = #'(-1 . 8.1)
          c'16\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          \override StrokeFinger.extra-offset = #'(-1 . 6.2)
          g'\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          e''\RH #4 e''\RH #3 e''\RH #2
          c'' e'' e'' e''
          e' g''-4 g'' g''
          g' g'' g'' g''
          c'' e''-0 e'' e'' |
          d' f''-2 f'' f''
          g' g''-4 g'' g''
          h' g''-4 g'' g'' |
          f' g'' g'' g''
          g' g'' g'' g''
          h' g'' g'' g'' |
          g' h''-4 h'' h''
          h' h'' h'' h''
          f' a''-4 a'' a'' |
          e' g''-4 g'' g''
          g' g'' g'' g''
          d' f''-1 f'' f'' |
          c' e'' e'' e''
          e' e'' e'' e''
          g' e'' e'' e'' |
          c'' e'' e'' e''
          g' e'' e'' e''
          e' e'' e'' e''
        }
        \\
        {
          c'4-3 g'-0 c''-1 |
          e'-2 g' c''-1 |
          d' g' h' |\break
          f'-3 g' h' |
          g'_\4-1 h'-0  f'-1 |
          e'-2 g' d' |
          c'-3 e'-2 g'-0 |
          c''-1 g' e'
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "5."
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 4/4
      <<
        {
          \bar ".|:"
          \override StrokeFinger.extra-offset = #'(-1 . 8.1)
          g16\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          h'\RH #4 h'\RH #3 h'\RH #2
          \override StrokeFinger.extra-offset = #'(-1 . 6.2)
          d'\RH #1
          \override StrokeFinger.extra-offset = #'(-1 . 3.8)
          h'\RH #4 h'\RH #3 h'\RH #2
          e' h' h' h'
          d' h' h' h' |
          fis c''-1 c'' c''
          d' c'' c'' c''
          e' c'' c'' c''
          d' c'' c'' c'' |
          d' fis''-3 fis'' fis''
          a' fis'' fis'' fis''
          c'' e''-0 e'' e''
          a' d''-4 d'' d'' |
          g h'-0 h' h'
          d' h' h' h'
          e' h' h' h'
          d' h' h' h' |
          g h'-0 h' h'
          d' h' h' h'
          e' h' h' h'
          d' h' h' h' |
          fis c''-1 c'' c''
          d' c'' c'' c''
          e' c'' c'' c''
          d' c'' c'' c'' |
          d' fis''-3 fis'' fis''
          a' fis'' fis'' fis''
          c'' e''-0 e'' e''
          a' fis''-3 fis'' fis'' |
          g g''-3 g'' g''
          d' g'' g'' g''
          g' g'' g'' g''
          h' g'' g'' g'' |
        }
        \\
        {
          g4-3 d'-0 e'-2 d' |
          fis-2 d'-0 e'-2 d' |
          d'-0 a'-2 c''-1 a' |
          g-3 d'-0 e'-2 d' |
          g-3 d'-0 e'-2 d' |
          fis-2 d'-0 e'-2 d' |
          d'-0 a'-2 c''-1 a' |
          g-2 d'-0 g' h'
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "6."
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key d \major
      \numericTimeSignature
      \time 3/4
      <<
        {
          \bar ".|:"
          d'16^"II" d'' d'' d''
          fis' d'' d'' d''
          a' d'' d'' d'' |
          d' fis'' fis'' fis''
          a' fis'' fis'' fis''
          d'' fis'' fis'' fis'' |
          d' d'' d'' d''
          fis' d'' d'' d''
          a' d'' d'' d'' |
          d' fis'' fis'' fis''
          a' fis'' fis'' fis''
          d'' fis'' fis'' fis'' |
          a e''-0 e'' e''
          e' e'' e'' e''
          g' e'' e'' e'' |
          a g''-4 g'' g''
          e' g'' g'' g''
          g' e''-0 e'' e'' |
          a cis''-2 cis'' cis''
          e' cis'' cis'' cis''
          g' cis'' cis'' cis'' |
          a cis'' cis'' cis''
          g' cis'' cis'' cis''
          e' cis'' cis'' cis'' |
        }
        \\
        {
          \once\override StringNumber.extra-offset = #'(1.5 . -7)
          d'4-4\5 fis'-3 a'-1 |
          d'-4 a' d'' |
          d' fis' a' |
          d' a' d'' |
          a-0 e' g' |
          a e'-1 g'-0 |
          a-0 e'-1 g'-0 |
          a g'-0 e'-1
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "7."
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 4/4
      <<
        {
          \bar ".|:"
          g16 h'-0 h' h'
          a c''-1 c'' c''
          h d''-4 d'' d''
          c' e''-0 e'' e'' |
          d' fis''-2 fis'' fis''
          e' g''-4 g'' g''
          fis' a''-4 a'' a''
          g' h''-4 h'' h'' |
          a' c'''-4 c''' c'''
          g' h''-4 h'' h''
          fis' a''-4 a'' a''
          e' g''-4 g'' g'' |
          d' fis''-2 fis'' fis''
          c' e''-0 e'' e''
          h d''-4 d'' d''
          a c''-1 c'' c'' |
          g h'-0 h' h'
          d' h' h' h'
          g' h' h' h'
          d' h' h' h' |
          fis' c''-1 c'' c''
          d' c'' c'' c''
          c' c'' c'' c''
          a c'' c'' c''
        }
        \\
        {
          \override StringNumber.extra-offset = #'(1.5 . -5.5)
          g4-3 a-0 h-2 c'-3 |
          d'-0 e'-1 fis'-2 g'-1\4 |
          a'-2\4 g'-1 fis'-2 e'-1 |
          d'-0 c'-3 h-2 a-0 |
          g-3 d'-0 g'-0 d' |
          fis'-4 d'-0 c'-3 a-0
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "8."
      subtitle = ##f
      composer = ##f
    }
  }
  \score {
    \new Staff {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 6/8
      <<
        {
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(3 3 3 3)
          \bar ".|:"
          g32 g'' g'' g''
          d' g'' g'' g''
          g' g'' g'' g''
          h' fis'' fis'' fis''
          g' fis'' fis'' fis''
          d' fis'' fis'' fis'' |
          g d'' d'' d''
          h d'' d'' d''
          d' d'' d'' d''
          e' d'' d'' d''
          d' d'' d'' d''
          h d'' d'' d'' |
          g g'' g'' g''
          d' g'' g'' g''
          g' e'' e'' e''
          g g'' g'' g''
          d' g'' g'' g''
          g' e'' e'' e'' |
          d' fis'' fis'' fis''
          a' fis'' fis'' fis''
          c'' fis'' fis'' fis''
          a fis'' fis'' fis''
          a' fis'' fis'' fis''
          c'' fis'' fis'' fis'' |
          d' a'' a'' a''
          c'' a'' a'' a''
          d'' a'' a'' a''
          a g'' g'' g''
          a' g'' g'' g''
          c'' g'' g'' g'' |
          d' fis'' fis'' fis''
          a' fis'' fis'' fis''
          c'' fis'' fis'' fis''
          a fis'' fis'' fis''
          a' fis'' fis'' fis''
          c'' fis'' fis'' fis'' |
          d' a'' a'' a''
          c'' a'' a'' a''
          d'' gis'' gis'' gis''
          d' a'' a'' a''
          c'' a'' a'' a''
          d'' h'' h'' h'' |
          g g'' g'' g''
          d' g'' g'' g''
          g' g'' g'' g''
          h' g'' g'' g''
          g' g'' g'' g''
          d' g'' g'' g''
        }
        \\
        {
          g8 d' g' h' g' d' |
          g h d' e' d' h |
          g d' g' g d' g' |
          d' a' c'' a a' c'' |
          d' c'' d'' a a' c'' |
          d' a' c'' a a' c'' |
          d' c'' d'' d' c'' d'' |
          g d' g' h' g' d'
          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "9."
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

        }
        \\
        {

          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "10."
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

        }
        \\
        {

          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "11."
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

        }
        \\
        {

          \bar ":|."
        }
      >>
    }
    \layout {
      indent = #0
    }
    \header {
      title = "12."
      subtitle = ##f
      composer = ##f
    }
  }
}