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
   'span-text "poco diminuendo")

top = \change Staff = "RH"
bot = \change Staff = "LH"

ignore = \override NoteColumn #'ignore-collision = ##t

xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/
                                                                  further -2)
  \once \override LaissezVibrerTie  #'extra-offset = #(cons (/
                                                             further 2) 0)
         #})

%%%%%%%%%%% RH %%%%%%%%%%%%
vierteRH = \relative {
  \clef treble
  \key ges \major
  \time 4/4
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Adagio"
  \repeat unfold 2 {
    <as des b'>1
    <<
      {
        ges'2 f <b, des>1 <ces ges'>2<b b'>
      }
      \\
      {
        <as ces>1 as2 ges
        \once \override NoteColumn.force-hshift = #1.2
        des'1
      }
    >>
  }
  <as des b'>1
  <<
    {
      ges'2 f  as ges f es des1~ des2 c
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #.7
      <b ces>1<b des>
      \once \override NoteColumn.force-hshift = #.7
      <b ces> ces b
    }
  >>
  \break
%%%%%%%%%%%%%%R
  \repeat unfold 2 {
    <as' des b'>1
    <<
      {
        ges'2 f <b, des>1 <ces ges'>2<b b'>
      }
      \\
      {
        <as ces>1 as2 ges
        \once \override NoteColumn.force-hshift = #1.2
        des'1
      }
    >>
  }
  \break
  <as des b'>1
  <<
    {
      ges'2 f  as ges
      f es des1~
      \once\override TextScript.extra-offset = #'(2 . 1)
      des^\markup { rit.}
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #.7
      <b ces>1<b des>
      \once \override NoteColumn.force-hshift = #.7
      <b ces> ces b
    }
  >>
  \break
  \once\override TextScript.extra-offset = #'(-6 . 1)
  <b ges' des'>2^\markup { a tempo }
  \once\override TextScript.extra-offset = #'(-3 . -1.5)
  <as f' b>^\markup { \italic {sempre arph.} }<ces es des'><es, b' ges'>
  \repeat unfold 6 {
    <b' ges' des'><as f' b><ces es des'><es, b' ges'>
  }
  <b' ges' as des>1
  <<
    {
      <ces des as'>
    }
    \\
    {
      ges2 f
    }
  >>
  <des ges as>1
  \repeat unfold 2 {
    <<
      {
        <ces' des as'>
      }
      \\
      {
        ges2 b
      }
    >>
    <b ges' as des>1
  }
  <<
    {
      <ces des as'>
    }
    \\
    {
      ges2 b^\markup {poco rit.}
    }
  >>
  <b ges' as des>1
  <<
    {
      <ces, ges'>2^\markup { \italic {non arph.} }<b b'>
    }
    \\
    {
      \once \override NoteColumn.force-hshift = #1.2
      des1
    }
  >>
  \repeat unfold 3 {
    <a d b'>
    <<
      {
        <b es b'>1
      }
      \\
      {
        as!2 ges
      }
    >>
  }
  <ces eses b'>1<b des b'>
  \bar "|."
}

%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicVier = {
  \override Hairpin.to-barline = ##f
  s1*14\mp s1*11\p s1*2\> s1\! s1*12\mf
  \once\override Hairpin.to-barline = ##t
  s1*2\> s1*4\!
  s1\pocoDim s1*12\! s1\ppp
}

%%%%%%%%%%% LH %%%%%%%%%%%%
vierteLH = \relative {
  \clef bass
  \key ges \major
  \time 4/4
  \repeat unfold 2 {
    <ges, des'>1<ges es'><ges f'>
    <<
      {
        <es' f>2<ces es>
      }
      \\
      {
        ges1
      }
    >>
  }
  <ges des' ges><as des ges><b es f ges><ces es ges>
  <<
    {
      r2 as' ges1
    }
    \\
    {
      <ges, des'>~ q
    }
  >>
%%%%%%%%%%%%%%R
  \clef treble
  \repeat unfold 2 {
    <ges' des'>1<ges es'><ges f'>
    <<
      {
        <es' f>2<ces es>
      }
      \\
      {
        ges1
      }
    >>
  }
  <ges des' ges><as des ges><b es f ges><ces es ges>
  <<
    {
      r2 as'~ as ges
    }
    \\
    {
      <ges, des'>1~ q
    }
  >>
  \clef bass
  <<
    {
      \once\override TextScript.extra-offset = #'(-1 . 1)
      b1_\markup { \italic {sempre arph.} }
      ges2 f des1 ges2 b
      b1 ges2 f des1 ges2 b
    }
    \\
    {
      \teeny
      <ges,, as b des es ges as b des es ges as>1%\arpeggio
      <des es ges as b des es ges as b des es>
      <b des es ges as b des es ges as b>
      <des es ges as b des es ges as b des es>
      <ges as b des es ges as b des es ges as>
      <des es ges as b des es ges as b des es>
      <b des es ges as b des es ges as b>
      <des es ges as b des es ges as b des es>
    }
  >>
  <<
    {
      \normalsize
      b'''1 ges2 f as ges f es des1~ des
    }
    \\
    {
      \teeny
      <ges,, as b des es ges as b des es ges as>1
      <des es ges as b des es ges as b des es>
      \xLV #8
      <ges\laissezVibrer as b des es ges as b des es ges as>
      s
      \xLV #8
      <b,\laissezVibrer des es ges as b des es ges as b>
      s
    }
  >>
  <ges'' des'>2_\markup { \italic {non arph.} }<f b><es des'><des ges>
  \repeat unfold 3 {
    <ges des'>2<f b><es des'><des ges>
  }
  <ces ges' des'>1
  <<
    {
      <es' f>2<ces es>
    }
    \\
    {
      ges1
    }
  >>
  \repeat unfold 3 {
    <g d' es><b es>
  }
  <ces des ges><ges des' ges>
  \bar "|."
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \override Score.RehearsalMark.direction = #DOWN
  \mark \markup {\teeny{\char ##x00A9 "MCMXCVIII - I - XXIV"}}
}