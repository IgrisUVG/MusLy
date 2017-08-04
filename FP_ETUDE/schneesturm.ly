\version "2.19.15"

\language "deutsch"

globalSchnee = {
  \override Staff.TimeSignature #'stencil = ##f
  \time 4/4
  \key b \major
}

rechtsSchnee = \relative {
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \clef treble
  R1*2 g''32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f~ f) g32( a g f16) g32( a g f16)
  g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f~ f) g32( a g f16)
  g32( a g f16) g32( a g f16)
  <<
    {
      e'2( d) d( c) c( b) d( c) b
      \repeat unfold 2 {<g, e'>4( <ges es'>)}
    }
    \\
    {
      g'32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f~ f) g32( a g f16) g32( a g f16)
      g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16)
      g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f~ f)
      g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f16) g32( a g f2)
      \repeat unfold 2 {\tuplet 6/4 4 {g,16 c b h a b ges c b h a b}}
    }
  >>
  <cis, fis g h> 8.. fis'32 <cis h' d>4-> <b f' des'>2
  <<
    {
      \repeat unfold 2 {<g e'>4( <ges es'>)}
      \repeat unfold 2 {<ces g'>4( <b ges'>)}
    }
    \\
    {
      \tuplet 6/4 4 {g16 c b h a b ges c b h a b}
      \override TupletNumber #'transparent = ##t
      \tuplet 6/4 4 {g16 c b h a b ges c b h a b}
      \override TupletNumber #'transparent = ##f
      \tuplet 7/4 4 {ces16 c des d es e f b, f' e es d des c}
      \override TupletNumber #'transparent = ##t
      \tuplet 7/4 4 {ces16 c des d es e f b, f' e es d des c}
    }
  >>
  <e, g>4( <es ges>16.) ces'32 <f c'!>8-> <e, g>4( <es ges>16.) ces'32 <f c'!>8->
  <<
    {
      \repeat unfold 4 {gis,4( fis)} <h gis'>4( <a fis'>) <h gis'>(
      \override TupletNumber #'transparent = ##t
      \tuplet 10/8 {<a fis'>32) gis g fis f e dis d cis c}
      g'8 a b4 g8 a b4
    }
    \\
    {
      \override TupletNumber #'transparent = ##t
      \repeat unfold 3 {\tuplet 7/4 4 {h,16 c cis d dis e eis fis  eis e dis d cis c}}
      \tuplet 7/4 {h16 c cis d dis e eis}
      \tuplet 10/8 {fis32 gis a h cis dis e eis fis g}
      \tuplet 7/4 4 {h,16 c cis d dis e eis a, eis' e dis d cis c h c cis d dis e eis}
      s4
      \repeat unfold 2 {\tuplet 6/4 4 {h,16 c cis d es e f e es d cis c}}
    }
  >>
  \override TupletNumber #'transparent = ##t
  \tuplet 6/4 {h c cis d es e} \tuplet 7/4 {f fis g gis a b h} c4-> r4 R1
  des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
  des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
  des32( es des ces16) des32( es des ces16) des32( es des ces~ ces) des32( es des ces16) des32( es des ces16)
  des32( es des ces16)
  <<
    {
      s8 as'16 s16. ges16 s16. f16 s16. b16 s16. as16 s16. ges16 s16. f16 s16. fes16 s16. ces'16 s16.
      b16 s16. as16 s16. ges16 s16. f16 s16. fes16 s16. ces'16 s8
      b2( as) as( ges) ges( fes) as( ges) fes4 ges8 as
    }
    \\
    {
      des,32^( es des ces) as' des,32^( es des ces) ges' des32^( es des ces) f des32^( es des ces) b'
      des,32^( es des ces) as' des,32^( es des ces) ges' des32^( es des ces) f des32^( es des ces) fes
      des32^( es des ces) ces' des,32^( es des ces) b' des,32^( es des ces) as' des,32^( es des ces) ges'
      des32^( es des ces) f des32^( es des ces) fes des32^( es des ces) ces' des,32^( es des ces16)
      des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
      des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
      des32( es des ces16) des32( es des ces16) des32( es des ces~ ces) des32( es des ces16) des32( es des ces16)
      des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
      des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16) des32( es des ces16)
      des32( es des) ces4 <b es>4
    }
  >>
  <f' b>2\fermata \bar "|."
}

dynamicSchnee = {
  \override Hairpin.to-barline = ##f
  s1*8\pp s2 s2\< s1*9\f s2. s4\> s s2.\pp
}

linksSchnee = \relative {
  \clef treble
  \repeat unfold 2 {\times 4/6 {es''16 e es d cis d}}
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \repeat unfold 16 {\times 4/6 {es16 e es d cis d}}
  <<
    {
      \repeat unfold 16 {
        \override TupletNumber #'transparent = ##t
        \override TupletBracket #'bracket-visibility = ##f
        \times 4/6 {es16 e es d cis d}
      }
      \times 4/6 {g,16 f e es d des}
    }
    \\
    {
      b'2~ b a~ a as~ as ges~ ges ~ges16 s8.
    }
  >>
  \clef bass
  c,32 ces b a as g fis f
  \override TupletNumber #'transparent = ##f
  \repeat unfold 2 {\tuplet 7/4 4 {e16 f fis g as a b ces b a as g fis f}}
  <<
    {
      ces32 e f fis g as a b
      \stemDown
      ces b a as g fis f e
      \stemUp
      b e f fis g as a b
    }
    \\
    {
      \override Slur.positions = #'(-1 . -3)
      ces,4( s b)
    }
  >>
  \tuplet 7/4 4 {ces'16 b a as g fis f}
  \tuplet 7/4 4 {e16 f fis g as a b ces b a as g fis f}
  \override TupletNumber #'transparent = ##t
  \repeat unfold 5 {\tuplet 7/4 4 {e16 f fis g as a b ces b a as g fis f}}
  \repeat unfold 6 {\tuplet 7/4 4 {e16 f fis g gis a ais h ais a gis g fis f}}
  \repeat unfold 2 {\tuplet 10/8 4 {e32 f fis g gis a b h c cis d cis c h b a gis g fis f}}
  \tuplet 5/4 4 {e16 f fis g gis b gis g fis f} e32 b' \clef treble es e f fis g gis
  \repeat unfold 15 {\tuplet 6/4 {a16 b a as g as}}
  <<
    {
      \override TupletNumber #'transparent = ##t
      \repeat unfold 25 {\tuplet 6/4 {a16 b a as g as}}
      \tuplet 6/4 {a16 b a as g as~} as!2
    }
    \\
    {
      es2 e f ges f e1 es d c
      \override TupletNumber #'transparent = ##t
      \tuplet 7/4 {<ces es fes>16 c des d es e f} ges32 g as a b ces c des
    }
  >>
  d2\fermata
}