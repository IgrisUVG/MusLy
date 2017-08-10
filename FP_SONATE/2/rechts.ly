\version "2.19.15"

\language "deutsch"

%\include "makeOctaves.ly"

rechts = {
  \clef treble
  \key e \major
  \time 3/4
  \override DynamicLineSpanner.staff-padding = #3
  <<
    {
      \once\override NoteColumn.ignore-collision = ##t
      h'4 fis'2
      \once \override NoteColumn.force-hshift = #-.5
      gis'4 e'2 fis'4 gis' a'%\break
      \once\override NoteColumn.ignore-collision = ##t
      h'4 fis'2
      \once \override NoteColumn.force-hshift = #-.5
      gis'4 e'2 fis'4 gis' a'
    }
    \\
    {
      \voiceFour
      s2. \dotsUp h s s \dotsUp h s
    }
    \\
    {
      \voiceTwo
      \stemUp <gis e'~>4 \stemDown <a e'>2
      \once \override NoteColumn.force-hshift = #-.3
      a4 gis2<a e'>2<h cis'>4
      \stemUp <gis e'~>4 \stemDown <a e'>2
      \once \override NoteColumn.force-hshift = #-.3
      a4 gis2<a e'>2<h cis'>4
    }
  >>
  <<
    {
      \once\override NoteColumn.ignore-collision = ##t
      h'4 fis'2 gis'4 e' dis' dis' cis' h h2.
    }
    \\
    {
      \stemUp <gis e'~>4 \stemDown <a e'>2<ais h><gis ais>4<a! h>2 a4 gis2.
    }
  >>
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <<
    {
      \once\override NoteColumn.ignore-collision = ##t
      h''4 fis''2
      \once \override NoteColumn.force-hshift = #-.5
      gis''4 e''2 fis''4 gis'' a''
      \once\override NoteColumn.ignore-collision = ##t
      h''4 fis''2
      \once \override NoteColumn.force-hshift = #-.5
      gis''4 e''2 fis''4 gis'' a''
    }
    \\
    {
      \voiceFour
      s2. \dotsUp h' s s \dotsUp h' s
    }
    \\
    {
      \voiceTwo
      \stemUp <gis' e''~>4 \stemDown <a' e''>2
      \once \override NoteColumn.force-hshift = #-.3
      a'4 gis'2<a' e''>2<h' cis''>4
      \stemUp <gis' e''~>4 \stemDown <a' e''>2
      \once \override NoteColumn.force-hshift = #-.3
      a'4 gis'2<a' e''>2<h' cis''>4
    }
  >>
  <<
    {
      \once\override NoteColumn.ignore-collision = ##t
      h''4 fis''2 gis''4 e'' dis'' dis'' cis'' h' h'2.
    }
    \\
    {
      \stemUp <gis' e''~>4 \stemDown <a' e''>2<ais' h'><gis' ais'>4<a'! h'>2 a'4 gis'2.
    }
  >>
  \bar "||"\break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \relative {
    h'8 e, h e gis h fis e h e fis h gis e h e cis a'
    h8 e, h e gis h fis e h e fis h gis e h e cis a'
    h8 e, h e gis h ais e gis, e' ais h fis e h e fis e
    h' e, h e cis a'
    h8 e, h e gis h fis e h e fis h gis e h e cis a'
    h8 e, h e gis h fis e h e fis h gis e h e cis a'
    h8 e, h e gis h ais e gis, e' ais h fis e h e fis e
  }
  <<
    {
      \relative {
        s2. h''4 fis s gis e s fis gis a h fis s gis e s fis gis a
        h fis s gis e dis dis cis h h s2 s2.*10
        \times 2/3 {
          \override TupletBracket #'bracket-visibility = ##f
          \override TupletNumber #'transparent = ##t
          e''4 h8 fis4 s8 s4. gis4 s8 e4 s8 s4.
        }
      }
    }
    \\
    {
      \relative {
        \set tupletSpannerDuration = #(ly:make-moment 2 8)
        \times 2/3 {
          e'8 gis h gis h e h e gis
          \bar "||"
          \break
          h e, h fis' e h
          \override TupletNumber #'transparent = ##t
          e, fis a gis' a, h e h gis e a cis fis e a, gis' e a, a' h, cis
          h' e, h fis' e h e, fis a gis' a, h e h gis e a cis fis e a, gis' e a, a' h, cis
          h' e, h fis' e h e, fis a gis' h, dis e ais, h dis ais dis, dis' e, a! cis a e h' a e
          h' e, gis h e gis h e gis
          \break
        }
        \ottava #1
        \set Staff.ottavation = #"8"
        h4 fis2 gis4 e2 fis4 gis a h4 fis2 gis4 e2 fis4 gis a h fis 2 gis4 e dis dis cis h h2 s4
        \bar "||"
        \break
        \times 4/6 {
          \override TupletNumber #'transparent = ##f
          e'16 e, gis e h' e, fis a, h a cis a
          \override TupletNumber #'transparent = ##t
          e' a, h a cis a gis' a, h a dis a e' gis, a gis cis gis
          \ottava #0
          h gis a gis cis gis
        }
      }
    }
  >>
  \relative c'''{
    \times 4/6 {
      \override TupletBracket #'bracket-visibility = ##f
      \override TupletNumber #'transparent = ##t
      fis gis, a gis e' gis, gis' gis, a gis cis gis a' h, cis h e h
      h' h, cis h gis' h, fis' a, h a cis a e' a, h a cis a
      gis' a, h a dis a e' gis, a gis cis gis h gis a gis cis gis
      fis' gis, a gis e' gis, gis' gis, a gis cis gis a' h, cis h e h
      h' e, h e fis h, gis' h, a h e h fis' gis, a cis e gis
      \ottava #1
      \set Staff.ottavation = #"8"
      h dis, gis h dis e cis dis, e dis gis dis h' dis, e dis gis dis
      a' dis, e dis fis dis gis cis, dis cis e cis fis h, e h fis' h,
    }
    e32 gis, h e cis a e' gis a e fis h gis e gis h e a, h cis h a gis fis
    \ottava #0
    e dis cis h a gis fis e dis cis h a gis fis e dis r8
    h''^\markup \tiny \override #'(baseline-skip . 1) {
      \halign #-4
      \center-column {
        \musicglyph #"scripts.prallup"
        \sharp
      }
    }
    \ottava #1
    \set Staff.ottavation = #"8"
    \repeat unfold 6 {e32 h' fis h}
  }
}