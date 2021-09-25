\version "2.19.15"
%\version "2.18.0"

\language "deutsch"

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
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%%%%%%%%%%%%% EINS %%%%%%%%%%%%%%%%%%%%%%
rechtsEins = \relative {
  \clef treble
  \time 3/4
  \override Score.RehearsalMark.extra-offset = #'(4 . 2)
  \mark "Waltz"
  <g' e'>4(<fis dis'><f e'><es d'!>2.<e! c'>2<f h>4<g c>2.)
  <g d'>4(<f cis'><e d'><es f'>2<fes es'>4<f! es'>2<fis d'>4<g es'>2.)
  es'4<des g><c b'><b as'><c g'> r a8( ais h c cis dis)
  <g, e'>4(<f d'><fis dis'><h g'>-.<c h'>-.<d gis>-.
  <c a'>8-.)\noBeam gis'(^\markup {\italic Lento} g gis a ais
  h gis f e d c)
  <<
    {
      #(define afterGraceFraction (cons 11 12))
      \afterGrace h2.(\startTrillSpan {ais16[ h]\stopTrillSpan} c4)
    }
    \\
    {
      <e, gis>4<es g><des f>-\markup {\italic rit.} <c e>
    }
  >>
  r2
  \bar "|."
}
dynamicEins = {
  \override Hairpin.to-barline = ##f
  s2\mf s4\< s4. s4.\! s2.\> s\! s2 s4\< s2 s4\! s4. s4.\> s4 s2\!
  s2\f\< s4 s2.\> s4\p
  \override TextScript.extra-offset = #'(0 . 1)
  s2-\markup {\italic {poco cresc}} s2.*2 s8\f s8\p s2-\markup {\italic dolce} s2.*3
}
%%%%%%%%%%%%%%%%%%%%%% ZWEI %%%%%%%%%%%%%%%%%%%%%%
rechtsZwei = \relative {
  \clef treble
  \time 4/4
  \key a \major
  \override Score.RehearsalMark.extra-offset = #'(2 . 2)
  \mark "Dolce"
  <a' cis>4(<gis e'><c a'><h gis'><c a'>2<a fis'>4<fis d'>)
  <d h'>(<es d'><b' g'><a fis'><g g'>2) r
  <<
    {
      h'1( e,) cis'( a)
    }
    \\
    {
      <a, fis'>2<ais f'><gis h><fis ais><eis' gis><e g><dis fis><cis e>
    }
  >>
  <his dis gis>4<h d g><ais cis fis><a c f><gis h e><g b es><fis a d><eis gis cis>
  <e! gis cis>2<dis a' c><d! gis h>1
  cis'4(<h e><cis a'><d gis><dis a'>2<h fis'>4<a dis>)
  <<
    {
      h1 b a
    }
    \\
    {
      fis2 f e dis e1
    }
  >>
  \bar "|."
}
dynamicZwei = {
  \override Hairpin.to-barline = ##f
  \once\override TextScript.extra-offset = #'(-6 . 2.5)
  s1\p-\markup {\italic lento} s1\< s2. s4\! s2. s4\mf s1\< s4 s2.\! s1*2
  \override TextScript.extra-offset = #'(0 . 1)
  s1\ff s1*2-\markup {\italic dim} s1\pp
  s2.\p s4\< s2. s4\! s2. s4\> s1 s\p
}
%%%%%%%%%%%%%%%%%%%%%% DREI %%%%%%%%%%%%%%%%%%%%%%
rechtsDrei = \relative {
  \clef treble
  \time 2/4
  \key fis \minor
  \override Score.RehearsalMark.extra-offset = #'(3 . 2)
  \mark "Marcia"
  fis'8 fis16 fis <cis fis>8<his fis'><cis fis><his gis'>
  <<
    {
      a'4
    }
    \\
    {
      cis,8 his
    }
  >>
  <d gis>8<cis a'>
  <<
    {
      h'4
    }
    \\
    {
      d,8 cis
    }
  >>
  <dis his'>8-><cisis his'>-><dis his'>4-^<eis h'>-.<eis g>-.
  <a, fis'>-^<cis eis>-.<cis fis>-.<cis eis>-.
  a'8 cis16( his cis8) cis->~ cis fis eis16( fis gis8) a his,4 cis8->~
  cis fis cis cis->~ cis cis4-> cis8->~ cis \acciaccatura cisis dis gis,4-^
  \shape #'(
             ((0 . 0) (-0.5 . 0.5) (0 . 1.5) (0 . 2))
             ((0.5 . 0.5) (0 . 0) (0 . 0) (0 . 0))
             ) Slur
  <ais cis>(
  <<
    {
      his8 cis
    }
    \\
    {
      a4
    }
  >>
  <gis fis'><g eis'>)<fis ais>4(<eis h'><e cis'>2)<fis h dis>4-^<e ais cis>-^
  <eis gis eis'>-^ r <his fis'>-^<cis eis>-^<cis fis>-^<d f>-.<cis fis>-.<cis eis>-.
  a'8 cis16( his cis8) cis->~ cis fis eis16( fis gis8) a his,4 cis8->~
  cis fis cis cis->~ cis cis4-> cis8->~ cis \acciaccatura cisis dis eis4-.
  <a, fis'>-^ r
  \bar "|."
}
dynamicDrei = {
  \override TextScript.extra-offset = #'(0 . 1)
  s2\f s2*4-\markup {\italic cresc} s4\ff s\sp s2 s4.\mf
  s8-\markup {\italic {poco cresc}} s2*4 s4 s\ff
  s2*4\sp s2*4\sf s2*2\sp s4 s-\markup {\italic {poco cresc}} s2*4 s2\ff
}
%%%%%%%%%%%%%%%%%%%%%% FIER %%%%%%%%%%%%%%%%%%%%%%
rechtsFier = \relative {
  \clef treble
  \time 4/4
  \override Score.RehearsalMark.extra-offset = #'(5 . 2)
  \mark "Grawe"
  \override Slur.positions = #'(1 . 1)
  c''2.( a'4 gis2. gis,4 h2. g'!4 fis2. c4 f!1 e dis~ dis) \break
  a'( e b' dis, d! a' g2) r \break
  <<
    {
      \shape #'((-0.5 . -4)(0 . 0)(0 . 0)(0 . -3)) Slur
      c,2.( a'4 gis2. gis,4 h2. g'!4 fis2. c4 f!1 e)
    }
    \\
    {
      \shape #'((0.5 . 2)(0 . 0)(0 . 0)(0.5 . 2)) Slur
      e,4( dis e dis f e f e fis eis fis eis g fis g fis
      as g as g a! gis a gis)
    }
  >>
  <a e'>1~ q2 r
  \bar "|."
}
dynamicFier = {
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \override TextScript.extra-offset = #'(0 . 1)
  \once\override TextScript.extra-offset = #'(2 . 2)
  s2.\pp-\markup {\italic dolce} s4\< s1*3 s1*2\f\> s1*2\!
  s1*3\ppp s1*2\cresc s1\mp\> s4 s2.\!
  \revert TextScript.extra-offset
  s1\mf s2. s4-\markup {\italic {poco dim.}}
}