\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsCesGes = \relative {
  \clef treble
  \key ges \major
  \time 7/4
  \override Staff.TimeSignature.stencil = ##f
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \tuplet 6/4 4 {
    \ottava #1
    \set Staff.ottavation = #"8"
    ges''''16 f es des ces b as ges f! es des ces
    \ottava #0
    b as ges f! es des ces b <des ges>-> ces des es
    fes ges as b ces des\bar ""\break
    \ottava #1
    \set Staff.ottavation = #"8"
    es fes ges as b ces
    \ottava #2
    \set Staff.ottavation = #"15"
    des es fes ges as b 
    ces es, ges ces, es ges,
    \ottava #1
    \set Staff.ottavation = #"8"
    ces es, ges ces, es ges,
    \ottava #0
    ces es, ges ces, es ges,\bar ""\break
    ces es, ges8 as16 b ces des es f! ges as
    \ottava #1
    \set Staff.ottavation = #"8"
    b ces des es f ges as b ces des es f 
    ges b, es ges, b es,\bar ""\break
    ges b, es
    \ottava #0
    ges, b es,
    ges b, es ges, b es,
    ges es ces' ges es' ces
    ges' es ces' ges 
    \ottava #1
    \set Staff.ottavation = #"8"
    es' ces
    ges' es ces' ges 
    \ottava #2
    \set Staff.ottavation = #"15"
    es' ces \bar ""\break    
    ges' es ces' b as ges
    fes es des 
    \ottava #1
    \set Staff.ottavation = #"8"
    ces b as ges fes es des 
    \ottava #0
    ces b as ges fes es des ces 
    b as ges fes <ces' es>-> ges\bar ""\break
    as b c d es f ges as b
    \ottava #1
    \set Staff.ottavation = #"8"
    c d es f! ges as
    \ottava #2
    \set Staff.ottavation = #"15"
    b c d
    es ges b, es ges, b
    \ottava #1
    \set Staff.ottavation = #"8"
    es, ges b, es ges, b\bar ""\break
    \ottava #0
    es, ges b, es ges, b
    fes ces' as fes' ces as'
    fes ces' as 
    \ottava #1
    \set Staff.ottavation = #"8"
    fes' ces as'
    fes ces' as 
    \ottava #2
    \set Staff.ottavation = #"15"
    fes' ces as' ges f es des ces b
    \ottava #1
    \set Staff.ottavation = #"8"
    as ges f es des ces
    \ottava #0
    b as ges f es des ces b as ges f es
    des ces b ces des es fes ges as b ces des\bar ""\break
    es fes ges as b ces
    \ottava #1
    \set Staff.ottavation = #"8"
    des es fes ges as b
  }
  ces4-^
  \ottava #0
  r <es,,, ges b des>1->
  r4
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicCesGes = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksCesGes = \relative {
  \clef bass
  \key ges \major
  \time 7/4
  \override Staff.TimeSignature.stencil = ##f
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \tuplet 6/4 4 {
    ces,16 des es fes ges as b ces des es fes ges as b ces
    \clef treble
    des es fes ges as ces,-> ges' f es
    \clef bass
    des ces b as ges f! es des ces b as ges f! es des
    \ottava #-1
    \set Staff.ottavation = #"8"
    ces b as ges as b ces des es
    \ottava #0
    f! ges as b ces des es f ges as b ces des es f ces es ges,
    ces es, ges ces, es ges,
    ces es, ges 
    \ottava #-1
    \set Staff.ottavation = #"8"
    ces, es ges,
    ces es, ges ces, ges' es ces ges' ces ges es' ces
    \ottava #0
    ges' es ces' ges es' ces
    ges' es ces' ges es' ces
    ges' b, es ges, b es,
    ges b, es ges, b es,
    ges 
    \ottava #-1
    \set Staff.ottavation = #"8"
    b, es ges, b es, ges b, es b c d es f! ges as b c
    \ottava #0
    d es f! ges as b c d es f! ges as b c d es b-> des
    ces b as ges fes es des ces b as ges fes
    \ottava #-1
    \set Staff.ottavation = #"8"
    es des ces b as ges 
    fes ces' as
    \ottava #0
    fes' ces as'
    fes ces' as fes' ces as'
    fes ces' as fes' ces as'
    es ges b, es ges, b
    es, ges b, es ges, b
    es, ges b, es 
    \ottava #-1
    \set Staff.ottavation = #"8"
    ges, b es, ges b, fes' es des ces des es fes ges as
    \ottava #0
    b ces des es fes ges as b ces des es fes 
    ges as b as ges f es des ces b as ges f es des
    \ottava #-1
    \set Staff.ottavation = #"8"
    ces b as ges f es des ces b
  }
  c?4-^
  \ottava #0
  r4 <es'' ges ces des>1-> r4
  \bar "|."
}