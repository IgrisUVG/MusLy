\version "2.19.15"

\language "deutsch"

cbMusic = \relative {
  \key as \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
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
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
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
  \override Score.RehearsalMark.extra-offset = #'(10 . 2)
  \mark "Allegro pastorale"
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
  \cadenzaOn
  e1~ e  s4. s16
  \cadenzaOff
}

cbMusicVier = \relative {
  \key as \major
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef "bass_8"
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  f,2.( e4 des c b2.~ b2) des4( g2.-> e4 b' a as!2) g4(
  ges2->) f4( fes2->) fes4:16~ fes!2.:16 f!2.:16 fes2.:16
  des2.:16 d2.:16 es8 r r2 R2.*2  
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. as, R2.*3 r4. c
  \repeat unfold 6 {f,4-> f f}
  f4-> f \tuplet 3/2 {c'4( b8)} f4-> f f
  \repeat unfold 3 {\tuplet 3/2 {fes4-> r8}}
  d'4._( a a h d a h e,) R2.*5
  es'2._( c g4.~ g4~ g32 a16. b2) r4 R2.*7
  b2. b_( c d es g,8)-- g-- g-- g-- g-- g--
  \repeat unfold 13 {g-- g-- g-- g-- g-- g--}
  g-- g-- g-- g--as( b ces) g-- ces( des) g,-- des'(
  es) g,-- g-- g-- g-- g--
  \repeat unfold 5 {g-- g-- g-- g-- g-- g--}
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  R2.*8 r2 \tuplet 3/2 {g8( as b}
  ces4)-> \tuplet 3/2 {as8( b ces} des4)->
  \tuplet 3/2 {b8( ces des} eses4)-> \tuplet 3/2 {ces8( des eses}
  fes4)-> r2 R2.*3
  \key a \major
  \time 2/4
  a,2( cis fis,~ fis4) r d'2( dis e4) r
  cis2( h a fis4) r e'2 d cis R2*2
  a4 gis fis e e' eis fis2 a,4 gis fis cis' dis cis dis cis es des es2  
  \key as \major
  as c f,~ f4 r des'2 d es c b as f es~ es~
  \tuplet 3/2 4 {es8 es es es es es}
  es2~( es8[ f es des] c2~) c~ c~ c~ c~ c
  f,~ f~ f~ f~ f~ f~ f R2
  as2_( es' as, f) f->~ f f-> f-> f->
  \time 3/4
  f2.( des'4 es2 f2. es4 des2 c2.~ c4) des es e f r
  f,2. f f f
  \override Score.RehearsalMark.extra-offset = #'(6 . 1)
  \mark "Moderato" 
  f f f f f f c' c4( f,) r
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "Adagio"
  f'2.~( f4 es des c b as g2.~ g4) as2~( as4 b h~ h2) r8 e,( f2.)
  \bar "|."
}