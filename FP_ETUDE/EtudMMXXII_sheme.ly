\version "2.19.15"

\language "deutsch"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
startParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
                                                (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
                                                  (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
                                                (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
                                                  (list point-stencil (cadr par-list))))
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
circleN =
\once \override NoteHead.stencil = #(lambda (grob)
    (let* ((note (ly:note-head::print grob))
           (combo-stencil (ly:stencil-add
               note
               (circle-stencil note 0.1 0.8))))
          (ly:make-stencil (ly:stencil-expr combo-stencil)
            (ly:stencil-extent note X)
            (ly:stencil-extent note Y))))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

samplePath =
  #'((lineto -1 1)
     (lineto 1 1)
     (lineto 1 -1)
     (curveto -5 -5 -5 5 -1 0)
     (closepath))

shemeMMXXII = \relative {
  \override Staff.TimeSignature.stencil = ##f
  \override Staff.Clef.stencil = ##f
  \override Stem.stencil = ##f
  \override Flag.stencil = ##f
  \cadenzaOn
  s4 a' b cis d es e s s s s h c f fis g gis
  \bar ""
  \break
  s a,^1_1 es'^5_2-\markup {
        \postscript #"1.2 6.5 moveto 0 0 2 4 9 4 11.5 0 rcurveto stroke"
      }
  cis^3_3 b^2_4 e^6_5-\markup {
        \postscript #"1.2 6.5 moveto 0 0 2 3 6 3 8 0 rcurveto stroke"
      }
  es^5_2 d^4_6 e^6_\markup {\circle \finger 5}
  s fis!_7 g_8 f_9 s h,_10 c_11 gis_12 s s s s s s s s s s
  \leftBracket
  <fis e'>_\markup \finger \column {\general-align #Y #-3 m \general-align #Y #-6 7}
  <gis! es'>_5 <c, d'>_2
  <fis e'>_\markup \finger \column {\general-align #Y #-3 m \general-align #Y #-6 7}
  \rightBracket
  \bar ""
  \break
  <<
    {
      es' as, c! f b, des c s
      \key as \major s \bar "||"
      es f c!
      \mark "As"
      \tweak #'duration-log #1 c des b
      <<
        {
          \override Stem.stencil = ##f
          \override Flag.stencil = ##f
          \override ParenthesesItem.font-size = #3
          \startParenthesis \parenthesize f' g e
          \mark "f"
          \tweak #'duration-log #1 e f
          \endParenthesis \parenthesize d
        }
        \\
        {
          \override Stem.stencil = ##f
          \override Flag.stencil = ##f
          d, \tweak #'duration-log #1 d f! es! b! f'
        }
      >>
    }
    \new Lyrics {
      s s s s s s s s s
      \lyricmode {
        \markup \fontsize #-3.5 \bold \smallCaps t
        \markup \finger 5
        \markup \finger \column {\general-align #Y #-3 m \general-align #Y #-6 2}
        \markup \finger 2
        \markup \finger 2
        \markup \fontsize #-3.5 \bold \smallCaps t
      }
    }
    \new Staff {
      \override Stem.stencil = ##f
      \override Flag.stencil = ##f
      es' f c^4 des b s s s s
      \bar "||"
      a_1 \circleN b!_4 cis_3 \circleN d_6 es!_2 \circleN e_5
      \override ParenthesesItem.font-size = #6
      \startParenthesis \parenthesize h_10_1
      \circleN c_11_4 f_9_3 \circleN fis_7_6 g_8_2
      \endParenthesis \circleN \parenthesize gis_12_5
    }
  >>
  s s
  \leftBracket
  <gis, e'>_\markup \finger \column {\general-align #Y #-3 m \general-align #Y #-6 6}
  <fis es'>_6 <c d'>_2
  <gis' e'>_\markup \finger \column {\general-align #Y #-3 m \general-align #Y #-6 6}
  \rightBracket
}