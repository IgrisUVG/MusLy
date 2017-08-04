\version "2.19.15"

\language "deutsch"

%%%%%%%%% SCRIPTS %%%%%%%%%
makeOctaves =
#(define-music-function (parser location arg mus)
   (integer? ly:music?)
   #{<<
     \withMusicProperty #'to-relative-callback
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
pocoCr =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco cresc.")
pocoDim =
#(make-music 'CrescendoEvent
   'span-type 'text
   'span-text "poco dimin.")
top = \change Staff = "RH"
bot = \change Staff = "LH"

xLV = #(define-music-function (parser location further) (number?) #{ 
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0) 
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/ 
                                                                  further -2) 
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/ 
                                                             further 2) 0) 
         #}) 

%%%%%%%%%%% RH %%%%%%%%%%%%
primoRHseiteZwei = \relative {
  \time 4/4
  %\key es \major
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #2
  \partial 2
  g''2 b, ces as' g f es ces' ges g!1 R1
  \break
  \ottava #1
  \set Staff.ottavation = #"8"
  as'1 ges2 \times 2/3 {b4 as ges} des2
  \times 2/3 {es4 des' b~}
  b1 h! h2~ \times 2/3 {h4 g' fis} \xLV #8 ces1\laissezVibrer s
  \break
  cis2. a4 cis2. cis4 d2 h a g d1 e
  ges'16 es des c b as ges f es des c des f es b ges as4. b' as4
  \break
  des,2 \tuplet 3/2 4 {c8 des f es des c} b2
  \ottava #0
  fis4 f b,2 des
  \ottava #1
  \set Staff.ottavation = #"8"
  d''1 c4 b d2 f,1 c'2 b h!1
  \pageBreak
}
primoRHseiteVier = \relative {
  \ottava #1
  \set Staff.ottavation = #"8"
  h'''2 \times 2/3 {dis4 cis h}
  fis2~ fis16 cis his cis dis eis fis gis~
  gis2 cis,8 dis ais'[ h]~
  \cadenzaOn
  <e, h' e>2\fermata
  \ottava #0
  s s s4 r1\breathe
  \cadenzaOff
  \bar "||"
%%%%%%%%%%%%%%%%%%%%%%%%%
  s1 R1*3
  \break
  R1 d2. h4 d \times 2/3 {e8 fis e} d4 g a1 g d c b
  \break
  c c2. e4 cis1~ cis2
  \ottava #1
  \set Staff.ottavation = #"8"
  \times 2/3 {e'4 d cis} a1 h a2 fis d' s
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
primoLHseiteZwei = \relative {
  \time 4/4
  %\key es \major
  \partial 2
  as'4 es g es ges es f b es b d b g b des ges, es' ces
  b es, d2~\startTrillSpan d es4\stopTrillSpan r
  es b' ges' b, des, b' ges' b, c, b' ges' b, des, b' ges' b,
  d,! h'! fis' h, e, h' g' h, as es' ces' es, g, es' ces' es,
  fis, cis' a' cis, gis cis a' cis, g! d' a' d, fis, d' h' d,
  e, d' a' d, fis, d' h' d, es, b' ges' b, des, b' ges' b,
  c, b' ges' b, des, b' <fis a><f a><b, f'>2<des ges>
  f4 d' b' d, g, es' b' es, f, d' b' d, g, es' b' es,
  gis, dis' ais' dis,
}
primoLHseiteVier = \relative {
  fis' dis' ais' dis, eis, dis' ais' dis,
  fis, dis' ais' dis,
  \cadenzaOn
  <g, e'>2\fermata
  s s s4 s1
  \cadenzaOff
  \bar "||"
  %\pageBreak
  s1 r4 e' h' e, a, e' a e h e h' e, a, e' a e g, d' g d a d a' d,
  g, d' h' d, fis, d' h' d, f,! d' b' d, g, es' as es f, d' a'! d,
  g, d' h'! d, gis, d' h' d, a e' a e gis, e' a e fis, e' a e
  gis, e' a e a, fis' cis' fis, d fis d' fis,
}