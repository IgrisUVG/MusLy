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
  c es f g b des es8 b c es, des b4 ces16 f es des es2)
  r2 fes4.( es8 des ces b2~ b8) des ges4. es ces'4 b as2.
  \bar "|."
}


clarinetMusicVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef treble  
  \compressFullBarRests
}
