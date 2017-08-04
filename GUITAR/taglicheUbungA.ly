\version "2.19.15"

\language "deutsch"

\header {
  title = "A"
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
strokeUp =
\markup {
  \combine
  \override #'(thickness . 1.3)
  \draw-line #'(0 . 2)
  \raise #2
  \arrow-head #Y #UP ##f
}
strokeDown =
\markup {
  \combine
  \arrow-head #Y #DOWN ##f
  \override #'(thickness . 1.3)
  \draw-line #'(0 . 2)
}

global = {
  \time 6/8
  \override Staff.TimeSignature.stencil = ##f
}

#(define RH rightHandFinger)

classicalGuitar = \relative {
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible

  \override Fingering.staff-padding = #'()
  \set strokeFingerOrientations = #'(up)

  \override Glissando.bound-details.right.arrow = ##t
  \override Glissando.arrow-length = #1
  \override Glissando.arrow-width = #0.3

  dis8_1\RH #3 fis_4\RH #2 a_2 c-1 dis-4 fis-2
  g-2 e-4 cis-1 b_2 g_4  e_1
  \bar "||"
  \cadenzaOn
  \set stemLeftBeamCount = #0
  f_1[]\glissando s s s s s
  \cadenzaOff
  es''-2 c-4 a-1 ges-2 es-4 c-1
  \bar "||"
  h-1 d-4 f-2 gis-1 h-4 d-2
  \cadenzaOn
  \set stemLeftBeamCount = #0
  cis-2[]\glissando s s s s s
  \set stemRightBeamCount = #0
  e,,[]
  \cadenzaOff
  \bar ":|."
  \break
  c_3\RH #2 es_1\RH #3 fis_4 a-2 c-1 es-4
  e!-4 cis-1 b-2 g_4 e_1 cis_3
  \bar "||"
  \cadenzaOn
  \set stemLeftBeamCount = #0
  d_3[]\glissando s s s s s
  \cadenzaOff
  c''-4 a-1 fis-2 es-4 c-1 a-3
  \bar "||"
  gis-3 h-1 d-4 f-2 gis-1 h-4
  \cadenzaOn
  \set stemLeftBeamCount = #0
  b-4[]\glissando s s s s s
  \set stemRightBeamCount = #0
  cis,,[]
  \cadenzaOff
  \bar ":|."
  \break
  \key des \major
  \time 4/4
  as_4\RH #2 b_1\RH #3 des_4 f_3 as-1 b-3 des-2 f-1
  as-4 f-1 des-2 b-3 as_1 f_3 des_4 b_1
  \bar ":|.|:"
  as_4 c_3 es_1 ges_4 b-3 c-1 es-4 ges-2
  as-4 ges-2 es-4 c-1 b_3 ges_4 es_1 c_3
  \bar ":|."
  \break
  as_4 b_1 des_4 f_3 as-1 ces-4 b-3 f'-1
  d-3 as-1 ces-4 b-3 as_1 f_3 b,_1 as_4
  ges_2^"I" b_1 es_1 f_3 ges-4 b-3 es-4 f-1
  ges-2 es-4 b-3 ges-4
  \fretNumberSpanner "I"
  es_1\startTextSpan b_1 ges_2 f_1
  as_4 ges_2 b_1 es_1\stopTextSpan ges-4 a-2 es'-4 ges-2
  f-1\startTextSpan des-2 as!-1 f-3 des_4 f_3 as_1 f'_1
  es-4 c-1 as-1 ges-4 es_1 c_3 as_4 c_3
  des_4 as'_1 f_3 des'_2 as-1 f'-1 des4-2\stopTextSpan
  \bar "|."
  \break
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark.extra-offset = #'(4.5 . -1)
  \mark\markup{
    \italic Arph. \strokeUp \strokeDown
  }
  \time 2/1
  \key f \major
  <f,, c' f a c f>1 <f des' f as des f>
  \set Staff.printKeyCancellation = ##t
  \bar "||"
  \unset Staff.explicitKeySignatureVisibility
  \override Score.BreakAlignment.break-align-orders =
  ##((left-edge ambitus breathing-sign clef staff-bar
       key-cancellation key-signature time-signature custos)

     (left-edge ambitus breathing-sign clef key-cancellation
       staff-bar key-signature time-signature custos)

     (left-edge ambitus breathing-sign clef key-cancellation
       key-signature staff-bar time-signature custos))
  \key fis \major
  <fis cis' fis ais cis fis>1 <fis d' fis a d fis>
  \bar "||"
  \key g \major
  s s
  \bar "||"
  \key as \major
  s s
  \bar "|."
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \set Staff.printKeyCancellation = ##f
  \key f \major
  <f c' f a c f> <f b f' b des f>
  \set Staff.printKeyCancellation = ##t
  \bar "||"
  \unset Staff.explicitKeySignatureVisibility
  \key fis \major
  <fis cis' fis ais cis fis>1 <fis h fis' h d fis>
  \bar "||"
  \key g \major
  s s
  \bar "||"
  \key as \major
  s s
  \bar "|."
  \break
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  \set Staff.printKeyCancellation = ##f
  \time 4/4
  \key dis \minor
  \revert Fingering.staff-padding
  \unset strokeFingerOrientations
  dis'8-1(\RH #3 eis-3) dis(\RH #2 eis) eis-3( fis-4) eis( fis)\bar ":|.|:"
  fisis-0( gis-1) fisis( gis) ais-3( h-4) ais( h)\bar ":|.|:"
  cisis-3( dis-4) eis-1( fis-2) eis-1( gis-4) fis-2( dis-4)\bar ":|."
  cisis-3( dis-4) eis-1( dis-4) cisis-3( dis-4) cisis-3( h-0)
  ais-3( h-4) gis-1( h-4) ais-3( fis-4) gis-1( eis-3)\bar ".|:"
  dis8-1( eis-3) dis( eis) eis-3( fis-4) eis( fis)\bar ":|.|:"
  fisis-0( gis-1) fisis( gis) gisis-2( ais-3) gisis( ais)
  h-0( dis-4) gisis,-2( ais-3) h-0( dis-4) gisis,-2( h-4)
  ais-3( dis-4) gis,-1( gisis-2) ais-3( dis-4) dis,-1( fis-4)
  eis-3( h'-4) dis,-1( disis-2) eis-3( h'-4) cisis,-0( eis-3)
  dis-1( ais'-3) cisis,-0( dis-1) eis-3( fis-4) gis-1( eis-3)
  dis2-1 <ais'-3 dis-4>
  \bar "|."
  \break
  \time 3/4
  \key des \major
  des16-2(\RH #2 c-1) des(\RH #3 c) b-3( as-1) b( as) ges-4( f-3) ges-4( es-1)
  des-4( c-3) es-1( d-0) f-3( es-1) ges-4( f-3) as-1( g-0) b-3( as-1)
  \bar ":|."
  des16-2( c-1) des( c) es-4( des-2) es( des) f-1( e-0) ges-2( f-1)
  \repeat percent 3 {as-4( g-3) as-4( f-1)}
  \repeat percent 3 {g-3( fis-2) g-3( e-0)}
  \repeat percent 2 {ges!-2( f!-1) es-4( d-3)} es-4( d-3) des-2( c-1)
  \repeat percent 2 {ces-4( b-3) ces-4( as-1)} ges-4( f-3) es-1( d-0)
  ces'-4( b-3) des-2( c-1) es-4( d-3) f-1( e-0) ges-2( f-1) as-4( f-1)
  d-3( ces-0) ces-4( as-1) f-3( e-2) ges-4( f-3) as-1( g-0) b-3( as-1)
  ces-4( b-3) ces-4( as-1) eses'-3( des-2) eses-3( ces-0) ges'-2( f-1) es-4( eses-3)
  des16-2( c-1) des( c) b-3( as-1) b( as) ges-4( f-3) ges-4( es-1)
  des-4( c-3) es-1( d-0) f-3( es-1) ges-4( f-3) as-1( g-0) b-3( as-1)
  des-2( c-1) es-4( des-2) f-1( e-0) ges-2( f-1) as-4( g-3) as-4( f-1)
  \repeat percent 2 {des-2( c-1) es-4( c-1)} des8-2 r
  \override Staff.KeyCancellation.break-visibility = #'#(#f #f #f)
  \break
  \defineBarLine "|.|:" #'("|." ".|:" "")
  \key a \minor
  \time 2/4
  \bar "|.|:"
  \override Fingering.staff-padding = #'()
  \repeat percent 2 {gis,16_1( a_2 ais_3 h_4}\bar ":|.|:"
  \repeat percent 2 {a-1 b-2 h-3 c-4}\bar ":|."
  \cadenzaOn
  \set stemLeftBeamCount = #0
  ais[]_1\glissando s s s
  \teeny
  \once \hide Stem e'
  \once \hide Stem g\glissando s s s
  \normalsize
  gis,?4)
  \cadenzaOff
  \break
  \bar "|.|:"
  \repeat percent 2 {h16_4( b_3 a_2 as_1}\bar ":|.|:"
  \repeat percent 2 {c-4 h-3 b-2 a-1}\bar ":|."
  \cadenzaOn
  \set stemLeftBeamCount = #0
  des[]-4\glissando s s s
  \teeny
  \once \hide Stem g
  \once \hide Stem e\glissando s s s
  \normalsize
  gis,?4)
  \cadenzaOff
  \break
  \bar "|.|:"
  \override Slur.positions = #'(1 . 1)
  \tuplet 5/4 4 {gis16_1( a_2 gis_1 ais_3 gis_1 h_4 gis_1 ais_3 gis_1 h_4}\bar ":|.|:"
  \tuplet 5/4 4 {a_1 b_2 a_1 h_3 a_1 c-4 a-1 h-3 a-1 c-4}\bar ":|."
  \cadenzaOn
  \set stemLeftBeamCount = #0
  ais[]\glissando s s s
  \teeny
  \once \hide Stem e'\glissando s s s
  \normalsize
  gis,?4)
  \cadenzaOff
  \bar "|."
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
