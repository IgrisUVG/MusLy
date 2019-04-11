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

parallelogramZebraBig =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.1 setlinewidth
      0 .1 moveto
      1.3 .6 lineto
      1.3 -.1 lineto
      0 -.6 lineto
      0 .1 lineto
      stroke
      closepath
      newpath
      -.05 .7 moveto
      1.325 1.2 lineto
      1.325 .5 lineto
      -.05 0 lineto
      -.05 .7 lineto
      fill
      closepath
      newpath
      0 1.3 moveto
      1.3 1.8 lineto
      1.3 1.1 lineto
      0 .6 lineto
      0 1.3 lineto
      stroke
      closepath
      newpath
      -.05 1.9 moveto
      1.325 2.4 lineto
      1.325 1.7 lineto
      -.05 1.2 lineto
      -.05 1.9 lineto
      fill
      closepath
      newpath
      0 2.5 moveto
      1.3 3 lineto
      1.3 2.3 lineto
      0 1.8 lineto
      0 2.5 lineto
      stroke
      closepath
      newpath
      -.05 3.1 moveto
      1.325 3.6 lineto
      1.325 2.9 lineto
      -.05 2.4 lineto
      -.05 3.1 lineto
      fill
      closepath
      newpath
      0 3.7 moveto
      1.3 4.2 lineto
      1.3 3.5 lineto
      0 3 lineto
      0 3.7 lineto
      stroke
      closepath
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

parallelogramAccBig =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 4.25 moveto
      1.3125 4.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      stroke
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

parallelogramAccBigFill =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.2 setlinewidth
      0 4.25 moveto
      1.3125 4.75 lineto
      1.3125 -.25 lineto
      0 -0.75 lineto
      closepath
      fill
     grestore" )
   (cons 0 1.3125)
   (cons -.75 .75))

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

glissParallOne =
#(ly:make-stencil (list 'embedded-ps
                    "gsave
      currentpoint translate
      newpath
      0.1 setlinewidth
      0 0 moveto
      -16.5 -20.2 lineto
      -16 -20.75 lineto
      0 -1.3 lineto
      stroke
      closepath
      newpath
      0.1 1 moveto
      -17 -19.7 lineto
      -16.51 -20.3 lineto
      0 -0.3 lineto
      fill
      closepath
     grestore" )
   (cons 0 1.3125)
   (cons 2 -2.5))

glissNoteHeadsOne = \override NoteHead.stencil = \glissParallOne

glissNoteHeads = \override NoteHead.stencil = \glissParall
myNoteHeads = \override NoteHead.stencil = \parallelogram
myFillNoteHeads = \override NoteHead.stencil = \parallelogramFill
myBigNoteHeads = \override NoteHead.stencil = \parallelogramBig
myBigFillNoteHeads = \override NoteHead.stencil = \parallelogramBigFill
myBigZebraNoteHeads = \override NoteHead.stencil = \parallelogramZebraBig
myBigAccNoteHeads = \override NoteHead.stencil = \parallelogramAccBig
myBigAccNoteHeadsFill = \override NoteHead.stencil = \parallelogramAccBigFill
normalNoteHeads = \revert NoteHead.stencil