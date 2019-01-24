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
top = \change Staff = "RH"
bot = \change Staff = "LH"

%%%%%%%%%%%%%%%%%%%%%% EINS %%%%%%%%%%%%%%%%%%%%%%
rechtsEins = \relative {
  \clef treble
  \time 3/4
  <g' e'>4(<fis dis'><f e'><es d'!>2.<e! c'>2<f h>4<g c>2.)
  <g d'>4(<f cis'><e d'><es f'>2<fes es'>4<f! es'>2<fis d'>4<g es'>2.)
  es'4<des g><c b'><b as'><c g'> r a8( ais h c cis dis)
  <g, e'>4(<f d'><fis dis'><h g'>-.<c h'>-.<d gis>-.
  <c a'>8-.) gis'(^\markup {\italic \bold Lento} g gis a ais
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
}
%%%%%%%%%%%%%%%%%%%%%% ZWEI %%%%%%%%%%%%%%%%%%%%%%
rechtsZwei = \relative {
  \clef treble
  \time 4/4
  \key a \major
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
  s1\p s1\< s2. s4\! s2. s4\mf s1\< s4 s2.\! s1*2 s1\ff s1*2 s1\pp
  s2.\p s4\< s2. s4\! s2. s4\> s1 s\p
}
%%%%%%%%%%%%%%%%%%%%%% DREI %%%%%%%%%%%%%%%%%%%%%%
rechtsDrei = \relative {
  \clef treble
  \time 2/4
  \key fis \minor
  
  \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%% FIER %%%%%%%%%%%%%%%%%%%%%%
rechtsFier = \relative {
  \clef treble
  \time 4/4
  
  \bar "|."
}