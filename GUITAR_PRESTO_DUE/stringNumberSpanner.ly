stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \override TextSpanner.style = #'dashed-line
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
   #})
