\version "2.19.15"
\language "deutsch"
makeOctaves = #(define-music-function (parser location arg mus)
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
%%%%%%%%%%% RH %%%%%%%%%%%%
dritteRH = \relative {
  \clef treble
  \key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <<
    {
      \repeat unfold 2 {b'4 b b b es ges f2 ges4 es eses b es es es2}
    }
    \\
    {
      f,8 es d es d des es d as' ges f eses des2 b'8 a c4 ces as as ases ges2
      <ges, es'>4<as eses'><ases eses'><c d><b ges'><eses ces'><des ces'><d b'>
      <es heses'><b! ges'><ces ges'><as d><c as'><ces ases'><b ges'>2
    }
    \\
    {
      \voiceTwo
      \override NoteColumn.force-hshift = #0.2
      s1 s f'4 f8 ges ges4 
      \override NoteColumn.force-hshift = #-0.5
      d s1 s s s s
    }
  >>
  \bar "|."
}
%%%%%%%% DYNAMIC %%%%%%%%%%
dynamicDrei = {
  \override Hairpin.to-barline = ##f
}
%%%%%%%%%%% LH %%%%%%%%%%%%
dritteLH = \relative {
  \clef bass
  \key es \minor
  \time 4/4
  \override Staff.TimeSignature #'stencil = ##f
  <es b'>4<ges ces>
  <<
    {
      ases4 ges es heses' ases2 ces4 b as8 ges ges4 c ces b2
    }
    \\
    {
      b,~ b4 ces2. es2 ces4 b fes'2 es
    }
  >>
  \makeOctaves #-1 {
    es,4 ces' ases as c ges ases2 f4 c ges'2 fes es
  }
}