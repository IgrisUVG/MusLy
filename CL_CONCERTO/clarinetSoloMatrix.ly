\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "Cl. Solo"
  meter = ""
  composer = "I. G."
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing #'basic-distance = #20
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #14
  last-bottom-spacing #'basic-distance = #16
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \Score
    %\remove "Bar_number_engraver"
  }
}

\relative {
  \set Score.skipBars = ##t
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%  0   1   2   3  4  5  6  7   8   9  10  11 %%
  %%  f  ges  g  as  a  b  h  c  des  d  es  e  %%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%                                            %%
  %%       f e h es d b ges a des g c as        %%
  %%                                            %%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \major
  \defaultTimeSignature
  \time 2/2
  r4 f''( e) h-. es! \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r des'-> f,( e) c'-. a,( as) g'-. \times 2/3 {h,8( c h} fis4-.) r f a( b) d'-. es,-.
  h-. e( f) c'-.
  r f,( e) h-. es-. \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r2 d'4( cis) ges,,-. \times 2/3 {h''8( c h} b4-.) e-. g,( as) r \acciaccatura {d8[ es e]} f4-.
  r cis,( d) es'-. r e-. d,( es!) des'-. g,( fis) c'-. \times 2/3 {gis8( a gis} f4) e,,-. h'''-.
  es,( d) r b'!-. \times 2/3 {fis,8( g fis} f4) a-. des'-. g,,( fis) r c''
  r a,-"P3"( as) d'-. b,,-. \times 2/3 {h''8( c h} es,4) g'-.
  \times 2/3 {gis,8(a gis}  e4-.) r c'-. ges,, \times 2/3{des''8( e! des} c4)-"P7" h-.
  fis-. b'( a) f'-. r des-. r e,16( f e es as,4) d'-. \times 2/3 {g,8( as g} es4)-"RI1"
  h'-. r e,-. b'-. \times 2/3 {d,8( es! d} f4-.) des-. r a'( as) r \times 2/3 {c8( des c}
  g4) fis'-. r c,-.-"P7" r h'-. fis-. \times 2/3 {b8( ces b} a4-.) f!-. cis'-"RI5"( c-.)
  r e-. r \times 2/3 {h8( c h} b!4-.) g-. es' as,,-.  d-. fis'-. a,-. \times 2/3 {f8( ges f}
  cis4-.)-"P7" e'-. as,,( d-.) r \times 2/3 {g8( as g} es4-.) r
  e(-"P11" es-.) b-. d-. \times 2/3 {cis8(d cis} b4-.) a' f( e) as-. c,-. fis( f!) r h, r
  g,^"I2"( as) des''-. a,,( b-.) d' fis'-. es, h'( f!) r \times 2/3 {c'8( des c}
  e,4-.)-"R8" as( es-.) a,,!-. \times 2/3 {f''8( ges f} d4-.) r fis-. b,,( h) g''-. c,,( cis-.)
  as''-.-"R0" r c!-. \times 2/3 {g8( as g} des4) \times 2/3 {a8( b a} ges4) b,-. d'( es) h,-. e'( f)
  r ges'-.-"I1" g,! c-. gis,( \stemUp a) r\stemNeutral des'-. f, \times 2/3 {d8( es d}
  b4-.) e-. h-. es-.
}