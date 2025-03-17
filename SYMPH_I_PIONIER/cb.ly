\version "2.19.15"

\language "deutsch"

cbMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  des8->( g,) as->( es) c'4 des as es' f, c'
  des,8( c b4-.) des8( c b4)
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  b32( a b c d f es d es d c b as ges' f es des2)
  b8 as es' b as4 es'8 b <as es'>4. c8 es f b,4
  b1 h e,~ e2 g b as~ as r
  \time 3/4
  R2.*18 r2 r8 <as es'>8~ q2.~ q2 r4 R2.*2
  \time 4/4
  des2.:16 as4 R1 es'16 as,8.~ as2 r4 r2 des8 f, <b es> f'
  as2.( des,4 es b c8 f, c'4~ c b es2~ es1) R1*2
  as,1~ as4 as as2~ as4 as2.
  \bar "|."
}

cbMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  h,,16( h') h h h a fis d' c h ais a d d d d
  cis c ais g g g g fis e e e e fis g ais h h h h c c c c d
  es f ges cis, d e e e e a, h cis d d d d c h h h b e, fis g
  a a a a g g g fis fis e fis g a a g a h h a h cis cis cis cis~ cis2
  \bar "||"
  \unset beamExceptions
  R1*8 d,1 \repeat unfold 3 {d4 fis8( a h cis h a)} d,1~ d4. cis8 h e4.~
  e2 a,~ a1 R1 a2 r r
  <<
    {
      \tuplet 3/2 {r16[ d' d]} d4.~ d1~ d2
    }
    \\
    {
      d,2~ d1~ d2
    }
  >>
  r2 R1 r4 cis'32 b a g e d cis b a2~ a1~ a R1*2 d1 R1*3
  a1~ a~ a a4_( h g a~ a h his cis~ cis2 d) R1
  r2. \tuplet 6/4 {gis16 eis cis h a gis} fis1 R1*3
  a1:16%-"stacc."
  e1
}

cbMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
}