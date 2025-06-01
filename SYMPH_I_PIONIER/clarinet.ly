\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%

slash =
#(define-music-function (parser location ang stem-fraction protrusion)
   (number? number? number?)
   (remove-grace-property 'Voice 'Stem 'direction) ; necessary?
   #{
     \once \override Stem #'stencil =
     #(lambda (grob)
        (let* ((X-parent (ly:grob-parent grob X))
               (is-rest? (ly:grob? (ly:grob-object X-parent 'rest))))
          (if is-rest?
              empty-stencil
              (let* ((ang (degrees->radians ang))
                     ; We need the beam and its slope so that slash will
                     ; extend uniformly past the stem and the beam
                     (beam (ly:grob-object grob 'beam))
                     (beam-X-pos (ly:grob-property beam 'X-positions))
                     (beam-Y-pos (ly:grob-property beam 'positions))
                     (beam-slope (/ (- (cdr beam-Y-pos) (car beam-Y-pos))
                                   (- (cdr beam-X-pos) (car beam-X-pos))))
                     (beam-angle (atan beam-slope))
                     (stem-Y-ext (ly:grob-extent grob grob Y))
                     ; Stem.length is expressed in half staff-spaces
                     (stem-length (/ (ly:grob-property grob 'length) 2.0))
                     (dir (ly:grob-property grob 'direction))
                     ; if stem points up. car represents segment of stem
                     ; closest to notehead; if down, cdr does
                     (stem-ref (if (= dir 1) (car stem-Y-ext) (cdr stem-Y-ext)))
                     (stem-segment (* stem-length stem-fraction))
                     ; Where does slash cross the stem?
                     (slash-stem-Y (+ stem-ref (* dir stem-segment)))
                     ; These are values for the portion of the slash that
                     ; intersects the beamed group.
                     (dx (/ (- stem-length stem-segment)
                           (- (tan ang) (* dir beam-slope))))
                     (dy (* (tan ang) dx))
                     ; Now, we add in the wings
                     (protrusion-dx (* (cos ang) protrusion))
                     (protrusion-dy (* (sin ang) protrusion))
                     (x1 (- protrusion-dx))
                     (y1 (- slash-stem-Y (* dir protrusion-dy)))
                     (x2 (+ dx protrusion-dx))
                     (y2 (+ slash-stem-Y
                           (* dir (+ dy protrusion-dy))))
                     (th (ly:staff-symbol-line-thickness grob))
                     (stil (ly:stem::print grob)))

                (ly:stencil-add
                 stil
                 (make-line-stencil th x1 y1 x2 y2))))))
   #})

slashI = {
  \slash 50 0.6 1.0
}

slashII = {
  \slash 45 0.5 0.8
}

clarinetMusic = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  as8( b16 es f) as-. b-. c( es) g-. as8-- es( f
  as, g es4) f16-. b( as) g-. as4--
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  f'32( es des c as' ges f es) es( des c b) ges'-. b,( c as)
  des( c b as e' d c h) b( as ges f d' c b a)
  b( f-.)g( b-.) b( d-.) f( d-.)
  f( b-.) as( es-.) es( ges-.) as( c-.)
  des( as-.) as( f-.) f( des-.) des( as-.)
  as( des-.) des( g,-.) ges( des'-.) des( ges,-.)
  f( es-.) es( b-.) as( es-.) es( as-.) \acciaccatura {\slashI as16( c es} as2.)~
  as g4( as1 a) h~ h2 b~ b as~ as r
  \time 3/4
  R2.*15
  r4 g'2~( g4 es4. f8-.) b4( des2 c4) r2 r c4~ c2 r4 R2.*2
  \time 4/4
  \set subdivideBeams = ##f
  r16 des,8.~ des b'16->( a) b,8.-. h16->( c8.~ c2.) b4( as g f2~
  f2. as4 des2. b4 g' f es2~ es) r4 es,8( f16 b
  c) es-. f-. g( b) des-. es8-- b( c es, des b4) ces16( f es des es2)
  r2 fes4.( es8 des ces b2~ b8) des( ges4. es ces'4 b as2.)
  \bar "|."
}

clarinetMusicDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \cadenzaOn
  <cis'' b'>1~ q  s4. s16
  \cadenzaOff
}

clarinetOneMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 8 {des''16[ es e f e es]}
  \repeat unfold 4 {c[ d es e es d]}
  \repeat unfold 4 {h[ des d es d des]}
  b2.~ b~ b~ b~ b~ b
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  g'8( as b) b4( f8) f( g as) as4( es8)
  es( f g) g4( f8) f( es des) des4( c8)
  R2.*3 r4. des4( c8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    as,16 h d f as h d f as h d f
    as f d h as f d h as f d h
  }
  g h d f g h d f g h d f
  g f d h g f d h g f d h
  a c es fis a c es fis a c es fis
  a fis es c a fis es c a fis es c
  b h c des d es e f \tuplet 3/2 {fes4( es8)} R2.*3
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. c''4( h8) a2.
  f,8( g as) as4( es8) c\prall( d es) es4( b8)
  b\prall( c d) d4( c8) c( b a) c4( d8) R2.*3
  r4. r4 r32 c'16.
  d4.->~ d8 es( f es4.->~ es8) d( c b4.->~ b8) c g b4.( a)
  g4.~ g8 a\( b c4.->( g4)\) c8( d4.->) g,4-- d'8\(
  es4.->( d)\) R2.*17
  r8 a'8( b c) r c( d) r d( es) r4 R2.*10
  r4. g,4.:8 g2.:8 g2.
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \tuplet 3/2 4 {g8( as-> b h des-> d e f-> g) as4( g8)} r2
  r4 \tuplet 3/2 {as,4( g8)} r4 R2.*2
  r2 as4-- r as-- r ceses-- r ces-- r2 r8 e,,(
  \key a \major
  \time 2/4
  cis'4. d8 cis4. h8 a4. gis8 fis4) r8 fis(
  d'4. cis8 h4. a8 gis4) r8 e(
  e'4. fis8 e4. d8 cis4. h8 a4) r8 a( cis4. d8~ d4. a8 gis4) r8 e'
  \tuplet 3/2 4 {cis'8 d e fis, d' cis h a fis cis'4( h8)} R2*6
  \tuplet 3/2 4 {
    dis,,8 eis fis gis fis eis
    dis eis fis gis fis eis
    es f g as g f
  }
  es4( g)
  \key as \major
  R2*9 c4.( b8 as4) r8 as( a4. h8 c4. f,8 e4) r
  as,16( c es as c es as b c f es des c b as b
  c a fis es c a fis es c a fis g gis a b h
  c e g c e g c e~ e4) d(-. c-. h-. a2)\startTrillSpan
  f'16(\stopTrillSpan h, c d e c as f c as f c h d f as
  h d f as g e c b g e c b a c es ges
  a c es ges f d b as f d b as g b des fes
  g b des fes g fes des b g as a b h c des d
  es2) b,( as c) d( c) d-> d-> d->
  \time 3/4
  r16 c'( f as f c as f c as f as des8) r r2
  r16 c'( f as f c as f c as f as b8) r r2
  r16 c'( e g e c g e c g e g as8) r r2
  r4 r8 des16( es f g as b
  c2. des4 c b as2. b4 as f
  \override Score.RehearsalMark.extra-offset = #'(6 . 1)
  \mark "Moderato"
  e2.)
  f4( as b as2.) b4( as f e2.)
  f4( as b g2. f4) f r
  \override Score.RehearsalMark.extra-offset = #'(4 . 1)
  \mark "Adagio"
  R2.*8
  \bar "|."
}

clarinetTwoMusicVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \clef treble
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  \repeat unfold 8 {des''16[ es e f e es]}
  \repeat unfold 4 {c[ d es e es d]}
  \repeat unfold 4 {h[ des d es d des]}
  b2.~ b~ b~ b~ b~ b
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  es8( f g) g4( d8) des!( es f) f4( c8)
  c( des es) es4( d8) des!( c b) as4.
  R2.*3 r4. a4( g8)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \repeat unfold 2 {
    f,16 as h d f as h d f as h d
    f d h as f d h as f d h as
  }
  f g h d f g h d f g h d
  f d h g f d h g f d h g
  fis a c es fis a c es fis a c es
  fis es c a fis es c a fis es c a
  b h c des d es e f \tuplet 3/2 {fes4( es8)} R2.*3
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  r4. a'4( gis8) ges2.
  f,,8( g as) as4( es8) c'\prall( d es) es4( b8)
  b\prall( c d) d4( c8) c( b a) c4( b8) R2.*4
  b2.~ b c~ c es~ es d4. c b2. R2.*22
  r8 a'8( b c) r c( d) r d( es) r4 R2.*5
  r4. d4.:8 c4.:8 h4.:8 b!2.
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1)
  \tuplet 3/2 4 {g'8( as-> b h des-> d e f-> g) as4( g8)} r2
  r4 \tuplet 3/2 {as,4( g8)} r4 R2.*2
  r2 ces,4-- r des-- r eses-- r fes-- r2 r8 e,(
  \key a \major
  \time 2/4
  cis'4. d8 cis4. h8 a4. gis8 fis4) r8 fis(
  d'4. cis8 h4. a8 gis4) r8 e(
  e'4. fis8 e4. d8 cis4. h8 a4) r8 a( c4. d8~ d4. a8 gis4) r4
  e d cis h R2*6
  \tuplet 3/2 4 {
    dis8 eis fis gis fis eis
    dis eis fis gis fis eis
    es f g as g f
  }
  es2
  \key as \major
  R2*9 c'4.( b8 as4) r8 as( es2 d des!4) r R2*16
  as2( g as~ as) as~ as as-> as-> as->
  \time 3/4
  R2. r4 c( b as) r2 r4 as( f e) r2 r4 as( g~
  g) r8 des'16( es f g as b
  c2. des4 c b as2. b4 as f e2.)
  f4( as b as2.) b4( as f e2.)
  f4( as b g2. f4) f r R2.*8
  \bar "|."
}