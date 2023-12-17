\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

\header {
  title = "***"
  meter = "Allegro"
  composer = "I. G."
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  %top-markup-spacing.basic-distance = #15
  %markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #22
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context{
    \Score
    %\override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}
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
xLV =
#(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
   #})
top = \change Staff = "RH"
bot = \change Staff = "LH"
%%%%%%%%%%% RH %%%%%%%%%%%%
rErsteStimme = \relative {
  fes''4( es8) es2-- des2.-- 
  \stemUp
  ces4-- b!2-- as--
}
rZweiteStimme = \relative {
  s4.
  <<
    {
      s2 s \stemDown as'''
    }
    \\
    {
      ges,,8 deses'4( ces8~ ces) ges4( fes) heses( as8~
      as) g4( f4.) r4
    }
  >>
}
rechts = \relative {
  \clef treble
  \key es \major
  \time 3/4
  \override Staff.TimeSignature #'stencil = ##f
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  %\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\set Staff.printKeyCancellation = ##f
  s2. g''16 c g as d h c es as,! g d' c g as c es
  \ottava #1
  \set Staff.ottavation = #"8"
  g c, d as' es d h' c
  \repeat unfold 2 {g as c g d es h' e, g es c as'}
  \time 4/4
  g es' c d g as es h d c g as c h g es
  \time 5/4
  d c es g c g as c d es h c d g, as es c d g a
  \time 4/4
  c d, e a g a, c g' d g, a e' c d e g
  d' fis, g h a d, e g a e' d c g c, d e
  d a c d \repeat unfold 7 {f e g c d e c g}
  f e g c as g b es,! f g! es b'
  \repeat unfold 5 {as g! b es, f g! es b'}
  g as c! es, f g! es c'!
  \repeat unfold 5 {b as c! es, f g! es c'!}
  \repeat unfold 10 {a! g c e,! fis! g! e! c'}
  as! g c e, f g! e! c' \repeat unfold 3 {as g! c e, f g! e! c'}
  \repeat unfold 2 {
    as g ces es, f! g! es ces' as g! ces es, f g! es ces'
  }
  as g ces es, f! g! es ces'
  \repeat unfold 3 {as ges ces es, f ges es ces'}
  \key ces \major
  \repeat unfold 4 {as ges ces des, f ges des ces'}
  as ges ces des, fes! ges des ces'
  \repeat unfold 2 {as ges ces des, fes ges des ces'}
  as ges b des, fes ges des b'
  \repeat unfold 2 {des ces ges fes ases ges es b'}
  des ces ges fes ases ges es ces fes es ces ges des' ces
  \ottava #0
  ges es ases ges es ces fes es ces ges
  des' ces ges es ases ges es ces
  \bar "||"
  r8
  <<
    {
      \rErsteStimme
    }
    \\
    {
      \rZweiteStimme
    }
  >>
  r4 heses' 
  <<
    {
      r b r8 h4. c2
    }
    \\
    {
      r8 f,( ges4) e8( f4.) es2
    }
  >>
  \bar "||"
  \key g \minor
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      \makeOctaves #1 {d4.-- g8--}
    }
    \\
    {
      d16 fis g a b c 
      \once \override NoteColumn.force-hshift = #1.3
      d es
    }
  >>
  a8 fis32 g b16~ b d g, d
  <<
    {
      <es, c' es>4.--<d b' d>8--
      \makeOctaves #1 {
        d2-- c'4. f,8-- b4-- a-- g2-- f-- 
        r4. e8-- cis'4-- h8-- a16-- gis--
        a8-- gis16-- fis-- gis4-- fis
      }
    }
    \\
    {
      es16 b' a es f8 d16 fis 
      \once \override NoteColumn.force-hshift = #1.3
      a b d fis g b8 a16
      s4 f,16 b 
      \once \override NoteColumn.force-hshift = #1.5
      es d 
      \once \override NoteColumn.force-hshift = #1.3
      d8 g16 f 
      \once \override NoteColumn.force-hshift = #1.2
      f b, d c 
      \once \override NoteColumn.force-hshift = #1.3
      c b a f \bot \stemUp c \top \stemDown f b a 
      \once \override NoteColumn.force-hshift = #1.3
      a c b a g! f c d
      gis cis, dis gis cis gis 
      \once \override NoteColumn.force-hshift = #1.3
      a dis 
      \once \override NoteColumn.force-hshift = #1.3
      gis fis e dis 
      \once \override NoteColumn.force-hshift = #1.4
      cis dis 
      \once \override NoteColumn.force-hshift = #1.3
      cis
      \once \override NoteColumn.force-hshift = #1.3
      h
      a h 
      \once \override NoteColumn.force-hshift = #1.3
      cis
      \once \override NoteColumn.force-hshift = #1.5
      e 
      \once \override NoteColumn.force-hshift = #1.3
      dis8 cis 
      \once \override NoteColumn.force-hshift = #1.3
      dis4
    }
  >>
  r8 <e, b'>
  <<
    {
      ges([ fes)]
    }
    \\
    {
      des4
    }
  >>
  r
  <<
    {
      fes8([ es)]
    }
    \\
    {
      c4
    }
  >>
  r
  \bar "||"
}
%%%%%%%%%%% LH %%%%%%%%%%%%
lErsteStimme = \relative {
  s2 ges''-- fes2.-- eses4-- des2-- ces--
  s as'-- ges2.-- fes4-- eses2-- des--
  ces4-- b-- f'!2 \xLV #5.5 es1\laissezVibrer
}
lZweiteStimme = \relative {
  \stemUp
  b16 es des b' ges as es' b
  \stemDown
  des as ges! des
  \repeat unfold 3 {b es des b' ges! as es' b des as ges! des}
  \stemUp
  ces es des b' ges as es' ces
  \stemDown
  des as ges es
  \repeat unfold 3 {ces es des b' ges! as es' ces des as ges! es}
  des es des ges es des ges as! des as! ges! des es des ges as
  des as! ges des
  \stemUp
  <fes, es'>_( des' ges! as des as! ges! des <es, es'>) des' ges! as
}
links = \relative {
  \clef treble
  \key es \major
  \time 3/4
  \override Staff.TimeSignature #'stencil = ##f
  %\set Staff.printKeyCancellation = ##f
  es'16 b' f g c a b es c b f' es
  b es, c' b f g f b a' b g es
  \repeat unfold 3 {f b f g c g a es b f g es}
  \time 4/4
  f b f g c es f g a b g es b a f g
  \time 5/4
  f es g f b g c a es' c f es b g c b g f es c
  \time 4/4
  \repeat unfold 8 {b f' es! b' f g es'! b c g f es}
  <<
    {
      \lErsteStimme
    }
    \\
    {
      \lZweiteStimme
    }
  >>
  \repeat unfold 3 {
    des' as! ges des <fes, es'>_( des' ges! as
    des as! ges! des <es, es'>) des' ges! as
  }
  \clef bass
  \xLV #2.5 \tweak #'duration-log #1 a,,,\laissezVibrer
  \clef treble
  as'''! ges des <fes, es'>_( des' ges! as
  des as ges! des <es, es'>) des' ges! as
  des as ges des <fes, es'>_( des' ges! as
  des as ges! des <es, es'>) des' ges! as
  \clef bass
  \xLV #2.5 \tweak #'duration-log #1 cis,,,,\laissezVibrer
  \clef treble
  as'''' ges des <fes, es'>_( des' ges! as
  des as ges! des <es, es'>) des' ges! as
  \clef bass
  \xLV #2.5 \tweak #'duration-log #1 d,,,,!\laissezVibrer
  \clef treble
  as'''' ges des <fes, es'>_( des' ges! as
  des as ges! des <es, es'>) des' ges! as
  des as ges des <fes, es'>_( des' ges! as
  des as ges! des <es, es'>) des' ges! as
  \clef bass
  \xLV #2.5 \tweak #'duration-log #1 e,,,\laissezVibrer
  \clef treble
  as''' ges des es des ges as des as ges des es des ges as
  \key ces \major
  \repeat unfold 6 {des as ges des es des ges as}
  des as ges des <fes, es'>_( des' ges as
  des as ges des <es, es'>) des' ges as
  \clef bass
  ces,,8
  \clef treble
  <des'' ces'><fes, es'><es ges>
  \clef bass
  <<
    {
      ces4
    }
    \\
    {
      <ces, ces'>8[<fes, es'>]
    }
  >>
  <es ges><ces fes>
  <<
    {
      r4 ges' \stemDown des' <ases' ces>
    }
    \\
    {
      ges,,1
    }
  >>
  <ges'' des'>4<ases f'><ges es'><ases des>
  \bar "||"
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    {
      b2
    }
    \\
    {
      b8 as, es' \top des'
    }
  >>
  \bot
  f,, as' ges ces, fes heses, ces' des~ des fes, des as
  f c' as' des c g f es 
  \stemUp
  des4.( c8) des4.( c8) r4
  <<
    {
      c4( h2)
    }
    \\
    {
      r8 fes( as,2)
    }
  >>
  \bar "||"
  \key g \minor
  \stemNeutral
  g'16 d' a' d fis g b,8
  <<
    {
      \makeOctaves #1 {g4-- fis--}
    }
    \\
    {
      g16 b a d, fis es d a
    }
  >>
  b c f fis a b f b, d fis, a d
  <<
    {
      es fis a b~ b a b d \stemDown c8 b
    }
    \\
    {
      es,8. d16 d2
    }
  >>
  g16 f b, f c'8 b16 f' f8 e \stemDown d[ c]
  <<
    {
      g'16 d g f f8 e e16 gis fis e dis his cis e
    }
    \\
    {
      b8 a gis4 cis8 \makeOctaves #-1 {fis16 e dis8 cis}
    }
  >>
  fis16 gis cis, gis fis cis' fis cis'
  <h e>4 a,16 e' h' a cis8 h r <fis c'><g! b!>4 r <ges as> r
  \bar "||"
  
}
%%%%%%%%%%%%D%%%%%%%%%%%%
dynamic = {
  \override DynamicTextSpanner.style = #'none
  \override Hairpin.to-barline = ##f

}
%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new PianoStaff <<
    \new Staff = "RH" \rechts
    \new Dynamics = "DYN" \dynamic
    \new Staff = "LH" \links
  >>
}