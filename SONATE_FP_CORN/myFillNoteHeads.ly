parallelogramFill =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 3.25 moveto
      1.3125 3.75 lineto
      1.3125 -0.25 lineto
      0 -0.75 lineto
      closepath
      fill
     grestore" )
    (cons 0 1.3125)
    (cons -.75 .75))

myFillNoteHeads = \override NoteHead.stencil = \parallelogramFill
normalNoteHeads = \revert NoteHead.stencil