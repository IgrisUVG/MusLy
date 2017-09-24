\version "2.19.15"

\language "deutsch"

\include "scripts.ly"

fluteMusic = \relative e'' {
  \clef treble
  \key e \major
  \time 2/4
  %\override Staff.TimeSignature #'stencil = ##f
  %\override Score.VoltaBracketSpanner.Y-offset = 7
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
    \pageBreak
  }
  r32 f''( e f) r e( dis e)
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h16([ e gis]} cis8-.) r32 his,( cis his)
  r cis( dis cis) \acciaccatura {\slashI fis16([ h, dis,]} a8-.) r32 c'( h c) r h( ais h)
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h,16([ a' dis]} gis8-.) r32 fisis,( gis fisis)
  r gis( ais gis) \acciaccatura {\slashI cis16([ fis, ais,]} e8-.)
  r32 g'( fis g) r fis( eis fis) r16. gis32( a gis) r a( b a)
  r dis( e dis) r e( f e) r cis( c cis) r c( h c)
  r ais( h ais) r eis( fis eis) r cis( his cis) 
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
  \acciaccatura {\slashIII e,([ h']} gis'16-.)
  r32 h( cis h) r gis( fis gis) r a( h a) r dis,( cis dis)
  r gis( a gis) r e( dis e) r fis( gis fis) r h,( a h)
  r eis( fis eis) r e( dis e) \acciaccatura {\slashIII h16([ e gis]} cis8-.)
}