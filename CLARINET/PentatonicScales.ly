\version "2.18.0"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #18
  top-markup-spacing #'basic-distance = #14
  markup-system-spacing #'basic-distance = #18
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #18
  two-sided = ##t
  inner-margin = 15
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

\book {

  \header {
    title = "Pentatonic Scales"
    subtitle = "Exercises"
    tagline = ##f
  }

  \score {
    \new Staff \with {
      instrumentName = "1."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      c8 d e g a c d e g a c a g e d c a g e d c2\bar "|." \break
      des8 es f as b des es f as b des b as f es des b as f es des2\bar "|." \break
      d8 e fis a h d e fis a h d h a fis e d h a fis e d2\bar "|." \break
      es8 f g b c es f g b c es c b g f es c b g f es2\bar "|." \break
      e8 fis gis h cis e fis gis h cis e cis h gis fis e cis h gis fis e2\bar "|." \break
      f8 g a c d f g a c d f d c a g f d c a g f2\bar "|." \break
      fis8 gis ais cis dis fis gis ais cis dis fis dis cis ais gis fis dis cis ais gis fis2\bar "|." \break
      g8 a h d e g a h d e d h a g e d h a g2.\bar "|." \break
      as8 b c es f as b c es f es c b as f es c b as2.\bar "|." \break
      a8 h cis e fis a h cis e fis e cis h a fis e cis h a2.\bar "|." \break
      b,8 c d f g b c d f g b g f d c b g f d c b2\bar "|." \break
      h8 cis dis fis gis h cis dis fis gis h gis fis dis cis h gis fis dis cis h2\bar "|." \break
      \pageBreak
    }
    \header {
      title = "DIATONIC EXERCISES"
      breakbefore = ##t
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "2."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \override Staff.TimeSignature #'stencil = ##f
      \compressFullBarRests
      c8 d e g a c d e g a c d e d c a g e d c a g e d c1\bar "|." \break
      des8 es f as b des es f as b des es f es des b as f es des b as f es des b des2.\bar "|." \break
      d8 e fis a h d e fis a h d e fis e d h a fis e d h a fis e d h d2.\bar "|." \break
      es8 f g b c es f g b c es f es c b g f es c b g f es c b c es2.\bar "|." \break
      e8 fis gis h cis e fis gis h cis e fis e cis h gis fis e cis h gis fis e cis h cis e2.\bar "|." \break
      f8 g a c d f g a c d f d c a g f d c a g f d c d f1\bar "|." \break
      fis8 gis ais cis dis fis gis ais cis dis fis dis cis ais gis fis dis cis ais gis fis dis cis dis fis1\bar "|." \break
      g8 a h d e g a h d e d h a g e d h a g e d h d e g1\bar "|." \break
      as8 b c es f as b c es f es c b as f es c b as f es c b c es f as2.\bar "|." \break
      a8 h cis e fis a h cis e fis e cis h a fis e cis h a fis e cis h cis e fis a2.\bar "|." \break
      b,8 c d f g b c d f g b c d f d c b g f d c b g f d c b2.\bar "|." \break
      h8 cis dis fis gis h cis dis fis gis h cis dis fis dis cis h gis fis dis cis h gis fis dis cis h2.\bar "|." \break
      \pageBreak
    }
    \header {
      piece = ""
      %breakbefore = ##t
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "3."
    }
    \relative c' {
      \clef treble
      \override Staff.TimeSignature #'stencil = ##f
      c8^\markup { \normal-text \smallCaps Mode I }
      d e g a c d e g a c a g e d c a g e d c2\bar "|." \break
      d8^\markup { \normal-text \smallCaps Mode II }
      e g a c d e g a c d c a g e d c a g e d2\bar "|." \break
      e8^\markup { \normal-text \smallCaps Mode III }
      g a c d e g a c d e d c a g e d c a g e2\bar "|." \break
      g8^\markup { \normal-text \smallCaps Mode IV }
      a c d e g a c d e d c a g e d c a g2.\bar "|." \break
      a8^\markup { \normal-text \smallCaps Mode V }
      c d e g a c d e d c a g e d c a1\bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "4."
    }
    \relative c'' {
      \override Staff.TimeSignature #'stencil = ##f
      c'8^\markup { \normal-text \smallCaps Mode I }
      a g e d c a g e d c d e g a c d e g a c2\bar "|." \break
      d8^\markup { \normal-text \smallCaps Mode II }
      c a g e d c a g e d c d e g a c d e g a c4.\bar "|." \break
      e8^\markup { \normal-text \smallCaps Mode III }
      d c a g e d c a g e d c d e g a c d e g a c4\bar "|." \break
      g8^\markup { \normal-text \smallCaps Mode IV }
      e d c a g e d c d e g a c d e g1\bar "|." \break
      c8^\markup { \normal-text \smallCaps Mode V }
      _\markup { \normal-text \smallCaps {Transpose Exercises 3-25 to all keys}}
      a g e \stemUp d c a g \stemNeutral e d c d e g a c d e g a c2\bar "|." \break
      \pageBreak
    }
    \header {
      piece = ""
      %breakbefore = ##t
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "5."
    }
    \relative c' {
      \clef treble
      \override Staff.TimeSignature #'stencil = ##f
      c8 d e g d e g a e g a c g a c d a c d e c d e g d e g a e g a c g a c d a c d e
      e d c a d c a g c a g e a g e d g e d c e d c a d c a g c a g e a g e d g e d c
      c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "6."
    }
    \relative c' {
      \clef treble
      %\override Staff.TimeSignature #'stencil = ##f
      \time 3/4
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 { c8 d e d e g e g a g a c a c d c d e d e g e g a g a c a c d c d e } e4
      \times 2/3 { e8 d c d c a c a g a g e g e d e d c d c a c a g a g e g e d e d c } c4~
      c2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "7."
    }
    \relative c' {
      \clef treble
      %\override Staff.TimeSignature #'stencil = ##f
      \numericTimeSignature
      \time 4/4
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 4/5 {
        c16 d e g a d, e g a c e, g a c d g, a c d e a, c d e g c, d e g a
        d, e g a c e, g a c d g, a c d e
      } e4
      \times 4/5 {
        e16 d c a g d' c a g e c' a g e d a' g e d c g' e d c a e' d c a g
        d' c a g e c' a g e d a' g e d c~
      } c4~
      c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "8."
    }
    \relative c' {
      \clef treble
      %\override Staff.TimeSignature #'stencil = ##f
      \numericTimeSignature
      \time 4/4
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 { c8 e d g e a g c a d c e d g e a g c a d c } e4
      \times 2/3 { e8 c d a c g a e g d e c d a c g a e g d e } c4
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "9."
    }
    \relative c' {
      \clef treble
      %\override Staff.TimeSignature #'stencil = ##f
      \numericTimeSignature
      \time 4/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \times 2/3 {
        c16 d e g a c d, e g a c d e, g a c d e g, a c d e g a, c d e g a c, d e g a c
        d, e g a c d e, g a c d e e d c a g e d' c a g e d c' a g e d c a' g e d c a
        g' e d c a g e' d c a g e d' c a g e d c' a g e d c_\fermata
      }
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "10."
    }
    \relative c' {
      \clef treble
      \time 2/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 4/6 {
        c16 g' a d, e c d a' c e, g d e c' d g, a e g d' e a, c g
        a e' g c, d a c g' a d, e c d a' c e, g d e c' d g, a e
        g d' e a, c g
      } c4
      \times 4/6 {
        g16 c a e' d g, e a g d' c e, d g e c' a d, c e d a' g c, a d c g' e a, g c a e' d g,
        e a g d' c e, d g e c' a d, c e d a' g d
      } c4
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "11."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 e g a d, g a c e, a c d g, c d e a, d e g c, e g a d, g a c e, a c d g, c d e
      e d c g d' c a e c' a g d a' g e c g' e d a e' d c g d' c a e c' a g d a' g e c c2.
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "12."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c16 g' d e d a' e g e c' g a g d' a c a e' c d c16 g' d e d a' e g e c' g a g d' a c a e' c d
      g, d' a c e, c' g a d, a' e g c, g' d e a, e' c d g, d' a c e, c' g a d, a' e g c, g' d e
      c4~ c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "13."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c16 g' a c d, a' c d e, c' d e g, d' e g a, e' g a c, g' a c d, a' c d e, c' d e
      e d c e, d' c a d, c' a g c, a' g e a, g' e d g, e' d c e, d' c a d, c' a g c,
      c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "14."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c16 a' c d d, c' d e e, d' e g g, e' g a a, g' a c c, a' c d d, c' d e
      e d c d, d' c a c, c' a g a, a' g e g, g' e d e, e' d c d, d' c a c,~
      c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "15."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 d a' g d e c' a e g d' c g a e' d a c g' e c d a' g d e c' a e g d' c e4
      c16 d g, e a c e, d g a d, c e g c, a d e a, g c d g, e a c e, d g a d, c~
      c4
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "16."
    }
    \relative c' {
      \clef treble
      %\override Staff.TimeSignature #'stencil = ##f
      \numericTimeSignature
      \time 4/4
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 { c8 d g d e a e g c g a d a c e c d g d e a e g c g a d a c e } e2
      \times 2/3 { e8 c a d a g c g e a e d g d c e c a d a g c g e a e d g d c~ } c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "17."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 g' e d e c' a g a e' d c d a' g e g d' c a c e d c
      a c d g, e g a d, c d e a, g a c e, d e g d c4
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "18."
    }
    \relative c' {
      \clef treble
      \time 3/4
      d16 c e d g e a g c a d c e d g e a g c a d c e8~
      e16 c d a c g a e g d e c d a c g a e g d e c8.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "19."
    }
    \relative c' {
      \clef treble
      \time 3/4
      e16 c g' d a' e c' g d' a e' c g' d a' e c' g d' a e' c d a
      c g a e g d e c d a c g a e g d g c,8.~ c4
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "20."
    }
    \relative c' {
      \clef treble
      \time 3/4
      g'16 c, a' d, c' e, d' g, e' a, g' c, a' d, c' e, d' g, e' a, d g, c e,\break
      a d, g c, e a, d g, c e, a d, g c,8.~ c2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "21."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d g e g a d c d e a e a c e d e2\break
      d16 e c a e a e d c d a g e g e d c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "22."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d g e g c d c d g a g a d e d e2\break
      d16 e d a g a g d c d c g e g e d c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "23."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e d e g a g a c d c d e g e g a c a c d e d e2\break
      d16 e d c a c a g e g e d c d c a g a g e d e d c~ c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "24."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e g e g a c a c d e d e g a g a c d c d e d
      e d c a c a g e g e d c d c a g a g e d e d c8
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "25."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 d e a g a c e d e g c a c d e~ e d c a c g e d e c a g a e d c c4
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new StaffGroup
    <<
      \new Staff
      \relative c' {
        \clef treble
        \time 5/4
        c d e g a c, d f g b c, es f as b c, d f g a c, es f g b
        \bar "||"
        \pageBreak
      }
      \new Staff {
        \clef treble

      }
      \new Staff
      \relative c' {
        \clef treble
        d e fis a h d, e g a c d, f g b c d, e g a h d, f g a c

      }
      \new Staff {
        \clef treble

      }
      \new Staff {
        \clef treble

      }
      \new Staff
      \relative c' {
        \clef treble
        f g a c d f, g b c es f, as b des es f, g b c d f, as b c es
      }
      \new Staff {
        \clef treble

      }
      \new Staff {
        \clef treble

      }
      \new Staff {
        \clef treble

      }
      \new Staff {
        \clef treble

      }
      \new Staff {
        \clef treble

      }
      \new Staff
      \relative c' {
        \clef treble
        h' cis dis fis gis h, cis e fis a h, d e g a h, cis e fis gis h, d e fis a
      }
    >>
    \layout {
      \context {
        \Staff
        \remove "Time_signature_engraver"
        %\remove "Bar_engraver"
        \hide Stem
      }
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "1."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e g as f es des d! e fis a b g f es e! fis gis h c a g f
      fis gis ais cis d h a g as b c es e cis h a b c d f fis dis cis h
      c d e g as f es des d! e fis a b g f es e! fis gis h c a g f
      fis gis ais cis d h a g as b c es e cis h a b c d f fis dis cis h
      b c d f e cis h a as b c es d h a g fis gis ais cis c a g f
      e fis gis h b g f es d e fis a as f es des c d e g fis dis cis h
      b c d f e cis h a as b c es d h a g fis gis ais cis c a g f
      e fis gis h b g f es d e fis a as f es des c d e g fis dis cis h c2
      \bar "|." \break
    }
    \header {
      title = "CHROMATIC EXERCISES"
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "2."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e g a fis e d e fis gis h cis ais gis fis as b c es f d c b
      c   d e g a fis e d e fis gis h cis ais gis fis as b c es f d c b
      as b c es cis ais gis fis e fis gis h a fis e d c d e g f d c b
      as b c es cis ais gis fis e fis gis  h a fis e d c2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "3."
    }
    \relative c' {
      \clef treble
      \time 2/4
      des16 es f as a fis e d es f g b h gis fis e f g a c cis ais gis fis
      g a h d es c b as a h cis e f d c b h cis dis fis g e d c
      des es f as a fis e d es f g b h gis fis e f g a c cis ais gis fis
      g a h d es c b as a h cis e f d c b h cis dis fis g e d c
      h cis dis fis f d c b a h cis e es c b as g a h d cis ais gis fis
      f g a c h gis fis e es f g b a fis e d des es f as g e d c
      h cis dis fis f d c b a h cis e es c b as g a h d cis ais gis fis
      f g a c h gis fis e es f g b a fis e d des es f as g e d c
      des2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "4."
    }
    \relative c' {
      \clef treble
      \time 2/4
      des16 es f as b g f es f g a c d h a g a h cis e fis dis cis h
      des   es f as b g f es f g a c d h a g a h cis e fis dis cis h
      a h cis e d h a g f g a c b g f es des es f as fis dis cis h
      a h cis e d h a g f g a c b g f es des2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "5."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 d e g d e fis a e fis gis h fis gis ais cis as b c es b c d f!
      c   d e g d e fis a e fis gis h fis gis ais cis as b c es b c d f!
      f d c b es c b as cis ais gis fis h gis fis e a fis e d g e d c
      f d c b es c b as cis ais gis fis h gis fis e a fis e d g e d c
      h2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "6."
    }
    \relative c' {
      \clef treble
      \time 3/4
      des16 es f as es f g b f g a c g a h d a h cis e h cis dis fis
      des   es f as es f g b f g a c g a h d a h cis e h cis dis fis
      fis dis cis h e cis h a d h a g c a g f b g f es as f es des
      fis dis cis h e cis h a d h a g c a g f b g f es as f es des
      c2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "7."
    }
    \relative c' {
      \clef treble
      \time 3/4
      c16 d e g f g a c b d c f es f g b as b c es d h a g as f es des d h a g as f es des
      c2.
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "8."
    }
    \relative c' {
      \clef treble
      \time 3/4
      h16 cis dis fis e fis gis h a h cis e d e fis a g a h d des b as ges
      g! e d c des b as ges g e d c
      h2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "9."
    }
    \relative c' {
      \clef treble
      \time 3/4
      b16 c d f es f g b as b c es des es f as ges as b des c a g f
      ges es des ces c a g f ges es des ces
      b2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "10."
    }
    \relative c' {
      \clef treble
      \time 3/4
      des16 es f as ges as b des h cis dis fis e fis gis h a h cis e es c b as
      a fis e d es c b as a fis e d
      cis2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "11."
    }
    \relative c' {
      \clef treble
      \time 3/4
      d16 e fis a g a h d c d e g f g a c b c d f e cis h a\break
      b g f es e cis h a b g f es
      d2.
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "12."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e g es f g b fis gis ais cis a h cis e
      c   d e g es f g b fis gis ais cis a h cis e
      e cis h a cis ais gis fis b g f es g e d c
      e cis h a cis ais gis fis b g f es g e d c
      h2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "13."
    }
    \relative c' {
      \clef treble
      \time 2/4
      des16 es f as e fis gis h g a h d b c d f des   es f as e fis gis h\break
      g a h d b c d f f d c b d h a g h gis fis e gis eis dis cis\break
      f d c b d h a g h gis fis e gis eis dis cis
      c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "14."
    }
    \relative c' {
      \clef treble
      \time 2/4
      d16 e fis a f g a c ais b c es h cis dis fis d e fis a f g a c\break
      ais b c es h cis dis fis fis dis cis h es c b as c a g f a fis e d\break
      fis dis cis h es c b as c a g f a fis e d
      cis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "15."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16^\markup {
        \normal-text \smallCaps {
          Transpose Exercises 15 and 16 to all
          scale degrees
        }
      }
      d f g fis gis h cis
      c d f g fis gis h cis
      c! a g f fis dis cis h\break
      c! a g f fis dis cis h
      c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "16."
    }
    \relative c' {
      \clef treble
      \time 2/4
      c16 d e g a g a c
      des es f as b as b des
      c a g a g e d c\break
      des b as b as f es des
      c2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "17."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 g d a' as es b f' e h fis cis' c g d a' as es b f'
      c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "18."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis''8 gis dis ais' a e h fis' f! c g d' cis gis dis ais' a! e h fis'
      cis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "19."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      d''8 a e h' b f c g' fis cis gis dis' d a e h' b f c g'
      d2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "20."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      es''8 b f c' h fis cis gis' g! d a e' es b f c' h fis cis gis'
      dis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "21."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      e''8 h fis cis' c g d a' as es b f' e h fis cis' c! g d a'
      e2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "22."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 c g d' cis gis dis ais' a e h fis' f c g d' cis gis dis ais'
      f!2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "23."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 b, c f dis h fis dis' des ges, as des h! g d! h' a d, e a g es b g'
      f b, c f dis h fis dis' des ges, as des h! g d! h' a d, e a g es b g'
      d1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "24."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      fis''8 h, cis fis e c g e' d g, a d c as es c' b es, f b gis e h! gis'
      fis h, cis fis e c g e' d g, a d c as es c' b es, f b gis e h! gis'
      dis1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "25."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 d f g cis, dis fis gis d e g a es f as b e, fis a h f g b c
      fis, gis h cis g a c d as b des es a, h d e b c es f h, cis e fis
      c8 d f g cis, dis fis gis d e g a es f as b e, fis a h f g b c
      fis, gis h cis g a c d as b des es a, h d e b c es f f2
      f8 es c b e d h a es' des b as d c a g des' ces as ges c b g f
      h a fis e b' as f es a g e d as' ges es des g f d c fis e cis h
      f' es c b e d h a es' des b as d c a g des' ces as ges c b g f
      h a fis e b' as f es a g e d as' ges es des g f d c c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "26."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      h''8 cis fis, gis a h e, fis g a d, e f g c, d es f b, c des es as, b
      h cis fis, gis a h e, fis g a d, e f g c, d es1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "27."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 d g, a b c f, g as b es, f ges as des, es e! fis h, cis d e a, h
      c d g, a b c f, g as b es, f ges as des, es e!1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "28."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      as''8 b c f dis h fis cis' fis, gis ais dis cis a e h' e, fis gis cis h g d a'
      d, e fis h a f c g' c, d e a g es b f' b, c d g f des as es'
      as, b c f dis h fis cis' fis, gis ais dis cis a e h' e, fis gis cis h g d a'
      d, e fis h a f c g' d1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "29."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      g''8 a h e d b f c' f, g a d c as es b' es, f g c b ges des as'
      des, es f b gis e h fis' h, cis dis gis fis d a e' a, h cis fis e c g d'
      g, a h e d b f c' f, g a d c as es b' es, f g c b ges des as'
      des, es f b gis e h fis' cis1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "30."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 des es f es ces des es cis a h cis h g a h a f g a g es f g
      f des es f es ces des es cis a h cis h g a h a f g a g es f g
      f des es f des2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "31."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      e''8 c d e d b c d c as b c b ges as b as e fis gis fis d e fis
      e c d e d b c d c as b c b ges as b as e fis gis fis d e fis
      e c d e c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "32."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      b''8
      a f c g' ges des as es' d b f c' h fis cis gis' g es b f' c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "33."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      h''8
      b ges des as' g d a! e' dis h fis cis' c g d a' gis e h fis' cis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "34."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      c''8
      h g d a' as es b f' e c g d' cis gis dis ais' a! f c g' d2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "35."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      des''8
      c as es b' a e h fis' f des as es' d a e! h' b ges des as' es2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "36."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      d''8
      cis a e h' b f c g' fis d a e' es b f c' h g d a' e2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "37."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      es''8
      d b f c' h fis cis gis' g! es b f' e h fis cis' c! as es b' f2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "38."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      e''8
      dis h fis cis' c g d! a' gis e h fis' f c g d' cis a e h' fis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "39."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      f''8
      e c g d' cis gis dis ais' a! f c g' fis cis gis dis' d b f c' g2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "40."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      \partial 8
      fis''8
      f! des as es' d a e! h' ais fis cis gis' g d a! e' dis h fis cis' gis2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "41."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 d g f es f b as ges as des ces b c f es\break
      des es as ges e fis h a g a d c b c f es d1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "42."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis8 dis gis fis e fis h a g a d c h cis fis e\break
      d e a g f g c b gis ais dis cis h cis fis e es1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "43."
    }
    \relative c' {
      \clef treble
      \time 2/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 8)
      \set baseMoment = #(ly:make-moment 1 8)
      \set subdivideBeams = ##t
      \times 2/3 {
        c''16^\markup {
          \normal-text \smallCaps {
            Transpose Exercises 43 to all scale degrees
          }
        }
        [ a g e as fis] g e d c es cis g[ c a g b gis] a g e d es cis c!2
      }
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "44."
    }
    \relative c' {
      \clef treble
      \time 2/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 4/6 {
        b''16 as es' des ges, b as ges des' ces fes, as fis e h' a d, fis
        e d a' g c, e\break
        d c g' f b, d c b f' es as, c b as es' des ges, b
        as ges des' ces fes, as\break
        fis e h' a d, fis e d a' g c, g'
      } c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "45."
    }
    \relative c' {
      \clef treble
      \time 2/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 4/6 {
        h''16 a e' d g, h a g d' c f, a g f c' b es, g f es b' as des, f\break
        dis cis gis' fis h, dis cis h fis' e a, cis h a e' d g, h a g d' c f, a\break
        g f c' b es, g f es b' as des, as'
      } des2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "46."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      d''8 f b, d c g d a' b des ges, b as es b f'\break
      fis a d, fis e h fis cis'
      d f b, d c g d a' b1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "47."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis''8 e a, cis h fis cis gis' a c f, a g d a e'\break
      f as des, f es b f c'
      cis e a, cis h fis cis gis' a1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "48."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 es as, c b f c g' gis h e, gis fis cis gis dis'\break
      e g c, e d a e h'
      c es as, c b f c g' as1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "49."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      h''8 d g, h a e h fis' g b es, g f c g d'\break
      es ges ces, es des as es b'
      h d g, h a e h fis' g1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "50."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      b''8 des ges, b as es b f' fis a d, fis e h fis cis'\break
      d f b, d c g d a'
      b des ges, b as es b f' fis1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "51."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 f g c des, ges as des d, g a d es, as b es e, a h e f, b c f
      fis, h cis fis g, c d g as, des es as a, d e a b, es f b h, e fis h
      c, f g c g f c g c,1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "52."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 f es b as des ces ges e a g d
      c f es b as des ces ges e a g d c1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "53."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      b''8 es des as fis h a e d g f c
      b es des as fis h a e d g f c b1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "54."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 d g f des es as ges d e a g es f b as e fis h a f g c b
      fis gis cis h g a d c as b es des a h e d b c f es h cis fis e
      c d g f des es as ges d e a g es f b as e fis h a f g c b
      fis gis cis h g a d c as b es des c2
      des8 es b as c d a g h cis gis fis b c g f a h fis e as b f es
      g a e d ges as es des f g d c e fis cis h es f c b d e h a
      des8 es b as c d a g h cis gis fis b c g f a h fis e as b f es
      g a e d ges as es des f g d c h2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "55."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 b, as es' d a e h' b es, des as' g d a! e' es as, ges des' c g d b' es,1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "56."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      e''8 a, g d' des as es b' a d, c g' ges des as es' d g, f c' h fis cis a' d,1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "57."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      es''8 as, ges des' c g d a' gis cis, h fis' f c g d' cis fis, e h' b f c! as' des,1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "58."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      d''8 g, f c' h fis cis gis' g c, b f' e h fis cis' c f, es b' a e h g' c,1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "59."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis''8 fis, e h' b f c! g' fis h, a e' es b f! c' h e, d a' as es b ges' h,!1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "60."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 a g d h' gis fis cis b' g f c a' fis e h! as' f es b g' e d a
      fis' dis cis gis f' d c g e' cis h fis es' c b f d' h a e cis' ais gis dis
      c' a g d h' gis fis cis c!1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "61."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c'8 g d c' des as es des' d a e d' es b f es' e h fis e' f! c g f'
      fis cis gis fis' g d a g' as es b as' a e h a' b f c b' h fis cis h'
      c g d c' des as es des' c1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "62."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 d a' g cis, dis ais' gis d e h' a es f c' b e, fis cis' h f g d' c
      fis, gis dis' cis g a e' d as b f' es a, h fis' e b c g' f h, cis gis' fis
      c d a' g cis, dis ais' gis d e h' a es f c' b e, fis cis' h f g d' c
      fis, gis dis' cis c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "63."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f8 c' g d' es b f des fis cis' gis dis' e h fis d! g d' a e' f c g es
      as es' b f' fis cis gis e! a e' h fis' g d a f! b f' c g' gis dis ais fis
      h fis' cis gis' a e h g! c g' d a' b f c as cis gis' dis ais' h fis cis a!
      d a' e h' c g d b es b' f c' des as es ces e h' fis cis' d a e c!
      f c' g d' es b f des c b f des c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "64."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8^\markup {
        \normal-text \smallCaps {
          Transpose Exercises 64 to all scale degrees
        }
      }
      f g b c f g b c b g f c b g f c1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "65."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 f g d as' es ges des d! g a e b' f as es e! a h fis c' g b f
      fis h cis gis d' a c g gis cis dis ais e' h d a b es f c fis cis e h
      c f g d as' es ges des d! g a e b' f as es e! a h fis c' g b f
      fis h cis gis d' a c g gis cis dis ais e' h d a
      c g f c b g f d c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "66."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis8 fis gis dis a' e g d es as b f h fis a e f b c g cis gis h fis
      g c d a es' b des as a d e h f' c es b h e fis cis g' d f c
       cis fis gis dis a' e g d es as b f h fis a e f b c g cis gis h fis
      g c d a es' b des as a d e h f' c es b
      des as ges des ces as ges es des1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "67."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c''8 g c, des b' f b, h as' es as, a ges' des ges, g e' h e, f d' a d, es
      c' g ges des c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "68."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis''8 gis cis, d h' fis h, c a' e a, b g' d g, as f' c f, fis es' b es, e
      des' as g d des2
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "69."
    }
    \relative c' {
      \clef treble
      \time 2/4
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 4/6 {
        es''16 f b, es c g
        d' e a, d h fis
        cis' dis gis, cis ais f!
        c' d g, c a e
        h' cis fis, h gis dis
        b' c f, b g d
        a' h e, a fis cis
        as' b es, as f c
        g' a d, g e h
        ges' as des, ges es b
        f' g c, f d a
        e' fis h, e cis gis
        es' f b, es c g
        d' e a, d h fis
        cis' dis gis, cis ais f!
        c' d g, c a e
        h' cis fis, h gis dis
        b' c f, b g d
        a' h e, a fis cis
        as' b es, as f g
      } c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "70."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      c8 f d b
      cis fis dis h
      d g e c
      es as f des
      e a fis d
      f b g es
      fis h gis e
      g c a f
      gis cis ais fis
      a d h g
      b es c as
      h e cis a
      c f d b
      cis fis dis h
      d g e c
      es as f des
      e a fis d
      f b g es
      fis h gis e
      g c a f
      gis cis ais fis
      a d h g
      b es c as
      h e cis a
      c f d b f c b d c1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "71."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 d b c
      e cis a h
      es c as b
      d h g a
      des b ges as
      c a f g
      h gis e fis
      b g es f
      a fis d e
      as f des es
      g e c d
      fis dis h cis
      f d b c
      e cis a h
      es c as b
      d h g a
      des b ges as
      c a f g
      h gis e fis
      b g es f
      a fis d e
      as f des es
      g e c d
      g c f g
      c1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "72."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f8 as es des
      fis a e d
      g b f es
      gis h fis e
      a c g f
      b des as ges
      h d a g
      c es b as
      cis e h a
      d f c b
      es ges des ces
      e g d c
      f as es des
      fis a e d
      g b f es
      gis h fis e
      a c g f
      b des as ges
      h d a g
      c es b as
      cis e h a
      d f c b
      f as es des
      c2
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "73."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      fis''8 dis h cis e h fis cis' c! a f g b f c g'\break
         fis dis h cis e h fis cis' c! a f g b f c g'
         c1
      \bar "|." \break
      \pageBreak
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "74."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      f''8 d b c es b f c' h gis e fis a e h fis'\break
         f d b c es b f c' h gis e fis a e h fis'
         h1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "75."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      e''8 cis a h d a e h' b g es f as es b f'\break
         e cis a h d a e h' b g es f as es b f'
         b1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "76."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      es''8 c as b des as es b' a fis d e g d a e'\break
         es c as b des as es b' a fis d e g d a' e'
         a1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "77."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      d''8 h g a c g d a' as f des es ges des as es'\break
         d h g a c g d a' as f des es ges des as' es'
         as1
      \bar "|." \break
    }
  }
  \score {
    \new Staff \with {
      instrumentName = "78."
    }
    \relative c' {
      \clef treble
      \numericTimeSignature
      \time 4/4
      cis''8 ais fis gis h fis cis gis' g e c d f c g d'\break
         des b ges as h fis cis gis' g e c d f c g' d'
         g1
      \bar "|." \break
      \pageBreak
    }
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}