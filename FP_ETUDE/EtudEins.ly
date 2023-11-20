\version "2.19.15"

\language "deutsch"

globalOne = {
  \key b \major
}
%%%% PATTERNS RH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RechtPartEins = {
  \cadenzaOn
  \small
  g''16[ f'' b'] f''[ es'' g']
}
RechtPartZwei = {
  \cadenzaOn
  \small
  g''16[ f'' b'] f''[ es'' a']
  g''[ f'' g'] f''[ es'' a']
}
RechtPartDrei = {
  \cadenzaOn
  \small
  es''16[ g'' f'' b'] b''[ a'' f'' c'']
}
RechtPartFier = {
  \cadenzaOn
  \small
  \repeat unfold 5 {es''[ g'' f'' b']}
}
%%%% FIN PATTERNS RH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% PATTERNS LH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LeftPartEins = {
  \cadenzaOn
  \small
  b'16[ g' es' b]
}
LeftPartZwei = {
  \cadenzaOn
  \small
  b'16[ g' es' b g' f' b]
}
LeftPartDrei = {
  \cadenzaOn
  \small
  b'16[ <f' g'> es'] g'[ <es' f'> b]
}
%%%% FIN PATTERNS LH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsOne = {
  \override Staff.TimeSignature #'stencil = ##f
  \bar ".|:"\mark \markup {\circle 1}
  s4 \bar ":|.|:"
  \mark \markup {\circle 2}
  \repeat unfold 2 {\RechtPartEins}\bar ":|.|:"
  \mark \markup {\circle 3}
  \repeat unfold 7 {\RechtPartEins}\bar ":|.|:"
  \mark \markup {\circle 4}
  \repeat unfold 7 {\RechtPartZwei}\bar ":|.|:"
  \mark \markup {\circle 5}
  \repeat unfold 7 {\RechtPartDrei}\bar ":|.|:"\break
  \mark \markup {\circle 6}
  \repeat unfold 3 {\RechtPartDrei}\bar ":|.|:"
  \mark \markup {\circle 7}
  a''16[ g''  f'' c''] \RechtPartFier\bar ":|.|:"
  \mark \markup {\circle 8}
  h'''16[ a'''  g''' d'''] \RechtPartFier\bar ":|.|:"
  \mark \markup {\circle 9}
  e'''16[ d'''  c''' g''] \RechtPartFier\bar ":|.|:"
  \mark \markup {\circle 10}
  b'16[ <f' g'> es'] s \repeat unfold 2 {es''[ g'' f'' b']}\bar ":|.|:"
  \mark \markup {\circle 11}
  b'16[ <f' g'> es'] s \repeat unfold 2 {es''[ g'' f'' b']}\bar ":|.|:"
  \mark \markup {\circle 12}
  b'16[ <f' g'> es'] s \repeat unfold 2 {es''[ g'' f'' b']}\bar ":|.|:"
  \mark \markup {\circle 13}
  b'16[ <f' g'> es'] s h'''![ a''' g''' d'''] e'''![ d''' c''' g'']\bar "|"
  a''[ g'' f'' c''] s8 b'16[ <f' g'> es'] g'[ <es' f'> b]\bar ":|.|:"\break
  \mark \markup {\circle 14}
  <as' a''!>16[ c'' f'' ces''] \repeat unfold 2 {es''16[ g'' f'' b']}\bar ":|.|:"
  \mark \markup {\circle 15}
  <as'! a''!>16[ c'' f'' ces''] es''16[ g'' f'' b']
  \ottava #1
  \set Staff.ottavation = #"8"
  <f''' c''''>[ <e'''! h'''!>]
  \ottava #0
  es''!16[ g'' f'' b'] s f'''[ c''' b''!]\bar ":|.|:"
  \mark \markup {\circle 16}
  <as'! a''!>16[ c'' f'' ces''] es''16[ g'' f'' b']
  \ottava #1
  \set Staff.ottavation = #"8"
  <f''' c''''>[ <e'''! h'''!>]
  \ottava #0
  es''!16[ g'' f'' b'] s\bar "|"
  f'''[ c''' b''! a'' g'' f'' c''] d''[ c''] s es''[ g'' f'' b' a'!]\bar ":|.|:"
  \mark \markup {\circle 17}
  <as'! a''!>16[ c'' f'' ces''] \repeat unfold 3 {es''[ g'' f'' b'] es''[ c'' des'' ges'']}\bar ":|.|:"
  \mark \markup {\circle 18}
  \repeat unfold 7 {e''16[ a' cis''] fis''[ h' dis'']}\bar ":|.|:"
  \mark \markup {\circle 19}
  \repeat unfold 7 {g''16[ es'' b'] a''[ c'' f'']}\bar ":|.|:"
  \mark \markup {\circle 20}
  \repeat unfold 7 {\RechtPartZwei}\bar ":|.|:"
  \mark \markup {\circle 21}
  \repeat unfold 7 {\RechtPartEins}\bar ":|.|:"\break
  \mark \markup {\circle 22}
  \repeat unfold 2 {\RechtPartEins}\bar ":|.|:"
  \mark \markup {\circle 23}
  s4 \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicOne = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksOne = {
  \override Staff.TimeSignature #'stencil = ##f
  \bar ".|:"
  \LeftPartEins \bar ":|.|:"
  \repeat unfold 3 {\LeftPartEins}\bar ":|.|:"
  \repeat unfold 6 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 4 {\LeftPartZwei}\bar "|"
  \repeat unfold 4 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 2 {\LeftPartDrei}\bar "|"
  \repeat unfold 2 {\LeftPartDrei}\bar ":|.|:"
  \repeat unfold 2 {\LeftPartDrei}\bar "|"
  \repeat unfold 2 {\LeftPartDrei}\bar ":|.|:"
  \repeat unfold 2 {\LeftPartDrei}\bar "|"
  \repeat unfold 2 {\LeftPartDrei}\bar ":|.|:"
  \repeat unfold 2 {\LeftPartDrei}\bar "|"
  \repeat unfold 2 {\LeftPartDrei}\bar ":|.|:"
  \clef bass
  <<
    {
      \small
      s8.
      \change Staff = RH
      \stemDown
      g'16[
      \change Staff = LH
      \stemUp
      \clef treble
      <es' f'> b] b'[ <f' g'> es'] g'[ <es' f'> b]\bar ":|.|:"
    }
    \\
    {
      \small
      d'16[ c' b f] s2
    }
  >>
  \clef bass
  <<
    {
      \small
      s8.
      \change Staff = RH
      \stemDown
      g'16[
      \change Staff = LH
      \stemUp
      \clef treble
      <es' f'> b] b'[ <f' g'> es'] g'[ <es' f'> b]\bar ":|.|:"
    }
    \\
    {
      \small
      as16[ g f c] s2
    }
  >>
  \clef bass
  <<
    {
      \small
      s8.
      \change Staff = RH
      \stemDown
      g'16[
      \change Staff = LH
      \stemUp
      \clef treble
      <es' f'> b] b'[ <f' g'> es'] g'[ <es' f'> b]\bar ":|.|:"
    }
    \\
    {
      \small
      b,16[ as, ges, des,] s2
    }
  >>
  \clef bass
  <<
    {
      \small
      s8.
      \change Staff = RH
      \stemDown
      g'16[
      \change Staff = LH
      \stemUp
      \clef treble
      <es' f'> b] b'[ <f' g'> es'] g'[ <es' f'> b] g'[ <es' f'> b] g'[
      \change Staff = RH
      \stemDown
      <es' f'> b] s4.\bar ":|.|:"
    }
    \\
    {
      \small
      b,16[ as, ges, des,] s2 s4
      \clef bass
      d'16[ c' b f] as[ g f c]
    }
  >>
  \clef treble
  \repeat unfold 2 {\LeftPartDrei}\bar ":|.|:"
  \repeat unfold 2 {\LeftPartDrei}
  <<
    {
      \small
      b'16[ <f' g'>
      \change Staff = RH
      \stemDown
      es']
      \change Staff = LH
      \stemUp
      g'[ <es' f'> b]\bar ":|.|:"
    }
    \\
    {
      s8
      \clef bass
      \stemUp
      \small
      ces,16
      \clef treble
    }
  >>
  \repeat unfold 2 {\LeftPartDrei}
  <<
    {
      \small
      b'16[ <f' g'>
      \change Staff = RH
      \stemDown
      es']
      \change Staff = LH
      \stemUp
      g'[ <es' f'> b]
    }
    \\
    {
      s8
      \clef bass
      \stemUp
      \small
      ces,16
      \clef treble
    }
  >>
  \LeftPartDrei
  <<
    {
      \small
      \change Staff = RH
      \stemDown
      b'16[
      \change Staff = LH
      \stemUp
      <f' g'> es'] g'[ <es' f'> b]
    }
    \\
    {
      \clef bass
      \stemUp
      \small
      as,,16
      \clef treble
    }
  >>
  \repeat unfold 4 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 6 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 6 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar "|"
  \repeat unfold 3 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 6 {\LeftPartZwei}\bar ":|.|:"
  \repeat unfold 3 {\LeftPartEins}\bar ":|.|:"
  \LeftPartEins \bar "|."
}