\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

clarinetSoloMusic = \relative {
  \time 3/4
  \key es \major
  \override MultiMeasureRest #'expand-limit = #2
  \set Score.skipBars = ##t
  R2.*8 es''2. R2.*4 f2.~ f R2.*19 es2.(~ es2 as4 g cis) fis,(~ fis2 h4) eis,2. R2.*2%\break
  fis,,8( d' b fis' d b' fis d' b fis' d b' ces2.~ ces)
  ges,,8( es' ces ges' es ces' ges es' ces ges' es ces' des2.~ des) R2.*4%\break
  r4 f,( ces) as'2( g4) fes->( des) es->( d2) b4->( ces a'2 b4. ges8 des b ges des b ges f4)
  e2.( fis4 g2 a2.~\startTrillSpan a)\break
  r4\stopTrillSpan b''8( ges des b ges des b ges f4)
  d2.( e4 f2 g2.~\startTrillSpan g)
  r4\stopTrillSpan b-.( des-. e-. a-. cis-. f2.~ f~ f~ f~ f~ f ges)\fermata
  f8( e des b as ges f ges as b des e) f( e des b as ges f ges as b des e)
  f( e des b as ges f fes es c b as) g( h e g h e) fis( g es! c g es d cis a f e es)
  d( f b d f b d) heses'( ges des heses ges c as es ces' ges ces, eses-> ces' ges b, eses-> ces'
  ges ces, eses-> ces' ges c, d2.->) f2-> cis4-> as'-> g2-> R2.*8 %\break
  r2 h,4-.( d-. fis-. b!-. c-. d-. g-.) as2.~ as~ as~ as~ as~ as~ as~ as~ as
  heses2( as4) fes4.( es8) heses( as) fes( es) heses( as) fes( es)
  as( ces es as ces es as es ces as es ces) as( ces eses heses' ces deses)
  ges2( f4) des4.( c8) ges( f) des( c) ges( f) as-. ces-. es( d!) f-. as-. des( c)
  fes( es) ges-. a-. des( c) heses( as) g,( h cis e) g( fis) h-. f,! d'( cis)
  e,,( a h d) des( c) as( ces es as ces es) g( fis) c'-. as,,-. c'( h) f'-. d,,-. e'2->
  a->( g4) a2->( g4) R2.*4%\break
  b'2.~( b4 e,2) heses'( as4~ as2.) R2.*10\break
  r4 cis2->( e c!4 g' fis2~ fis2.~ fis8) d( c as es d as d,) c'4.( h8) f'4( e) as,-. g'2.->
  c,8( d) as'-. d( c4) h2( g4) b4.( f8 ces4) fes2( es4 ges,2.) a~ a! R2.*4
  es'4( g b) ges( des2~ des4) as'( g! h,2.) as2( c4 h'2.) R2.*11 r2.\fermata
  %%%%%%%%%%%%%%%%%%%
  \bar "||" \cadenzaOn R1*10 \cadenzaOff \bar "||"
  %%%%%%%%%%%%%%%%%%%
  R2.*10
  %\pageBreak
  \set Timing.beamExceptions = #'()
  r8 a( des,) as!-. des,-. d'-. es,2 f'8( h) b,-. as'-. e,2 gis8( a) e'-. as,,!-. d''-. c,(
  des) as'( g) e,-. ges'-. h,-. des'( c) f,,-. b!( a) ces,-. f'( e) c,!-. des'-. ces'( b)
  as,-. a,!-. c'( h) es,,-. heses'''( as) b,!-. as,( g) e'' b( \bar "||"
  %%%%%%%%%%%%%%%%%%%
  \numericTimeSignature
  \time 4/4
  a4) r r2 R1*2
  r4 h-. cis-. g'-. fis-. h,-. cis-. g'-. fis-. e-. c!-. es-. fis,-. des-. e-. g,-.
  es'!-. h'-. cis-. g'-. fis-. h,-. cis-. g'-. fis-. e-. c!-. es-. fis,-. des-. e-. g,-.
  es'!-. h'-. cis-. g'-. fis-- h,-- cis-- g'-- fis-- e-- c!-- es-- fis,-- des-- e-- g,--
  R1*9
  %\break
  r2 h''( b! as g f e f fis1)
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(2 2)
  r8 d, f( fis h es gis a d2. cis4 c!1) h4( d, h'2) des,1 R1*7 \bar "||"
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
  r4 f( e) h-. es! \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
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
  b4-.) e-. h-. es-. fis( g) r c( as) a,-. des-. \times 2/3 {f8( ges f}
  des4-.) d'!-. b-. e( h-.) es!-. as,-.-"P3" g'-. d,-. ges'-. f,( a-.) r des( c) e-. b-.
  \times 2/3 {es!8( fes es} h4) f'-.-"P1" e,-. h'-. es,-. d'-. b,-. ges'-. a,-. des'-.
  r g,-. r \times 2/3 {c8( des c} as4)
}