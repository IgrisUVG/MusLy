\version "2.18.0"
%% see http://lsr.di.unimi.it/LSR/Item?id=861
%% see also http://lilypond.org/doc/v2.18/Documentation/internals/notehead

% Offsets are entered as a series of numbers.
%   The value of 0 causes no offset-calculation to occur and places the note at the default side of the stem:
%     The left side for a stem pointing up and 
%     the right side for a stem pointing down.
%     (Per default, additional NoteHeads may have been placed on the opposite side of the stem to avoid collisions.)
%   Use 1 to shift a note head to the right.
%   Use -1 to shift a note head to the left.
%
% The amount of the offset is automatically determined based on 
%   the width of the notehead and the width of the stem.
%   (When there is a stem, a note head is offset by the width of the notehead 
%   minus half the width of the stem.  This will correctly align the note head 
%   with any others above or below it on the same side of the stem.)
%
% You can use larger or smaller values (like 1.1 or -0.9) 
%   to adjust the amount of the offset.
%
% In some cases offsetting a note head will cause the stem to no longer 
%   attach to it properly.  (The main (or only?) case where this is needed 
%   is when a note head that is at the end of a stem has been offset to the 
%   non-default side of the stem.)  To fix this, you can override the 'stem-attachment 
%   property.  The adjustStem function below makes this easier.  It takes a pair of 
%   numbers.  The first number adjusts the stem attachment on the X-axis (left or right) 
%   and the second number adjusts it on the Y-axis (up or down).  The first number 
%   indicates a multiple of the width of the stem that is added to the stem attachment 
%   position on the X-axis.  The second number is multiplied by the default position 
%   on the Y-axis to arrive at the new position on the Y-axis.  See examples below.  
%
% In a case where the parent note head of a Script is offset, the 
%   setOtherScriptParent function below can be used to select a different 
%   parent note head, in order to keep the Script in its original position.  See 
%   example below.
%
% Credit goes to David Nalesnik who is the original author of this solution, and
%   to Thomas Morley for significant enhancements. Contributed by Paul Morris.

#(define ((shift offsets) grob)
"Defines how NoteHeads should be moved according to the given list of offsets."
 (let* (
 ;; NoteHeads
        ;; Get the NoteHeads of the NoteColumn
        (note-heads (ly:grob-array->list (ly:grob-object grob 'note-heads)))
        ;; Get their durations
        (nh-duration-log 
          (map 
            (lambda (note-head-grobs)
              (ly:grob-property note-head-grobs 'duration-log))
            note-heads))
        ;; Get the stencils of the NoteHeads
        (nh-stencils 
          (map 
            (lambda (note-head-grobs)
              (ly:grob-property note-head-grobs 'stencil))
            note-heads))
        ;; Get their length in X-axis-direction
        (stencils-x-lengths 
          (map 
            (lambda (x) 
                (let* ((stencil (ly:grob-property x 'stencil))
                       (stencil-X-exts (ly:stencil-extent stencil X))
                       (stencil-lengths (interval-length stencil-X-exts)))
                stencil-lengths))
             note-heads))
 ;; Stem
        (stem (ly:grob-object grob 'stem))
        (stem-thick (ly:grob-property stem 'thickness 1.3))
        (stem-stil (ly:grob-property stem 'stencil))
        (stem-x-width (if (ly:stencil? stem-stil)
                         (interval-length (ly:stencil-extent stem-stil X))
                         ;; if no stem-stencil use 'thickness-property
                         (/ stem-thick 10)))
        (stem-dir (ly:grob-property stem 'direction))
        ;; Calculate a value to compensate the stem-extension
        (stem-x-corr 
          (map 
            (lambda (q)
               ;; TODO better coding if (<= log 0)
               (cond ((and (= q 0) (= stem-dir 1))
                      (* -1 (+ 2  (* -4 stem-x-width))))
                     ((and (< q 0) (= stem-dir 1))
                      (* -1 (+ 2  (* -1 stem-x-width))))
                     ((< q 0)
                      (* 2 stem-x-width))
                     (else (/ stem-x-width 2))))
             nh-duration-log)))
 ;; Final Calculation for moving the NoteHeads
   (for-each
     (lambda (nh nh-x-length off x-corr) 
         (if (= off 0)  
           #f 
           (ly:grob-translate-axis! nh (* off (- nh-x-length x-corr)) X)))
     note-heads stencils-x-lengths offsets stem-x-corr)))

displaceHeads =
#(define-music-function (parser location offsets) (list?)
"
 Moves the NoteHeads, using (shift offsets)
"
 #{
   \once \override NoteColumn.before-line-breaking = #(shift offsets)
 #})
 
adjustStem =
#(define-music-function (parser location val)(pair?)
"
 Adjust 'stem-attachment via 
 adding multiples of the stem-width to the x-default (car val)
 and multiplying the y-default with (cdr val).
"
#{
   \once \override NoteHead.before-line-breaking = 
   #(lambda (grob)
     (let* ((stem-at (ly:grob-property grob 'stem-attachment))
            (stem (ly:grob-object grob 'stem))
            (stem-x-width (interval-length (ly:grob-property stem 'X-extent))))
     (ly:grob-set-property! 
       grob
       'stem-attachment 
       (cons (+ (car stem-at) (* stem-x-width (car val))) (* (cdr val) (cdr stem-at))) 
       )))
#})
 
setOtherScriptParent =
#(define-music-function (parser location which-note-head)(integer?)
"
 If the parent-NoteHead of a Script is moved, another parent from the 
 NoteColumn could be chosen.
 The NoteHeads are numbered 1 2 3 ...
 not 0 1 2 ...
"
#{
        %% Let "staccato" be centered on NoteHead, if Stem 'direction is forced
        %% with \stemUp, \stemDown, \voiceOne, \voiceTwo etc
        \once \override Script.toward-stem-shift = #0
        
        \once \override Script.after-line-breaking =
          #(lambda (grob)
             (let* ((note-head (ly:grob-parent grob X))
                    (note-column (ly:grob-parent note-head X))
                    (note-heads-list 
                      (ly:grob-array->list 
                        (ly:grob-object note-column 'note-heads)))
                    (count-note-heads (length note-heads-list)))
             (if (> which-note-head count-note-heads)
               (ly:warning "Can't find specified note-head - ignoring")
               (set! (ly:grob-parent grob X)
                     (list-ref note-heads-list (- which-note-head 1))))))
#})