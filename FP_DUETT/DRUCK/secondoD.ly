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

ignore = \override NoteColumn.ignore-collision = ##t

xLV = #(define-music-function (parser location further) (number?) #{ 
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0) 
  \once \override LaissezVibrerTie.details.note-head-gap = #(/ 
                                                                  further -2) 
  \once \override LaissezVibrerTie.extra-offset = #(cons (/ 
                                                             further 2) 0) 
         #}) 

%%%%%%%%%%% RH %%%%%%%%%%%%
secondoRHseiteEins = \relative {
  \clef bass
  \time 4/4
  %\key es \major
  %\compressFullBarRests
  %\override MultiMeasureRest #'expand-limit = #2
  \partial 2
  c4 as r b r ces
  \clef treble
  r b' es f~ f2 es4 f r ges, es' ges
  \clef bass
  r d, a' b r2. \xLV #2.5 b4\laissezVibrer
  \break
  R1*8
  \break
  R1*4
  \clef treble
  r2 \xLV #8 b''\laissezVibrer R1 \xLV #8 ges,\laissezVibrer R1
  \break
  R
  \clef bass
  r2 cis,,4 d des2 \xLV #6 heses'\laissezVibrer
  \clef treble
  r2 d''2 c b d1 f,2 c'4 b \xLV #8 dis1\laissezVibrer
  \pageBreak
}
secondoRHseiteDrei = \relative {
  R1*3
  \cadenzaOn
  \ottava #1
  \set Staff.ottavation = #"8"
  \hide Stem
  \tweak #'duration-log #4 e''''2
  \undo \hide Stem
  \ottava #0
  s s s4 s1\breathe
  \cadenzaOff
  \bar "||"
%%%%%%%%%%%%%%%%%%%%%%%%%
  s1 R1*3
  \break
  R1 g,,,1( d) g <g, d'>4 g' c, h f r
  <<
    {
      es' d
    }
    \\
    {
      <b f'>2
    }
  >>
  <as c>4 s2. c2 r4 c~
  \break
  c2. s4 s2. gis'4
  s2. cis,4 e a d, cis
  s2. cis4
  <<
    {
      e a d, cis
    }
    \\
    {
      h1
    }
  >>
  a
  \clef bass
  fis4 a <gis h><e' fis>
  \break
  r a,, d e fis a <gis h><e' fis>
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamic = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
secondoLHseiteEins = \relative {
  \clef bass
  \time 4/4
  %\key es \major
  %\compressFullBarRests
  %\override MultiMeasureRest #'expand-limit = #2
  \partial 2
  \ignore
  \makeOctaves #-1 { f,2 es } as
  \makeOctaves #1 {e r R1 ces g c,4 g' \xLV #5.5 ges2\laissezVibrer}
  R1*17 r2
  \makeOctaves #1 {fis4 d des2 \xLV #6 c\laissezVibrer}
  \clef treble
  r2 b''''' a g f1 b,2 es4 f \xLV #8 gis1\laissezVibrer
}
secondoLHseiteDrei = \relative {
  R1*3
  \clef bass
  \cadenzaOn
  \makeOctaves #-1 {e,2\fermata}
  s s s4 s1
  \cadenzaOff
  \bar "||"
%%%%%%%%%%%%%%%%%%%%%%%%%
  s1 R1*4 g4 d' a' h g \top g' c, \bot h g, d' a' h
  \makeOctaves #-1 {g,2 a b4}
  <<
    {
      s4 f'2
    }
    \\
    {
      es d4
    }
  >>
  \makeOctaves #-1 {as} es' as
  <<
    {
      \stemDown
      b~ b
      \stemUp
      a!
    }
    \\
    {
      \stemUp
      s \makeOctaves #-1 {f,}
      \stemDown
      c'
    }
  >>
  g' s
  <<
    {
      g, d' a' h~ h
    }
    \\
    {
      s2 fis, e4
    }
  >>
  e' h' s a, e' h' s a1 a,4 e' h' s \makeOctaves #-1 {gis1}
  <<
    {
      r4 a, d e
    }
    \\
    {
      \makeOctaves #-1 {d,1}
    }
  >>
  gis2 \makeOctaves #1 {d d,1} gis'2 \makeOctaves #1 {d}
}