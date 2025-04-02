\version "2.19.15"

\language "deutsch"

#(define (octave-up m t)
   (let* ((octave (1- t))
          (new-note (ly:music-deep-copy m))
          (new-pitch (ly:make-pitch
                      octave
                      (ly:pitch-notename (ly:music-property m 'pitch))
                      (ly:pitch-alteration (ly:music-property m 'pitch)))))
     (set! (ly:music-property new-note 'pitch) new-pitch)
     new-note))

#(define (octavize-chord elements t)
   (cond ((null? elements) elements)
     ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
      (cons (car elements)
        (cons (octave-up (car elements) t)
          (octavize-chord (cdr elements) t))))
     (else (cons (car elements) (octavize-chord (cdr elements ) t)))))

#(define (octavize music t)
   (if (eq? (ly:music-property music 'name) 'EventChord)
       (ly:music-set-property! music 'elements (octavize-chord
                                                (ly:music-property music 'elements) t)))
   music)

makeOctaves = #(define-music-function (parser location arg mus) (integer? ly:music?)
                 (music-map (lambda (x) (octavize x arg)) (event-chord-wrap! mus)))

links = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  R1*12
  \time 3/4
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2)
  R2.
  \clef treble
  <as es' as>16-> q q-> q
  <g es' g>-> q q-> q
  <f es' f>-> q q-\markup {\italic simile} q
  \clef bass
  <es b' es> q q q q q q q q q q q
  <des b' des> q q q q q q q <c b' c> q q q
  <b f' b> q q q q q q q q q q <as f' as>
  <es' b' es> q q q <es as es'> q q q q q q q
  <es g es'> q q q q q q <es as es'> < es b' es> q q q
  <es as es'> q <f as f'> q <g b g'> q q q <g h g'> q q q
  <f c' f> q q q <es c' es> q q q q q <es ces' es> q
  <es g b> q q q q q q q q q q q
  <d f c'> q q q <d f b> q q q <es b' es> q q q
  <es as es'> <es g es'> q q <es ges es'> q q q <des f des'> q q q
  <c f c'> q q q q q <c e c'> <c d c'> <c e c'> q q <des f des'>
  <des ges des'> q q q q q q q <ces eses ces'> q q q
  <b es b'> q q q q q q q <as des as'> q q q
  <as c as'> q q q <b es>-. es'->( b <es, g> <b d>) d'->( <g, b> f
  <c es>) c'->( <es, g> c <as c>) c'->( as <c, es> <as c>) as'-. b->( <des, f>
  <b des> des'-> <f, b> des b) des'->( <es, b'> <des g> as) des'->( <es, as> des
  as) c'->( <es, as> c <as es' as>4) r
  <es' c' es>4.
  \stemDown
  <as,, es' as>~ q2 r4 R2.*2
  \stemNeutral
  \time 4/4
  des,2. s4 s1 r2. des'4 f, r2.
  \makeOctaves #1 {
    des'2 as4 b c des es f g r2. R1 r2 ces,4 b g16
  }
  es'' fes f ges g as a b b, a' as g ges fes es <es, as des>2 r
  r2. es''16 ces des b ces4
  <<
    {
      \stemDown
      <as es'>2.
    }
    \\
    {
      \stemUp
      s4 as,,2
    }
  >>
  \bar "|."
}

linksDrei = \relative {
  \key h \minor
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  R1*50
  \cadenzaOn
  \clef treble
  s1*2 s4. s16
  \cadenzaOff
}

linksVier = \relative {
  \key as \major
  \time 3/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #2
  s2.*14 es8 r r2 R2.*3
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  g4-- es'8( f,4) d'8( des!4)
  \clef treble
  r8 g'16( f) as( g f es)
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  es( des c b)
  b( as g f) es( d c b
  \clef bass
  as g) g[( f e d]) d[( c h a])
  \stemDown
  g_( c,)
  \stemNeutral
  des d e f g as b ces des d e f g as b ces
  s2 s2.
  \clef treble
  \ottava #1
  \set Staff.ottavation = #"8"
  g''16 as b ces des d e f g4
  \ottava #0
  \clef bass
  \repeat unfold 6 {g,,,,16 a h a}
  \repeat unfold 6 {fis16 g a g}
  b16 h c des d es e f
  \tuplet 3/2 {fes4( es8)}
  R2.*20
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3)
  \makeOctaves #1 {
    b2. b-- a-- g-- fis-- g
  }
  R2.*18
  r2
  <<
    {
      \stemDown
      \makeOctaves #1 {
        a8 b c r c d r d es
      }
    }
    \\
    {
      \stemUp
      s4 r8 g,, r r g r r g      
    }
  >>
  r2 R2.*7
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  r4
  \tuplet 3/2 4 {
    \makeOctaves #1 {
      g'8 as b h des d e f g as4( g8)
    }
  } r4
  <ces, eses geses as>-> r <des f as>->
  r4 <ceses eses geses as ceses> r <fes, ces' fes> r2R2.*3
  \key a \major
  \time 2/4
  <a cis a'>2\arpeggio <gis cis gis'>\arpeggio
  <fis cis' a'>~\arpeggio q4 r
  <d' fis a d>2\arpeggio <h fis' dis'>\arpeggio
  <e gis h e>4\arpeggio r
  <cis e gis cis>2\arpeggio <h e gis h>\arpeggio
  <a cis e a>\arpeggio <a cis fis a>4\arpeggio r
  R2*13
  <es es'>4 <des des'> <es es'>2
  \key as \major
  
}