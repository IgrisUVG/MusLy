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
  
  \bar "|."
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