\version "2.19.15"

\language "deutsch"

\header {
  title = "B"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #15
  %top-markup-spacing #'basic-distance = #5
  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #16
  last-bottom-spacing #'basic-distance = #15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

fretNumberSpanner =
#(define-music-function (parser location Text) (string?)
   #{
     \override TextSpanner.style = #'solid
     %\override TextSpanner.font-size = #-5
     \override TextSpanner.font-shape = #'normal
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { #Text }
   #})

global = {
  \override Staff.TimeSignature.stencil = ##f
}

#(define RH rightHandFinger)

classicalGuitar = \relative {
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible

  %\override Fingering.staff-padding = #'()
  \set strokeFingerOrientations = #'(up)

  \override Glissando.bound-details.right.arrow = ##t
  \override Glissando.arrow-length = #1
  \override Glissando.arrow-width = #0.3

  \defineBarLine "|.|:" #'("|." ".|:" "")

  \cadenzaOn
  gis8_1[\RH #2 a_2\RH #3 ais_3 h_4] a-1[ b-2 h-3 c-4]
  \stemDown
  \set stemLeftBeamCount = #0
  ais[]-1\glissando s s s
  \set stemRightBeamCount = #0
  h'[]-4 h-4[ ais-3 a-2 gis-1] b-4[ a-3 as-2 g-1]
  \set stemLeftBeamCount = #0
  a[]-4\glissando s s s
  \stemNeutral
  \set stemRightBeamCount = #0
  gis,![]
  \cadenzaOff
  \bar "|.|:"\break
  \cadenzaOn
  gis![_1_1\RH #2 \once \hide Accidental a_2_2\RH #3 b_3_3] a[_1_2 ais_2_3 h_3_4]
  \set stemLeftBeamCount = #0
  ais[]_1_2\glissando s s s
  \set stemRightBeamCount = #0
  b'![]_3_4 h[_3_4 b_2_3 a_1_2] b[_3_4 a_2_3 gis_1_2]
  \set stemLeftBeamCount = #0
  a[]_3_4\glissando s s s
  \set stemRightBeamCount = #0
  a,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  gis!_1[\RH #2 a_2\RH #3 gis a] a_1[ b_2 a b]
  ais_1[ h_2 ais h] h_1[ c_2 h c] c_1[ des_2 c des]
  cis[ \set stemRightBeamCount = #1 d]\glissando s s s
  h'_2[ ais_1 h ais] b_2[ \set stemRightBeamCount = #1 a_1]\glissando s s s
  h,_2[ ais_1 h ais] b_2[ a_1 b a]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  h_4[\RH #3 b_3\RH #2 a_2 gis!_1] c-4[ h-3 b-2 a-1]
  \set stemLeftBeamCount = #0
  des-4[]\glissando s s s
  h'-4[ b-3 a-2 gis!-1] gis-1[ a-2 ais-3 h-1] g-1[ gis-2 a-3 b-4]
  \set stemLeftBeamCount = #0
  fis-1\glissando s s s
  \set stemRightBeamCount = #0
  h,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  b_3_3[\RH #3 a_2_2\RH #2 gis!_1_1] h_3_4[ b_2_3 a_1_2]
  \set stemLeftBeamCount = #0
  c[]_3_4\glissando s s s
  \set stemRightBeamCount = #0
  gis' a_1_2[ ais_2_3 h_3_4] gis_1_2[ a_2_3 b_3_4]
  \set stemLeftBeamCount = #0
  g_1_2[]\glissando s s s
  \set stemRightBeamCount = #0
  h,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  a_2_2_2[\RH #3 gis!_1_1_1\RH #2 a gis] b_2_3_3[ a_1_2_2 b a]
  h_2_3_4[ \set stemRightBeamCount = #1 ais_1_2_3]\glissando s s s
  \set stemLeftBeamCount = #1 b'![ a]
  ais[ h ais h] a[ \set stemRightBeamCount = #1 b]\glissando s s s
  h,![ c h c] ais![ h ais h] a[ b a b]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  gis_1_1_1_1[\RH #3 \RH #2 a_1_2_2_2\RH #4 \RH #3 ais_2_2_3_3 h_3_3_3_4 c_4_4_4_4]
  \stemUp
  a_1_1_1_1[ b_1_2_2_2 h_2_2_3_3 c_3_3_3_4 des_4_4_4_4]
  \stemNeutral
  \set stemLeftBeamCount = #0
  ais[]_1_1_1_1\glissando s s s
  ces'_4_4_4_4[ b!_4_3_3_3 a_3_3_2_2 as_2_2_2_1 g_1_1_1_1]
  b_4_4_4_4[ a_4_3_3_3 gis_3_3_2_2 g_2_2_2_1 fis!_1_1_1_1]
  \set stemLeftBeamCount = #0
  a[]_4_4_4_4\glissando s s s
  \set stemRightBeamCount = #0
  gis,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  h_4[ ais_3 a_2 gis_1 a_1 ais_2]
  \set stemLeftBeamCount = #0
  c-4[]\glissando s s s
  \set stemRightBeamCount = #0
  a'!-2[] gis-1[ a-2 ais-3 h-4 ais-4 a-3]
  \set stemLeftBeamCount = #0
  g-1[]\glissando s s s
  \set stemRightBeamCount = #0
  b,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  gis_1_1_1[ a_2_2_2 ais_3_2_3 h_4_3_3] 
  \stemUp
  c_4_4_4[ h_3_3_3 b_2_2_2 a_1_1_1]
  \stemNeutral
  \set stemLeftBeamCount = #0
  ais_1_1_1[]\glissando s s s
  \set stemRightBeamCount = #0
  g'![] gis_1_1_1[ a_2_2_2 ais_3_2_3 h_4_3_3] b_4_4_4[ a_3_3_3 as_2_2_2 g_1_1_1]
  \set stemLeftBeamCount = #0
  fis![]\glissando s s s
  \set stemRightBeamCount = #0
  a,[]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  gis!_1[ a_2 gis a gis a] a_2[ b!_3 a b a b]
  ais_3[ \set stemRightBeamCount = #1 h_4] s s
  h-1[ \set stemRightBeamCount = #1 c-2]\glissando s s s
  as'!-4[ g-3 as g as g]
  g[-3 \set stemRightBeamCount = #1 fis!-2] s s
  ges[-2 \set stemRightBeamCount = #1 f-1] s s
  f[-4 \set stemRightBeamCount = #1 e-3]\glissando s s s
  \set stemLeftBeamCount = #1 a,[_2 gis_1]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  g_0[ as_1 g_0] gis_1[ a_2 gis_1] a_2[ b_3 a_2] ais_3[ h_4 ais_3] h-1[ c-2 h-1]
  \set stemLeftBeamCount = #0
  c-2[]\glissando s s s
  a'-2[ b-3 a-2] ais-3[ h-4 ais-3]
  \set stemLeftBeamCount = #0
  a-2[]\glissando s s s
  \set stemRightBeamCount = #0
  a,_2[] gis!_1[ a_2 gis_1]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
  as[  g as] a[ gis a] b[ a b] h[ ais h] c[ h c]
  \set stemLeftBeamCount = #0
  cis-2[]\glissando s s s
  b'[ a b] h[ ais h]
  \set stemLeftBeamCount = #0
  b[]\glissando s s s
  \set stemRightBeamCount = #0
  b,[] a[ gis! a]
  \cadenzaOff
  \bar ":|.|:"\break
  \cadenzaOn
}

\score {
  \new Staff {
    \global
    \clef "treble_8"
    \classicalGuitar
  }
  \layout {
    indent = #0
    ragged-right = ##f
    ragged-last = ##f
  }
}
