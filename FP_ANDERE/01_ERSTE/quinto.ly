\version "2.19.15"

\language "deutsch"

%%%%%%%%%% FIVE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% RH %%%%%%%%%%%%
rechtsFive = \relative {
  \time 2/4
  \key fis \minor
  \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Presto"
  \override Beam.breakable = ##t
  \set Staff.extraNatural = ##t
  b'8-.[ cis-. d-.] e-.[ eis-. e-.] d-.[ cis-.]
  b-.[ fis-. gis-.] a-.[ gis-. fis-.] <his cis>4-.-^
  b8-.[ cis-. d-.] e-.[ eis-. e-.] d-.[ cis-.]
  b-.[ fis-. gis-.] a-.[ gis-. fis-.] <eis fis>4-.-^\break
  b'8-.[ cis-. d-.] e-.[ eis-. e-.] d-.[ cis-.]
  b-.[ fis-. gis-.] a-.[ gis-. fis-.] <his cis>4->
  b8-.[ cis-. d-.] e-.[ eis-. e-.] d-.[ cis-.]
  b-.[ fis-. gis-.] a-.[ gis-. fis-.] <eis fis>4->\break
  q8[( cis q]-.) q[( cis q]-.) q[( cis]-.) q[( cis q]-.) q[( cis q]-.) q4->
  %\bar ".|:"
  fis8[-. gis-. a]-. his[-. a-. gis]-. fis[-. cis]-.
  fis[-. gis-. a]-. his[-. a-. gis]-. <eis fis>4->
  \bar ":|.|:"\break
  cis'8[-. d-. eis]-. fis[-. eis-. d]-. <fisis gis>[-> q]->
  cis[-. d-. eis]-. fis![-. eis-. d]-. <his cis>4->
  \bar ":|.|:"
  fis8[-. gis-. a]-. his[-. a-. gis]-. <his cis>[-. fis]-.
  fis[-. gis-. a]-. his[-. a-. gis]-. <eis fis>4->
  \bar ":|."\break <his' cis>4-.-^ q-.-^ q-.-^ r
  \bar ".|:"
  his,8[-. cis-. d]-. eis[-. fis-. gis]-. a[-. gis]-.
  fis[-.eis-. d]-. fis[-. eis-. d]-.<his cis>4->
  his8[-. cis-. d]-. eis[-. fis-. gis]-. a[-. gis]-.
  fis[-.eis-. d]-. cis[-. d-. eis]-.<eis fis>4->
  \bar ":|.|:"
  \clef bass
  \repeat unfold 2 {<eis, fis>8[-. fis-. fis]-.} <eis fis>[-. fis]-.
  \repeat unfold 2 {<eis fis>8[-. fis-. fis]-.} <his cis>4-.
  \bar ":|.|:"\break
  \clef treble
  \once \override Score.RehearsalMark.font-size = #0.5
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -3)
  \mark \markup { \small \musicglyph #"scripts.segno" }
  b'8->[
  \once\override Score.RehearsalMark.extra-offset = #'(5 . 1)
  \mark "Prestissimo"
  cis-. d-.] e->[ eis-. e-.] d->[ cis-.]
  b->[ fis-. gis-.] a->[ gis-. fis-.] <his cis>4-^
  b8->[ cis-. d-.] e->[ eis-. e-.] d->[ cis-.]
  b->[ fis-. gis-.] a->[ gis-. fis-.] <eis fis>4-^
  \bar ":|.|:"\break
  fis8[-> gis-. a]-. his[-> a-. gis]-. fis[-> cis]-.
  fis[-> gis-. a]-. his[-> a-. gis]-. <eis fis>4-^
  \bar ":|.|:"
  cis'8[-> d-. eis]-. fis[-> eis-. d]-. <fisis gis>4-^
  cis8[-> d-. eis]-. fis![-> eis-. d]-. <his cis>4-^
  \bar ":|.|:"\break
  his,8[-> cis-. d]-. eis[-> fis-. gis]-. a[-> gis]-.
  fis[-> eis-. d]-. fis[-> eis-. d]-.<his cis>4-^
  his8[-> cis-. d]-. eis[-> fis-. gis]-. a[-> gis]-.
  fis[-> eis-. d]-. cis[-> d-. eis]-.
  \once \override Score.RehearsalMark.extra-offset = #'( 4.5 . 0.5 )
  \mark \markup { \musicglyph #"scripts.coda" }
  <eis fis>4-^
  %\break
  b'8-![ cis-. d-.] e-![ eis-. e-.] d-![ cis-.]
  b-![ fis-. gis-.] a-![ gis-. fis-.] <his cis>4-!
  b8-![ cis-. d-.] e-![ eis-. e-.] d-![ cis-.]
  b-![ fis-. gis-.] a-![ gis-. fis-.] <eis fis>4-!
  %\break
  fis8[-! gis-. a]-. his[-! a-. gis]-. fis[-! cis]-.
  fis[-! gis-. a]-. his[-! a-. gis]-. <eis fis>4-!
  %\break
  cis'8[-! d-. eis]-. fis[-! eis-. d]-. <fisis gis>4-!
  cis8[-! d-. eis]-. fis![-! eis-. d]-. <his cis>4-!
  cis8[-! d-. eis]-. fis[-! eis-. d]-. <fisis gis>4-!
  cis8[-! d-. eis]-. fis![-! eis-. d]-. <his cis>4-!
  fis8[-! gis-. a]-. his[-! a-. gis]-. <his cis>[-! fis]-.
  fis[-! gis-. a]-. his[-! a-. gis]-. <eis fis>4-!
  his8[-! cis d] eis[-! fis gis] a[-! gis!]
  fis[-! eis d] fis[-! eis d] <his cis>4-!
  his8[-! cis d] eis[-! fis gis] a[-! gis!]
  fis[-! eis d] cis[-! d eis] <eis fis>4-!
  \cadenzaOn
  \stopStaff
  s4
  \bar "|"
  \startStaff
  \cadenzaOff
  \mark \markup { \musicglyph #"scripts.coda" }
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  %\once \override Score.Clef.X-extent = #'(0 . 1.6)
  %\override Score.Clef.break-align-anchor = #5
  %\override Score.Clef.break-align-anchor-alignment = #5
  \skip 16
  \clef bass
  <cis, cis'>4.-!
  \clef treble
  <cis'' e fis g>8-!~ q4 <h d e f>4*3/4-! r2
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
pRoundMF = \markup {
  \center-align \concat {
    \dynamic p
    \bold { \italic ( }
    \dynamic mf
    \bold { \italic ) }
  }
}
roundP = \markup {
  \center-align \concat {
    \bold { \italic ( }
    \dynamic p
    \bold { \italic ) }
  }
}
dynamicFive = {
  \override Hairpin.to-barline = ##f
  s2*8\p s2*8\mp s2*4\pp s2*12\mp s2*2\f
  \once \override TextScript.extra-offset = #'(2 . 0)
  s2*8-\pRoundMF s2*4\pp s2*16\f s2*8-\roundP s2*20\f s2*15\ff
}
%%%%%%%%%%% LH %%%%%%%%%%%%
linksFive = \relative {
  \time 2/4
  \key fis \minor
  \clef bass
  \set Staff.extraNatural = ##t
  R2*8
  <<
    {
      \acciaccatura his,8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.->
    }
  >>
  <fis cis'>8~ q4 q
  \repeat unfold 5 {<fis cis'>4. q8~ q4 q}\bar ".|:"
  <<
    {
      \acciaccatura his8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.->
    }
  >>
  <fis cis'>8~ q4 q
  \repeat unfold 23 {<fis cis'>4. q8~ q4 q} <fis cis'>4. q8~ q4 q->
  \bar ":|.|:"\break
  <<
    {
      \acciaccatura his8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <cis'' e fis g>8->~ q4<h d e f>->
  <fis, cis'>4.-^ <es b'>8->~ q4 <d a'>-!
  <<
    {
      \acciaccatura his'8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-^
    }
  >>
  <h' d e f>8->~ q4<cis e fis g>->
  <fis,, cis'>4.-^ <d' fisis gis>8->~ q4 <fis cis'>-!
  \bar ":|.|:"\break
  <<
    {
      \acciaccatura his,8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <a' c d es>8->~ q4<dis,, ais'>->
  <fis cis'>4.-^<h' d e! f>8->~ <h d e f>4<fis cis'>4-!
  \bar ":|."
  <<
    {
      \acciaccatura his,8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <h' d e f>8->~ q4<cis e fis g>->
  <fis,, cis'>4.-^ <es b'>8->~ q4 <d a'>-!
  <<
    {
      \acciaccatura his'8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-^
    }
  >>
  <cis'' e fis g>8->~ q4<h d e f>->
  <fis, cis'>4.-^ <d' fisis gis>8->~ q4 <fis cis'>-!
  \bar ".|:"\break
  <<
    {
      \acciaccatura his,8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <eis eis'>8-!~ q4 <d' a'>-!
  <fis, cis'>4.-!<a' c d es>8-!~ q4<fis cis'>-!
  \bar ":|.|:"
  <<
    {
      \acciaccatura his,8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <h' d e f>8-!~ q4<cis e fis g>-!
  <fis,, cis'>4.-! <es b'>8-!~ q4 <d a'>-!\break
  <<
    {
      \acciaccatura his'8
      \once \override NoteColumn.ignore-collision = ##t
      cis4.
    }
    \new Voice {
      \voiceTwo
      \hideNotes \grace his8
      \unHideNotes \oneVoice fis4.-!
    }
  >>
  <h' d e f>8-!~ q4<cis e fis g>-!
  <fis,, cis'>4.-! <d' fisis gis>8-!~ q4 <fis cis'>-!
  \bar ":|."
  \once \override Score.RehearsalMark.font-size = #0.4
  \mark \markup { \small \musicglyph #"scripts.segno" }
  \cadenzaOn
  \stopStaff
  s4
  \startStaff
  \cadenzaOff
  \skip 16
  <fis,, fis'>4.-!
  \clef treble
  <cis''' e fis g>8-!~ q4 <h d e f>4*3/4-!
  \clef bass
  <fis,,! fis'!>4 r
}