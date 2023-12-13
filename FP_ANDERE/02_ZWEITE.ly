\version "2.19.15"

\language "deutsch"

\header {
  title = \markup { \fontsize #4 "2" }
  composer = "I. G."
  %meter = "Con moto"
  tagline = \markup {\char ##x00A9 "Ilja Grischunin"}
}

\paper {
  #(set-paper-size "a4")
  top-system-spacing.basic-distance = #25
  top-markup-spacing.basic-distance = #15
  markup-system-spacing.basic-distance = #25
  system-system-spacing.basic-distance = #30
  last-bottom-spacing.basic-distance = #25
  left-margin = 15
  right-margin = 15
  %two-sided = ##t
  %inner-margin = 25
  %outer-margin = 15
}

\layout {
  indent = 10
  \context { \RemoveEmptyStaffContext }
  \context {
    \GrandStaff
    \consists #Span_stem_engraver
  }
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.basic-distance = #13
    \remove "Bar_number_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/
                                                               further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/
                                                          further 2) 0)
         #})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \time 3/4
}
loopR = \relative {
  <f'' b e>4<d e b'><e gis d'><d e a>
}
loopL = \relative {
  b'8 e4 f b,8~ b f'4 gis b,8~
}

\score {
  \new GrandStaff {
    <<
      \new Staff = "RH" \relative {
        \mergeDifferentlyHeadedOn
        \mergeDifferentlyDottedOn
        \global
        \once\override Score.RehearsalMark.extra-offset = #'(4 . 2)
        \mark "Con moto"
        \repeat unfold 3 { \loopR }
        \mark\markup {
          \normalsize \musicglyph #"scripts.segno"
        }
        \repeat unfold 16 { \loopR }
        <<
          {
            s2 e'''8 fis a\noBeam \acciaccatura gis a4 g8
            fis b4. \times 2/3{a8 gis fis} e4. \acciaccatura gis8 a!\noBeam
            \repeat unfold 2 {\acciaccatura gis8 a}
            e8 fis a\noBeam \acciaccatura gis a4 g8 fis b4 c8 d4
            r8 <a e'>\noBeam<fis cis'><e h'><d a'>[<h fis'>]
          }
          \\
          {
            \repeat unfold 5 { \loopR }
          }
        >>
        \repeat unfold 9 { \loopR }
        <f as es'>4<d e! a><eis gis d'>
        <eis fisis h!><dis fisis cis'><des e as>
        <e! a! des><c f g><d es fis c'>
        s2.*10
        \acciaccatura c8 des4~ des8. c16 des es fes8
        fis16 a, d fis, h4 h r d16 e fis8 h!16 d, fis h, es2 d16 des8 c16 h!2.
        \repeat unfold 7 { \loopR } <f' b e>4<d e b'>
        r8 g( eis g) r g([ eis g)] r ases( f! ases) r2.
        r8 f4 e8 f!8. dis16 cis4 b' as g!
        \set tupletSpannerDuration = #(ly:make-moment 1 8)
        \times 2/3 {
          \override TupletNumber.transparent = ##t
          \override TupletBracket.bracket-visibility = ##f
          r16 b, es r a, f' r d! g r e g
          r d a' r d, g r c, g' r h, f' r b, f' r as, f'
          r g, c r e, g r g a r a c r e, a r c e
          r c e r c d r a c r a h r g h r g a
          r f a r f g r e g r e a r e h' r e, c'
          r es, c' r es, b' r es, b' r es, b' r d,! b' r es, c'
          r g d' r b es r g, es' r a, d r g, c r f, c'
          r e, cis' r gis e' r a, e' r e, c' r d, c' r e, c'
          r f, c' r f, c' r f, b r f as r es as r d, b'
          r es, d' r fis, a r es a r d, a' r f a r e a
          r f des' r f, es' r f, des' r g, d' r e,! c' r d, h'!
          r d, h' r d, a' r e a r d, a' r fis a r e a
          r e g r d g r b, fis' r a, e' r g, e' r g,! d'
        }
        r8
        \ottava #1
        \set Staff.ottavation = #"8"
        \repeat unfold 2 {
          <g'' es'>16[<des heses'><g des'><es as>]
        }
        <g es'>16<des heses'> r8
        <g! es'>16[<des heses'><g des'><es as>]
        <g es'>16[<des heses'><g des'><es as>]
        <g es'>16<des heses'> r8
        \repeat unfold 2 {
          <g es'>16[<des heses'><g des'><es as>]
        } r8
        \repeat unfold 12 {
          <g es'>16<des heses'><g des'><es as>
        }
        <gis e'!>16<d b'><gis d'><e a>
        \repeat unfold 16 {
          <gis e'>16<d b'><gis d'><e a>
        }
        <gis e'>16<d b'>8.
        \ottava #0
        r2.
        \clef bass
        \stemNeutral
        <as,,, f' as>4<as es' as>4.<g e' g>8<d' f d'>2<es fis cis'>4
        <d g d'>2.<es c' es>4<es ces' es>4.<e b' e>8
        \clef treble
        <c' a' c>2<des g h>4<c fis c'>4.<h fis' h>8<b g' b>4
        <ais fis' ais>2.~ q4 r2
        \time 9/8
        <fis dis' fis>4<fis cis' fis>4.<f d' f>8<c' es c'>4.
        <as f' as>4<as es' as>4.<g e' g>8<d' f d'>4.
        \time 3/4
        <h fis' h>4<h f' h>4.<b e b'>8
        \time 4/4
        <a d a' fis'>1
        \time 3/4
        d'4( f4. g8 ces,8)\acciaccatura g'8 as16( r as,4) b~(
        b ges' cis, f es4. d8) d-- r r2 d4.( es8 f fis
        g4.) \acciaccatura fis'8 g16-. r es,8-. es'-.
        d!16( cis c b a as g f es d cis c h4)( d4. e8
        es) \acciaccatura f ges16( r fes,4.->) r8
        r \acciaccatura dis' e!16( r g,4.->) r8
        r \acciaccatura h! c16( r as4.->) r8
        b2 d4 cis2. b2 d4 e2. fis2 eis4 fis2.\bar"||"
        \mark\markup {
          \normalsize \musicglyph #"scripts.segno"
        }
        \cadenzaOn
        \stopStaff
        s4
        \bar "|"
        \startStaff
        \cadenzaOff
        \mark \markup { \musicglyph #"scripts.coda" }
        <d e b'>4<e gis d'><d e a>
        <f b e><d e b'><e gis d'><d e a>
        <e gis d'><d e a> r2 <e gis d'>4<d e a>\fermata
        r r\fermata \bar"|."
      }
      \new Staff = "CENTR" \relative {
        \global
        \clef bass
        R2.*4\bar "||" <as,, as'>2.~( q <d, d'>~ q)\break
        \clef treble
        r8 e''''4 f b,8~ b f'4 gis b,8~ b8 e4 f b,8~ b f'4 gis
        \once \override LaissezVibrerTie.extra-offset = #'(0.6 . 0.2)
        \xLV #2 b,8\laissezVibrer%~
        <<
          {
            \stemDown
            b8 e4 f b,8~ b f'4 gis b,8~
            \stemUp
            \repeat unfold 2 {\loopL} b8 e4 f b,8~ b
            \stemDown
            f'4 gis b,8~ \repeat unfold 7 {\loopL}
            \stemUp
            \repeat unfold 2 {\loopL} b8 e4 f b,8~ b
            \stemDown
            f'4 gis b,8~ \repeat unfold 2 {\loopL}
            b8 e4 f ais,8~ ais d4 dis b8~ b es4 f b,8
            s2.*2
            \stemUp
            es4 es4. b8 es ges as4 b c c,4. d8 es f fis4 gis
            a2 ais8 h!
            <des, des'>[<c c'><h h'>]<b b'><a a'><as as'>
            <g g'>[<ges ges'><f f'>]<e e'><es es'><d d'>
            \repeat unfold 2 {
              <des as' des>[<des g des'><des fis des'>]
            }
            \repeat unfold 2 {
              <des as'>[<des es g><des fes ges>]
            }
            <d! a'!>[<d e! gis><d fis g>]<d a'>[<d e gis><d fis g>]
            \repeat unfold 2 {
              <d b'>[<d e a><d fis as>]
            }
            \repeat unfold 2 {
              <es c'>[<es f h><es ges b>]
            }
            <d cis'>[<d e! c'><d fis h>]<d cis'>[<d e c'><d fis h>]
            \repeat unfold 4 {
              <d b'>[<d e a><d f gis>]
            }
            <d e fis>4 r2 r2.
            \clef treble
            \stemDown
            r8 e'4 f b,8~ b f'4 gis b,8~
            b8 e4 f b,8~ b f'4 gis b,8~
            b8 e4 f b,8~ b f'4 gis b,8
            dis2 d4~ d des2
            \set tupletSpannerDuration = #(ly:make-moment 1 8)
            \times 2/3 {
              \override TupletNumber.transparent = ##t
              \override TupletBracket.bracket-visibility = ##f
              \override Rest.staff-position = #0
              r16 es ges r des ges r c, ges' r ces, ges' r ces, f r ces fes
              r a,! d! r a e'! r a, d r a d r a c r fis, h
              r e, fis r dis h' r as des r c! g' r des ges r des f
              r des es r c es
            }
            \stemUp
            ges,8 g a g
            fis e d des c h! c d dis e g h
            r a g f e d c h c h a as
            <<
              {
                r4 r8 as'\noBeam
              }
              \\
              {
                \change Staff = LH
                \stemUp
                g,8
                \change Staff = CENTR
                \stemDown
                f'~ f4
              }
            >>
            \stemNeutral
            <es g>8<as,_~ c~ f~> q4 <d' a'!>4.<b g'>8
            r <a fis'>4. r8 <gis e'><g! e'>4.<c es>8<b fis'>4
            <a a'> r
            <<
              {
                d8 c b4. h8~ h4
              }
              \\
              {
                <a a'>4 r8 a g fis~ \stemUp fis4
              }
            >>
            \stemDown
            r4 r8 <h g'><a fis'>4 r8 <cis a'>4 r8 <b g'>4
            \clef bass
            <des,, b' des>2.<c b' c>
            \time 4/4
            <ces_~ es~ ces'~>2 q8 b'4.
            \clef treble
            \repeat unfold 2 {r16 d'! d d8 d8 f,16 des'2}
            \time 3/4
            r2. r r \loopR
            <f b e>4<d e b'> e <d e a><f b e>4<d e b'> e d
            \clef bass
            r4 r8 \stemUp des,,,4<c,_~ c'~>8 q4
          }
          \\
          {
            s2.*2 a''''2.->~ a4 e-> g!->~ g2 r4 r8 g( a h cis4->) r8 e,( fis g as4->)
            s2.*15 a2.->~ a4 e-> g!->~ g2 r4 r8 g( a h cis4->) r8 e,( fis g as4->)
            s2.*8
            \autoBeamOff
            \crossStaff {
              s8. d,16 s8. d16 s8. d16 s2.*6
              es8 es es es
            }
            \autoBeamOn
          }
          \new Staff = "LH" \relative {
            \once \omit Staff.TimeSignature
            \clef bass
            <as,, as'>2.~ q R2.*2 <d, d'>2.~ q R2. <as' as'><fis fis'><es es'><cis cis'>
            %\once \override Score.RehearsalMark #'extra-offset = #'( 6 . -3 )
            %\once \override Score.RehearsalMark #'font-size = #1
            \mark \markup { \musicglyph #"scripts.coda" }
            <c! c'!>~ <c c'>~ q R2.*2 as''2.~ as4 r2 R2. d, as' R2.*3 <d,, d'>2. R <a' a'>
            <as as'>16 e'' f b d e d cis d e d cis d f d c! d f d c d fis d h!
            d g d a d gis d gis, d' a' d, g, d' b' d, fis, dis' b' dis, fis, e' b' e, f,
            <as,, as'> e'' f b d e d cis d e d cis d f d h! d f d h cis eis cis h
            cis eis cis h cis eis cis h c ges' c, b c ges' c, b c g' c, a c as' c, as
            \stemDown
            \repeat unfold 3{
              c
              \change Staff = CENTR
              <fis as>
              \change Staff = LH
              c as
            }
            \change Staff = CENTR
            des <f! as> des
            \change Staff = LH
            as
            \repeat unfold 5{
              \change Staff = CENTR
              des <f as> des
              \change Staff = LH
              as
            }
            \repeat unfold 3{
              \change Staff = CENTR
              des <f as> des
              \change Staff = LH
              b
            }
            \change Staff = CENTR
            c <f a!> c
            \change Staff = LH
            a
            \repeat unfold 2{
              \change Staff = CENTR
              c <f a> c
              \change Staff = LH
              a
            }
            \change Staff = CENTR
            des <f b> des
            \change Staff = LH
            g,
            \repeat unfold 2{
              \change Staff = CENTR
              c <es h'> c
              \change Staff = LH
              fis,
            }
            b
            \change Staff = CENTR
            <d c'>
            \change Staff = LH
            b f!
            b
            \change Staff = CENTR
            <d c'>
            \change Staff = LH
            b f
            b
            \change Staff = CENTR
            <g' cis>
            \change Staff = LH
            b,! e,
            <ges a>8 q q q\noBeam
            \stemUp
            <a, a'><as as'><g g'>[<ges ges'>< f f'>]<e e'><es es'><d d'>
            <des des'>[<des' es><des fes>] des[<des es><des fes>]
            r4 b,2 r2. h!2 r4 r c2 r2.
            \clef treble
            \stemDown
            cis'''2.-> c!->
            \clef bass
            r8 d,, as'2~ as16 heses as ges b, a' g f
            \stemUp
            e g, d' cis
            e,-> c'! b a b as d, g fis8-^ r
            <g, g'>16-^ r8. r8
            \stemDown
            b''16( c <d f>4)
            \clef treble
            \stemUp
            <e fis><f gis><fis a>
            \stemDown
            \set tupletSpannerDuration = #(ly:make-moment 1 8)
            \times 2/3 {
              <gis b>16 f'! gis r e g
              \override TupletNumber.transparent = ##t
              \override TupletBracket.bracket-visibility = ##f
              r_\markup {\italic sim}
              d f r a, e' r fis h! r d, f
              r e gis r f d' r f, gis r e g r d f r d e
              r fis h! r f g r e gis r gis d' r f, gis r e g
              r e fis r e fis r e! fis r e fis r e fis r e fis
              r e! fis! r e fis r e ges r e ges r e ges r e ges
            }
            ces,8 b a as g! ges
            <<
              {
                r8 c! h4. a8 gis4 r8 b ces4 b
              }
              \\
              {
                f4. gis8 fis h,~ h e f!4. es8~ es f
              }
            >>
            s2 s2.*2
            \clef bass
            \stemNeutral
            c,2. r g'4 des, r
            <<
              {
                \stemDown
                r8 <g' c es> r <b c f>4 r8
                r4 <fis h e>8 r <e c' e>4
                r4 <as c f>4 r8 <as d fis>
                r4 <a! es' fis>8<a d f>4 r8
              }
              \\
              {
                \stemUp
                c,,4 r <f, f'><a a'> r8 <gis gis'>4 r8
                r <des' des'>4. \teeny \stemDown <d d'>4
                \normalsize r8 <es es'>4 r8 r4
              }
            >>
            r2
            <<
              {
                \stemDown
                r8 <a' h d>
              }
              \\
              {
                \stemUp
                g,4 d \stemDown fis'2
                r4 \stemUp <g,, g'>4.<ges ges'>8<f f'>2.<ges ges'>
              }
            >>
            \time 4/4
            <as as'>2~ q8 <b b'>4.
            \repeat unfold 2 {
              r2.
              \ottava #-1
              \set Staff.ottavation = #"8"
              a,!4--
              \ottava #0
            }
            \time 3/4
            r2. r <as' as'>2.-> r2 r8 <d, d'>8->~ q2.
            \clef treble
            a''''2.->~ a4 e-> g!->~ g2.\break
          }
        >>
%%%%%%%%%%%%%%%%%%
        <ces,,, ces'>4.<ces ces'>8<b' b'>2 <a a'>4<a a'>2.
        <as as'>4<g g'>4.<g g'>8<f' f'>2<e e'>4
        <e e'>4.<dis dis'>8<d d'>4<dis dis'>2.~ q4 r2
        <ais ais'>4<a a'>4. q8 <as' as'>4.
        <des, des'>4<ces ces'>4. q8 <b b'>4.
        <dis dis'>4<d d'>4. q8 <d, d' a' fis'>1\break
        <<
          {
            \clef treble
            r4 \acciaccatura e'''8 f-. r r4
            r ges8( f e!4)
            r \acciaccatura d8 es-. r r4
            r \acciaccatura e!8 f-. r r4
            fis8 \acciaccatura gis'8 a16-. r
            r8 \acciaccatura eis8 fis16-. r
            r8 \acciaccatura cis8 d16-. r
            r4 \acciaccatura e,8 f-. r r4
            r4 \acciaccatura a8 b-. r r4
            r8 <f b e>-. r <f as es'>-. r <d a' b>-.
            r4 \acciaccatura fis8 g-. r r4
            r r8 \acciaccatura d'!8 es16-. r
            r8 \acciaccatura c8 des16-. r
            r4 r8 \acciaccatura his'8 cis16-. r
            r8 \acciaccatura a8 b16-. r
            r2 \acciaccatura cis,8 d-. r
            r4 \repeat unfold 2 {<f, as>8(<es g>)}
            r4 <fis a!>8(<e! gis>)<fis a>(<e gis>)
            r4 <g! b>8(<f! a>)<g b>(<f a>)
            r4 <gis h!>8(<fis ais>)<gis h>(<fis ais>)
            <e as d>4<c fis a>(<as' c d>)<fis h dis>2.
            \cadenzaOn
            \stopStaff
            s4
            \bar "|"
            \startStaff
            \cadenzaOff
            \mark \markup { \musicglyph #"scripts.coda" }
            b8\repeatTie f'4 gis b,8~ b e4 f b,8~ b r r2 r2.
            r2\fermata r4\fermata
          }
          \new Staff = "LH" \relative {
            %\once \omit Staff.TimeSignature
            \clef bass
            b,4 r <f' b d> ges, <c' es><a cis> f, r <es' a d>
            gis, r <as' b d> a, <a' d fis> c,8 <b' e g>
            b,4 r <f' b d> des8 <b' es g> r4 <g des' fes>
            as,8 r r2 g4 r <f' h d> b, <ges' b des> des8 <ges b fes'>
            a,4 <g'! cis e><fes b es> b, <g' d' f> r
            es, <b' g' c> q
            e,!
            <<
              {
                h''!8( b a4)
              }
              \\
              {
                <a, cis>4<a cis fis>
              }
            >>
            f!4 <b d c'> q
            fis
            <<
              {
                cis''( <e, cis'>\stemDown<c! fis c'!>)
              }
              \\
              {
                dis8( d cis4) s
              }
            >>
            \stemNeutral
            <fis, d' a'>(<d' h' f'>) <h' cis dis>2.
            \cadenzaOn
            \stopStaff
            s4
            \bar "|"
            \startStaff
            \cadenzaOff
            %\mark \markup { \musicglyph #"scripts.coda" }
            <c,,, c'>2.~ q~ q q->~ q4\fermata r r\fermata
          }
        >>
      }
    >>
  }
}
