\version "2.19.15"

\language "deutsch"

\include "scripts.ly"
\include "fluteIII.ly"

fluteMusic = \new Voice \with {
  \remove "Forbid_line_break_engraver"
  \override Beam.breakable = ##t
}
\relative e'' {
  \clef treble
  \key e \major
  \time 2/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Lustig"
  \repeat volta 2 {
    h8-. e-. r gis-. gis( fis) r cis-. h-. fis'-. r a-. a( gis) r a-.
    h-. e,-. a16( gis fis e gis8) h,-. e16( dis cis h
  }
  \alternative {
    {
      cis8) e-.
      \set Score.repeatCommands = #'((volta #f))
      dis-. h'-. gis8.( a16 e8) cis-.
    }
    {
      cis8\repeatTie e-.
    }
  }
  fis-. dis-.
  e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r
  h'8.( a16 gis8) e-. h-. r cis-. fis-. h8.( a16 gis8) h-. e,-. r
  cis-. fis-. h8.( a16 gis8) a-. h-. e,-. dis-. e-. fis-. dis-. e-. r r4
  r8 a,16 h cis( dis) e fis \break
  \override Score.VoltaBracketSpanner.Y-offset = 7
  \repeat volta 2 {
    gis( a) h cis dis( e) fis gis gis8( fis) dis,16( e) fis gis
    a( h) cis dis e( fis) gis a a8( gis) e16( fis gis a
    h) e,( gis e) a( gis) fis e gis( e h) fis' e( dis) cis h
  }
  \alternative{
    {
      cis([ e a)
      \set Score.repeatCommands = #'((volta #f))
      cis,] dis h' fis( dis) gis( a) fis e dis cis h a
    }
    {
      cis[ e( dis
    }
  }
  cis] dis) fis( e dis e8) r r4
  h8-- e,16( h gis h fis' gis a, h fis' a dis, fis h dis
  e8--) h16( e, h e fis h cis, e a cis fis, h cis e
  fis8--) e16( h e, fis h e fis, a cis e gis, h dis fis
  gis8--) e16( h a e h a gis fis gis h a fis a cis
  e8--) h'16( a fis e h a fis e gis a h e fis a)
  cis( e cis h dis fis dis cis h gis fis h, a fis a cis
  e\( fis gis\) h\( cis a\) cis dis fis8) e32( h a fis e8) r
  r a32( gis e cis h8) r
  \bar "||"
  \tag #'pageBreack {
    %\pageBreak
  }

  %\fluteExpMusic
  \fluteExp

  r4
  \override TrillSpanner.bound-details.left.text = \markup{
    \musicglyph #"scripts.trill" \raise #1.65 \teeny  \flat
  }
  #(define afterGraceFraction (cons 15 16))
  \tag #'trillLen {
    \once\override TrillSpanner.minimum-length = #6
    \once\override TrillSpanner.springs-and-rods = #ly:spanner::set-spacing-rods
  }
  \afterGrace d'\startTrillSpan {cis16(\stopTrillSpan d}
  \bar "||"
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  h'16-.) ais,( dis gis g h, f' e) \times 2/3 {gis16( a gis} fis8-.) e \acciaccatura h cis
  h \acciaccatura eis fis gis \acciaccatura fis dis e16( dis fis, d' cis c gis ais)
  h8 \acciaccatura dis e a \acciaccatura dis, cis
  h8 \acciaccatura fis' gis e \times 2/3 {cis16( gis e}
  cis8) h16( e dis gis fis h)
  \once\override Slur.positions = #'(1 . 1)
  gis( h e, a fis gis e cis)
  a( cis h e cis fis a h gis dis h fis' cis a gis e
  cis8) dis16( fis a cis e gis) a( e cis gis' e h a fis)
  dis( e gis h a cis e fis)
  \once \override Slur.eccentricity = #1.5
  gis( a h cis e fis e h)
  \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . 0)) Slur
  cis( e cis a gis h gis fis e fis e h) gis( cis h a
  gis cis dis gis) h( cis h fis gis dis cis dis h e h a
  gis cis dis gis) h( cis h fis gis dis cis dis h e h a)
  gis( h cis e fis gis h cis)
  \tag #'Part {
    dis8(
  }
  \tag #'Partitur {
    dis?8(
  }
  e) eis( fis)
  h \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    a16( gis e cis h fis e dis h)
  }
  \set subdivideBeams = ##f
  a( gis fis e) r[
  \set stemRightBeamCount = #1
  fis(
  \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    \set stemLeftBeamCount = #1
    h cis e] a h e) a( gis e
    \tag #'Part {
      cis
    }
    \tag #'Partitur {
      cis!
    }
    h fis e
    \tag #'Part {
      dis
    }
    \tag #'Partitur {
      dis!
    }
    h)
    dis( cis ais gis) fis( cis fis h cis fis) h( cis
    h cis h cis h cis dis cis dis
    \tag #'Part {
      cis
    }
    \tag #'Partitur {
      cis!
    }
    h cis)
    h( gis h a
    \tag #'Part {
      cis
    }
    \tag #'Partitur {
      cis!
    }
    a gis h gis fis
    \tag #'Part {
      gis
    }
    \tag #'Partitur {
      gis!
    }
    fis
    gis fis gis a gis a h cis h cis h cis)
    h( a h a fis a fis e fis e cis e
  }
  \tag #'Partitur {
    \newSpacingSection
    \override Score.SpacingSpanner.strict-grace-spacing = ##t
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  }
  h8)
  \tag #'Partitur {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {\slashI cis16[( cisis dis]} e8) g,
  \tag #'Partitur {
    \once\override Score.GraceSpacing.spacing-increment = #1.3
  }
  \acciaccatura {\slashI a16[( h c]}
  \tag #'Part { cis8) }
  \tag #'Partitur {
    \tweak Accidental.extra-offset #'(0.4 . 0)
    cis8)
  }
  \tag #'Partitur {
    \newSpacingSection
    \revert SpacingSpanner.strict-grace-spacing
    \unset Score.proportionalNotationDuration
  }
  \bar "||" \break
  %\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  %\mark "Meno mosso"
  \set subdivideBeams = ##f
  \override TupletNumber.transparent = ##f
  r16 \times 2/3 {h'8[( a) e]} fis16( cis h a)
  gis( cis dis fis8) r16 \acciaccatura {\slashIII h,[( dis gis]} cis)
  r dis \times 2/3 {cis8\prall[( h) fis]} e16( h a gis) fis( h cis e8) r16
  %\once\override Score.GraceSpacing.spacing-increment = #1.3
  %\once\override Staff.KeySignature.Y-offset = #5
  \tag #'Partitur {
    \newSpacingSection
    \once\revert Score.SpacingSpanner.strict-grace-spacing
  }
  \acciaccatura {\slashIII gis,16[( cis fis]} h8) e,16( dis h) gis( a h)
  \times 2/3 {cis8 e gis} r16 dis( e) a gis( h) e a,[( fis]
  \tuplet 3/2 {h,8[) e( dis16~ dis~]} dis e) cis' gis( a8) e'16
  \tag #'Part {
    \break
  }
  %\override Score.RehearsalMark.extra-offset = #'(-2.5 . -2)
  %\mark "Tempo I"
  \override TupletNumber.transparent = ##t
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = #'(2 2 2 2)
    r16[ b'( as) es f b,]( as)
    \shape #'((0 . -2.5) (-1 . 0) (0 . 2) (0 . -2)) Slur
    es( c' e, as' h,) c( b c b as b as)
    %\once\override Slur.eccentricity = #0.5
    des,( c des es f,)
    r[ c'''( b) es, as( g]) c, f-. es-. b( as) des( c es des c b c d) es,( f b as e)
    c' des,( e as g es) b' c,( f g e des) ais( h) d( eis) ais( gis cis) dis,( fis h) cis, ais'(
    g d g,) e'( d c a) f'( c h) a'( gis)
  }
  \set subdivideBeams = ##f
  \once\override TupletNumber.transparent = ##f
  \times 2/3 {r8[ e' h]} \times 2/3 {a16 cis a} h8 gis \times 2/3 {fis16 h a}
  \once\override TupletNumber.transparent = ##f
  \once\override TupletBracket.bracket-visibility = ##t
  \times 2/3 {gis4 e8~ e r4}
}