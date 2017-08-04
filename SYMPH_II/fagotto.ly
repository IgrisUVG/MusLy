\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<  \withMusicProperty #'to-relative-callback
         #(lambda (m p)
            (let ((mu (ly:music-property m 'element)))
              (ly:music-transpose mu (ly:make-pitch (- arg) 0 0))
              (ly:make-music-relative! mu p)
              (ly:music-transpose mu (ly:make-pitch arg 0 0)))
            p)
         \transpose c' $(ly:make-pitch arg 0 0) $mus
         $mus
     >>
   #})

fagottoMusic = \relative {
  \overrideTimeSignatureSettings 4/4 1/4 #'(1 1 1 1) #'()
  %\time #'(2 2 2 2) 4/4
  \override MultiMeasureRest #'expand-limit = #2
  \clef bass
  \set Score.skipBars = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.curved"
  }
  \set baseMoment = #(ly:make-moment 1 8)
  R1*3 <e,, e'>2( d' <ais dis>2.) r4 R1*3
  <e e'>2(<g g'><des' des'>2.<a a'>4
  <b b'>2<des, des'>4<h' h'><e, e'>2) r R1
  gis'2( d f c')\breathe
  R1*4 r2. b,4( fis')-- g-- as-- c,--~
  c2 r R1*5 r4. c'4-- a-- ges8~ ges es4-- r8
  r4. ges8( f es des4)
  <<
    {
      s2 
      \once\override NoteColumn.force-hshift = #1.3
      ces fes_>~ fes4
    }
    \\
    {
      \stemUp d( es \stemDown ces1~) \stemUp ces4
    }
  >>
  r2. r2 g4-> r r2. as'8( ges f es des4)
  <<
    {
      s2 
      \once\override NoteColumn.force-hshift = #1.3
      c f_>~ f4
    }
    \\
    {
      \stemUp d( es \stemDown c1~) \stemUp c4
    }
  >>
  r2. R1*11
  b'2->( d->) d->( es->) es->( e->) e->( f->) f-> r
  \makeOctaves #-1 {
    es( ges c,2. as'4 a!2 c,4 b') es,2( des
  }
  a2.) r4 R1 h2-> fis4-> c'-> es1-> R1 g,2 r 
  r <b, f'>( f' cis <b f'> es)
  r8 as4-- c8-- des-- a4-- h8-- c-- c4-- as8--
  <d, d'>4(<fis cis'>)<g c>--<gis h>-- a-- as--
  g8-. r r2. R1 r2. es4--( h2) r R1*14
  r2 a'4( d,) r cis2. R1 r2. gis'4~ gis2 r R1*7
  r2. as'8( ges) ges( f) f( es) es( des) des( ces)
  b4 r r8 ges'( f es) d-. r4. b8( a g fis)
  f---> r4. b8( a g fis) f16-. r8. r4 a16-> a-> a8-> r4
  R1*4 b4-- f-- a-- es-- h'!1 a4 gis fis2 g c, des1->
  fis2 r R1*4 b4~ b16 f ges as b f ges as a e f ges
  g!2 \tuplet 3/2 8 {
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1 8)
    \override TupletBracket.bracket-visibility = #'if-no-beam
    d'16( cis) e( a,) cis( h) cis( f,) h( a) e( b')
  }
  \set subdivideBeams = ##f
  e2-> r R1*2 d1( cis) R1*2 <ais, h>1~ q~ q( d) R1*8
  r4 ges'( f es b') r2. r16 f,-. as-. c-. es-. g-. b-. r r2
  R1 r16 e,,-. g-. cis-. e-. g-. b-. r r2
  r16 f,-. as-. d-. e-. g-. c-. r r2 R1*2 r2 e R1*15
  r4 r16. c,32\noBeam c8 des4~ des8.. r32 R1*3
  \set subdivideBeams = ##t
  r2. r8.. c32 c16.( g'32) g16.( as32) as2. R1*4
  r2 r16
  <<
    {
      s8 d16( b4)
    }
    \\
    {
      <b d>16(<f b><d f><b f'>4)
    }
  >>
  R1 es4_( c as f es2) r R1*2
  r8 <f' as>(<g b><as c><b d><c es><d f><es g><f as>) r r2. R1*8
  b8( as g f es d c h c)\noBeam b-> r2. R1*3 r2. es,,4->
  es'4:16 des4:16 ces4:16 b4:16 b8 r r4 r as-> e! d c h
  es2. r4 ges2. r4 a2. r4 ces2. r4 b2. r4 c2. r4 des4 r2. R1*4
  b'1\fermata
  \bar "||"
  R1*5 d,!2 r R1*5
  \bar "||"
  R1*5 dis'4( e f! g
  \bar "."
  \revert Staff.TimeSignature.stencil
  \time 3/4
  f2.) ges b,4 r2 a4 r2 g4 r2 f4 r2 es4 r2 d4 r2 c4 r2
  a4 r2 b4 r2 c4 r2 d4 r2 e!4 r2 f4 r2 es4 es8( f g[ a] b4) r f'(
  es2. des c) R2.*7 r4 fis-> fis-> f!2. R2.*23
  \cadenzaOn
  <fis, fis'>2.~ q~ q~ q~ q~\fermata
  \cadenzaOff
  \bar "."
  \time 4/4
  q2 r R1*12 r4 es,2.
  R1*8
  \bar "||"
  \cadenzaOn
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar ""
  r1 r8 \bar "" 
  r1. r4.
  \cadenzaOff
  \bar "||"
  \time 4/2
  R1*10
  \bar "||"
  \time 4/4
  R1*6
  <es b' es>1~ q \makeOctaves #1 {c2 g' f1-> gis4-.} r2.
  R1*4 dis''2( cis h1)
  R1 \bar "||"
  R1*11
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2)
  \override TupletBracket.bracket-visibility = ##f
  \times 2/3 {
    r16^\markup {\italic Solo} 
    \set stemLeftBeamCount = #2 f( ges
  } 
  g32 fis) r16 
  \times 2/3 {gis16-.[ d-. c'!-.} r32 
  \set stemLeftBeamCount = #1 cis,( f)] r
  a16--[ h,32-. b'-. r 
  \set stemLeftBeamCount = #1 gis( d'!) cis,-.]
  r16 dis'( \set stemLeftBeamCount = #1 g!32) h,-. r16
  \times 4/5 {c32-. b-. e,( ges-.) f-.} r8 e-- es'--
  f,32-. h-. a-. b-.\times 4/5 {d-. fis,-. gis-. g,-. des'-.}
  d32-. as'-. a-. g'-. \times 2/3 {dis16( h c!}
  ges'8) e,16( f) r32 cis-.[ d'!-. gis-. r 
  \set stemLeftBeamCount = #1 e,( es]) r
  r f'-. h,-. a,-. r b'-.[ r d-.] fis,[( 
  \set stemRightBeamCount = #1 gis) 
  \set stemRightBeamCount = #1 \set stemLeftBeamCount = #1 r16 g'!]-- r
  c,[-- r32 gis'-. r 
  \set stemLeftBeamCount = #1 d!-. r dis,]-.
  r g!-. c!-. e,-. ges( f) r16 r8 r16 e32( f) b4(
  a) des( c) r8 a
  R1*10
  \bar "|."
}