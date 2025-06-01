\version "2.19.15"

\language "deutsch"

fagottoMusic = \relative {
  \key as \major
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  f8( es c16) b-. r es-. as,8-- as'( b as)
  c,( es b) as( des es) f8. es16~
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  es8 b'32(as g f es f g as b ges f es) as16.-- des32-. g,4-- f16.-- es32-.
  d2 des
  b'32-. as-. g-. es-. c8-- as'32( es-.) es( c-.) c( b-.) b( as-.) as2~
  as2. b4_( d1 dis)
  d4-- cis8-. h-. \tuplet 3/2 4 {ais8-. gis-. fisis-. gis-. ais-. h-.}
  \set subdivideBeams = ##f
  cis16-. h-. ais-. gis-. fisis-. gis-. ais-. h-.
  des-. c-. b-. as-. g-. as-. b-. c-.
  des-. es-.f-.g-. as-. b-. c-. des( es2--~ es) r
  \time 3/4
  R2.*20 as,2 r4 R2.*2
  \time 4/4
  r4 g2. g16 c,8.~ c2 des16 as' des,8 es2 f r2. f4~( f2 es4 des c b2.)
  des4( g2. es4 c' b as~ as2.) r4 R1 r2 r8. as16 r8. ges16
  ces, fes es des as8-. r r16 as b g as8-. r ges16 es fes des es2.
}

fagottoMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass\compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*6
  \override Score.RehearsalMark.extra-offset = #'(10 . 2)
  \mark "Allegro pastorale"
  R1*44
  \cadenzaOn
  e1~ e  s4. s16
  \cadenzaOff
}

fagottoMusicVier = \relative {
  \key as \major
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 14 {b,4^!---> b---> b--->} es8 r r2
  R2.*6 r4. fis4( g8)
  \repeat unfold 2 {f8-. as-. f-. d-. h-. r R2.}
  f'8-. g-. f-. d-. h-. r R2. fis'8-. a-. fis-. es-. c-. r R2.
  g'8-. b-. g-. es-. ces-. r  R2.*3
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. a'4( gis8) ges2. R2.*8 b2.( es, c f) d'( c h4. b4 a8 b2.)
  R2.*3 c,,2. R2.*5 g'2.( fis4 es d c) r2
  R2. g''2.( fis4 es d c) r2 R2.*17
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  r4 \tuplet 3/2 4 {g'8( as-> b h des-> d e f-> g) as4( g8)} r4
  \clef bass
  ces,,4-> r des-> r eses-> r fes-> \tuplet 3/2 {g,8( as b}
  ces4)-> \tuplet 3/2 {as8( b ces} des4)->
  \tuplet 3/2 {b8( ces des} eses4)-> \tuplet 3/2 {ces8( des eses}
  fes4)-> R2.
  \key a \major
  \time 2/4
  R2*15
  r4 \tuplet 3/2 {r8 fis4} R2*9 es2
  \key as \major
  R2*22 f2( e4 d h b) R2*8 f'2 f->~ f f-> f-> f->
  \time 3/4
  R2.*11
  \override Score.RehearsalMark.extra-offset = #'(6 . 1)
  \mark "Moderato"
  R2.*8
  %\break
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "Adagio"
  as,2.~( as4 g f~ f2.) b,4( h c) c2 des4~ des2.~ des2 c4~ c2.
  \bar "|."
}