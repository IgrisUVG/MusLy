\version "2.19.15"

\language "deutsch"

\header {
	title = "CC"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-markup-spacing.basic-distance = 8
  markup-system-spacing.basic-distance = 25
  top-system-spacing.basic-distance = 20
  system-system-spacing.basic-distance = 20
  last-bottom-spacing.basic-distance = 20
  
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
  left-margin = 15
  right-margin = 15
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
global ={
  \defaultTimeSignature
  \time 2/2
  \override Score.RehearsalMark.extra-offset = #'(6 . 5)
  \mark \markup {\fontsize #-2 {Allegro non moto}}
}
ersteStimme = \relative c' {
	\clef "treble_8" 
  r4 f( e) h-. es! \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r des'-> f,( e) c'-. a,( as) g'-. \times 2/3 {h,8( c h} fis4-.) r f a( b) d'-. es,-.
  h-. e( f) c'-.
  r f,( e) h-. es-. \times 2/3 {d8( es d} h4-.) b'! ges( f) a-. des,-. g( fis) r c
  r2 d'4( cis) ges,,-. \times 2/3 {h''8( c h} b4-.) e-. g,( as) r 
  \once\override Slur.direction = #DOWN
  \once\override Slur.positions = #'(4.5 . 5.5)
  \acciaccatura d8-\markup {
  	\postscript #"0.5 -1.6 moveto 2.3 0.8 rlineto stroke"
  } f4-.
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
  r ges'-.-"I1" g,! c-. gis,( a) r des'-. f, \times 2/3 {d8( es d}
  b4-.) e-. h-. es-. fis( g) r c( as) a,-. des-. \times 2/3 {f8( ges f}
  des4-.) d'!-. b-. e( h-.) es!-. as,-.-"P3" g'-. d,-. ges'-. f,( a-.) r des( c) e-. b-.
  \times 2/3 {es!8( fes es} h4) f'-.-"P1" e,-. h'-. es,-. d'-. b,-. ges'-. a,-. des'-.
  r g,-. r \times 2/3 {c8( des c} as4)
}
zweiteStimme = \relative {
	\repeat unfold 4 {
    g,4 r des' r a r ges r b r d r es r h r
    g r des' r a r ges r b r d r es r h r
    g r des' r a r ges r b r d r es r h r c r as'2 \glissando
  }
  g,4 r des' r a r ges r b! r d r es r h r
  g r des' r a r ges r b r d r es r h r
  g r des' r a r ges r b r d r es r h r c r as'2
}

\score {
  \new Staff \with {
  	midiInstrument = #"acoustic guitar (nylon)"
    instrumentName = "Gitarre"
  }
  {
  	\global
  	<<
			{
				\transpose c e 
				\ersteStimme
			}
			\\
			{
				\transpose c e 
				\zweiteStimme
			}
		>>
  }
  \layout{}
  \midi{
  	\tempo 2 = 160
  }
}