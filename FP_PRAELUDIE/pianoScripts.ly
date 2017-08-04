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

rhMark = \markup {
  \override #'(font-encoding . latin1) \italic "RH"
}
lhMark = \markup {
  \override #'(font-encoding . latin1) \italic "LH"
}
pocoCr = #(make-music 'CrescendoEvent
            'span-type 'text
            'span-text "poco cresc.")
pocoDim = #(make-music 'CrescendoEvent
             'span-type 'text
             'span-text "poco dimin.")