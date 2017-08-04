\version "2.19.15"

\language "deutsch"

%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsThree = {
  \clef treble
  \key c \major
  \time 2/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Allegro"
  \set Staff.beatStructure = #'( 4)
  <as' h'>8^^ <e'! a'>^> <f' as'>^> <fis' g'>^^ <g' as'> <b dis'>4^> <fis' g'!>8
  <cis' d'!> <es' a'>^> <e' f'> <d'! g'!> <a' b'>^> q^> q4^> \break
  <e'' f''>8 <a' b'>4^> r8 <cis'' d''>^> <fis' c''> <g' as'> <f' des''>^>
  <ais' h'> <dis' g'> <gis' a'> <f' c''>^> <f' ges'> <dis' a'> <cis' e'> <d' es'>^>~ 
  q <dis' ges'>4.^> |\break
  <cis'' d''>8^> <fis' c''> <g' as'> <f' des''>^> <ais' h'> <dis' g'> <gis' a'> <f' c''>^> 
  <f' ges'> <dis' a'> <cis' e'> <d' es'>^>~ q <ges' d''>4^> <his' cis''>8
  <h'! c''!> <a' es''>^> <ais' h'> <g'! d''!> <gis' a'!>^^ <dis' e'> <d' g'> <ais' h'>^>
  <g' d''> <f' ges'>^> <dis' g'> <c'' des''>^> <d'! h'> <dis' e'> <a'b'>^> q
  <c'' des''>^^ q^^ <ais' des''!>4^^ 
  <as' h'>8\noBeam^^ <b dis' e' a'>^> <h d' f' as'>^> <c' des' fis' g'>^^
  <h' c''>^^ q^^ <a' c''>4^^ <c'' des'' e'' f''>8^^ q^^ q4^^ <f'' ges''>8 <c'' des''>4^> <e'' f''>8
  <h' c''> <des'' g''!>^> <d'' es''> <c'' f''> <g'' as''>^> q^> q4^> \break
  <d'''! es'''>8 <g'' as''>4^> r8 <h'' c'''>^> <e'' b''> <f'' ges''> <es'' ces'''>^> 
  <gis'' a''> <cis'' f''> <fis'' g''!> <es'' b''>^>
  <dis'' e''!> <cis'' g''> <h' d''> <c'' des''>^>~ q <cis'' e''>4.^>
  <h'' c'''>8^> <e'' b''> <f'' ges''> <es'' ces'''>^> <gis'' a''> <cis'' f''> <fis'' g''> <es'' b''>^>
  <dis'' e''!> <cis'' g''> <h' d''> <c'' des''>~ q <e'' c'''>4-> <ais'' h''>8
  <a''! b''> <g'' des'''>^> <gis'' a''> <f'' c'''> <fis'' g''!>^^ <cis'' d''> <c'' fis''> <gis'' a''>^>
  <f'' c'''> <dis'' e''>^> <cis'' f''> <ais'' h''>^> <c''! a''!> <des'' es''> <g'' as''>^> <g''! as''>
  <ais'' h''>^^ q^^ <gis'' ais'' h''>4^^ 
  <ges'' a''!>8\noBeam^^ <as' cis'' d'' g''> <a' c'' es'' ges''> <b' ces'' e'' f''>^^
  <a'' b''>^^ q^^ <g'' as'' b''>4^^ <ais'' h'' d'''! es'''>8^^ <ais'' h'' d''' es'''>^^ q4^^ r2
  r8 <gis' a'>4^> <h' c''>8 <dis'' e''>^> <fis' d''> <ais' h'> <e' c''>^> \break
  <f'! d''!> <f'' ges''> <dis'' e''> <gis' a'>^>~ q <d' b'>4^> <des' a'>8 <a' b'>4^^ q^^ q^^ q^^
  \set Staff.beatStructure = #'( 3)
  \override Beam.breakable = ##t
  <f' b'>8 <fis' g'> <a d'> <gis' a'>[
  \break
  <cis' fis'> <c' des'>] <es' gis'>[ <e' f'>
  <g c'>] <fis' g'>[ <h e'> <ais h>] <cis' fis'> <d' es'> <f ais> <e' f'>[
  <a d'> <gis a>] <h e'>[ <c' des'> <dis gis>] <d'! es'>[ <g c'> <fis g>]
  \break
  d'[ cis' c'] h[ b a]
  \clef bass
  as[ g | ges] f[ e es] %\break
  <cis d>4.-> <cis' d'>8->~ q4 <cis d>-^ \bar "||"
  \break
  \clef treble
  \time 3/4
  \override Slur.positions = #'(1 . 1)
  \override TextScript.extra-offset = #'(-4 . 0)
  as'2.^\markup {\italic {P.S.Lento}}( es''8 a'!) r4 as'8 r
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicThree = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksThree = {
  \clef bass
  \key c \major
  \time 2/4
  <e, f,>8-^\noBeam <b es'>[-> <h d'>-> <c' des'>]-> |
  \set Score.baseMoment = #(ly:make-moment 1 8)
  \set Score.beatStructure = #'( 4 )
  \stemDown
  \repeat unfold 45 {<dis,>8 <e f> <h,, c,> <dis ges>}
  <dis,>8 <e f>\stemNeutral <h,,! c,>4-^ |q-^ q-^
  \set Score.beatStructure = #'( 3 )
  \override Beam.breakable = ##t
  <b, ces>8 <g, c> <d, es,> <a, d>[ 
  <fis, g,> <des, ges,>] <gis, a,>[ <f, b,> <c, des,>] <g, c>[ <e, f,> <h,, e,>]
  <fis, g,>[ <es, as,> <ais,, h,,>] <f, b,>[ <d, es,> <a,, d,>] <e, f,>[ <des, ges,> 
  <gis,, a,,>] <es, as,>[ <c, des,> <g,, c,>] 
  es[ d des] c[ ces b,] heses,[ as, f,] e,[ es, d,] <g, as,>4.-> <g as>8->~ q4 <g, as,>-^
  \clef treble
  \time 3/4
  <b g'>8( <a h ges'> <as c' f'> <g cis' e'> <ges d' es'> <f a d'> <e! b des'> <es h c'>) r4
  \clef bass
  <d b ces'>8 r \bar "|."

}