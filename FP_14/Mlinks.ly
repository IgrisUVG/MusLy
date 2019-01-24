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

%%%%%%%%%%%%%%%%%%%%%% EINS %%%%%%%%%%%%%%%%%%%%%%
linksEins = \relative {
  \clef bass
  \time 3/4
  h8( b a as g f) g( ges f es d cis) a'( g fis f e d) gis( g fis f e d)
  h'( a as g ges f) as( g ges f es d) c'( ces b as g ges) f( fes es d c b)
  g'( f fes es d c) d'( c b a g f) e( es d c h ais) h( c cis d dis e)
  f( e dis d c h a-.) r r2 R2. r4 a h c r2
  \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%% ZWEI %%%%%%%%%%%%%%%%%%%%%%
linksZwei = \relative {
  \clef bass
  \time 4/4
  \key a \major
  <a, e'>4_(<cis e><c e><d e><d fis>2<cis! gis'>4<c ais'>)
  <h h'>_(<fis' a><e g><d fis><h? f'>2) r
  <<
    {
      h'2 c d c h his cis dis
    }
    \\
    {
      dis,1( e) eis( fis)
    }
  >>
  <fis eis'>4<f e'><e dis'><es d'><d cis'><des c'><c h'><h ais'>
  <h a'!>2<f' ais><e h'>1
  <a e'>4_(<gis d'><g e'><f e'><fis! h>2<eis cis'>4<fis dis'>)
  <<
    {
      a2 ais h! c cis!1
    }
    \\
    {
      fis,1 gis a
    }
  >>
  \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%% DREI %%%%%%%%%%%%%%%%%%%%%%
linksDrei = \relative {
  \clef bass
  \time 2/4
  \key fis \minor
  
  \bar "|."
}
%%%%%%%%%%%%%%%%%%%%%% FIER %%%%%%%%%%%%%%%%%%%%%%
linksFier = \relative {
  \clef bass
  \time 4/4
  
  \bar "|."
}