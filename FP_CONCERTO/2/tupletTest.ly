\version "2.19.15"

\language "deutsch"

\relative d'' {
  \set subdivideBeams = ##t
  %\set tupletSpannerDuration = #(ly:make-moment 2 1)
  \set baseMoment = #(ly:make-moment 1 6)
  %\set beatStructure = #'(4 4 4)
  \tuplet 3/2 2 {
    fis,16[ e' a d, a fis' h e, d a' g' fis]
  }
}