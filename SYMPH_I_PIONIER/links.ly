\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

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
  \time 4/4
  des,2. s4 s1
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
}

linksVier = \relative {
  \key as \major
  \time 4/4
  \set beamExceptions = #'()
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(1 1 1 1)
  \clef bass
  \compressFullBarRests
}