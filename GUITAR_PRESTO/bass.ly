bass = 
\relative
{
  \global
  \clef bass
  \mark \markup {\circle 1}
  e,4 h'8 e e e e e e h h h cis cis cis cis a h e, r h'' h,4.
  e,4 h'8 e e e e e e h h h cis cis cis cis a h
  \mark \markup {\circle 2}
  e, r4 r4. r r4 eis'8 fis r r gis r r fis r4 dis8 r4 h8 r4 r4. r4 fis'8 h r4
  \bar "||"
  \mark \markup {\circle 3}
  R2.*3 gis8 e16( fis) gis a h8 h h fis dis16( e) fis gis a8( gis) h
  e, cis16( dis) e fis gis8 a fis
  \mark \markup {\circle 4}
  e4 h8 e e e e e e h h h cis4. gis'8 a fis
  r4 gis,8 cis a h
  \mark \markup {\circle 5}
  \repeat unfold 6 {e,4.} e8 r gis' fis r a
  gis a16( gis) fis e fis( e) dis cis h8 e r gis fis r h, gis a h e,4 r8
  \bar "||"
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup {\circle 6 meno mosso}
  h'4. a e' cis4 r8 fis,4. h e, r a2. gis4. cis4 r8 h4. h cis~ cis4 r8 h4. h
  \bar "||"
  \key e \minor
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup {\circle 7 T-po I}
  e,8 e e e e16( fis) g a h8 h h c16( h) a g fis g a h cis dis e fis g4 fis8 e2. h 
  \mark \markup {\circle 8}
  a g fis e4. r r4 h'8 e,4 r8 h'4. e8 r4 e8 r4 e8 r4 h8 r4 e,8 r4
  \bar "||"
  \key e \major
  \mark \markup {\circle 9}
  \repeat unfold 6 {cis'8} \repeat unfold 6 {gis}
  \repeat unfold 3 {cis8} \repeat unfold 3 {gis}
  a( gis) cis gis fis h c a h e,4 r8
  \bar "||"
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup {\circle 10 meno mosso}
  h'4. a e' cis fis, h e,8 h' e gis e h a cis e a e cis gis h dis cis gis' e
  h e gis h, fis' h e, gis h~ h e, h e cis a \repeat unfold 3 {h}
  \repeat unfold 3 {cis} \repeat unfold 3 {a}\repeat unfold 3 {e'}
  \repeat unfold 3 {h} cis4 h8 gis a h
  \bar "||"
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup {\circle 11 T-po I}
  e,4 h'8 e e e e e e h h h cis4. gis'8 a fis
  r4 gis,8 cis a h
  \mark \markup {\circle 12}
  \repeat unfold 6 {e,4.} e8 r gis' fis r a
  gis a16( gis) fis e fis( e) dis cis h8 e r gis fis r h, gis a h e,4.
  \bar "|."
}