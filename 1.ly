\version "2.19.15"

\language "deutsch"

#(define-markup-command (left-bracket layout props) ()
"Draw left hand bracket"
(let* ((th 0.2) ;; todo: take from GROB
	(width (* 2.5 th)) ;; todo: take from GROB
	(ext '(-2.8 . 2.8))) ;; todo: take line-count into account
	(ly:bracket Y ext th width)))

leftBracket = {
  \once\override BreathingSign.text = #(make-left-bracket-markup)
  \once\override BreathingSign.break-visibility = #end-of-line-invisible
  \once\override BreathingSign.Y-offset = ##f
  % Trick to print it after barlines and signatures:
  \once\override BreathingSign.break-align-symbol = #'custos
  \breathe 
}


#(define-markup-command (right-bracket layout props) ()
"Draw right hand bracket"
  (let* ((th .2);;todo: take from GROB
          (width (* 2.5 th)) ;; todo: take from GROB
          (ext '(-2.8 . 2.8))) ;; todo: take line-count into account
        (ly:bracket Y ext th (- width))))

rightBracket = {
  \once\override BreathingSign.text = #(make-right-bracket-markup)
  \once\override BreathingSign.Y-offset = ##f
  \breathe
}

\score {
  \relative {
    \omit Score.BarLine
    \omit Voice.Stem
    g' d es
    \leftBracket
    h' b fis d'
    \rightBracket
    s
    \leftBracket
    a as e! c'
    \rightBracket
    s
    \leftBracket
    b a! fis c'
    \rightBracket
  }
}