parallelogramBigFill =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0 3.25 moveto
      1.3125 3.75 lineto
      1.3125 -0.25 lineto
      0 -0.75 lineto
      closepath
      fill
     grestore" )
    (cons 0 1.3125)
    (cons -.75 .75))
    
parallelogramBig =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 3.25 moveto
      1.3125 3.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      stroke
     grestore" )
    (cons 0 1.3125)
    (cons -.75 .75))
    
parallelogramFill =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 0.25 moveto
      1.3125 0.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      fill
     grestore" )
    (cons 0 1.3125)
    (cons -.75 .75))
    
parallelogram =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 0.25 moveto
      1.3125 0.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      stroke
     grestore" )
    (cons 0 1.3125)
    (cons .75 -.75))
    
glissParall =
  #(ly:make-stencil (list 'embedded-ps
    "gsave
      currentpoint translate
      newpath
      0.1 setlinewidth
      0 0 moveto
      -3.3 -7 lineto
      -2.8 -7.1 lineto
      0 -1 lineto
      stroke
      closepath
      newpath
      0 1 moveto
      -3.9 -6.8 lineto
      -3.3 -7 lineto
      0 0 lineto
      fill
      closepath
     grestore" )
    (cons 0 1.3125)
    (cons 2 -2.5))
    
glissNoteHeads = \override NoteHead.stencil = \glissParall
myNoteHeads = \override NoteHead.stencil = \parallelogram
myFillNoteHeads = \override NoteHead.stencil = \parallelogramFill
myBigNoteHeads = \override NoteHead.stencil = \parallelogramBig
myBigFillNoteHeads = \override NoteHead.stencil = \parallelogramBigFill
normalNoteHeads = \revert NoteHead.stencil