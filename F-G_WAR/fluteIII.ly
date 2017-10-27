\version "2.19.15"

\language "deutsch"

\include "scripts.ly"

W = \mordent
M = \prall
fluteExpMusic = \relative e'' {
  %\clef treble
  %\key e \major
  %\time 2/4
  r32 f'( e f) r e( dis e)
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h16([ e gis]} cis8-.) r32 his,( cis his)
  r cis( dis cis) \acciaccatura {\slashI fis16([ h, dis,]} a8-.) r32 c'( h c) r h( ais h)
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h,16([ a' dis]} gis8-.) r32 fisis,( gis fisis)
  r gis( ais gis) \acciaccatura {\slashI cis16([ fis, ais,]} e8-.)
  \override Beam.breakable = ##t
  r32 g'( fis g) r fis( eis fis) r16. gis32( a gis) r a([ b a)]
  r dis( e dis) r e([ f e)] r cis( c cis) r c([ h c)]
  r ais( h ais) r eis([ fis eis)] r cis( his cis)
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
  \acciaccatura {\slashIII e,16([ h']} gis'16-.)
  r32 h( cis h) r gis( fis gis) r a( h a) r dis,( cis dis)
  r gis( a gis) r e( dis e) r fis( gis fis) r h,( a h)
  r eis( fis eis) r e( dis e) \acciaccatura {\slashIII h16([ e gis]} cis16-.) r32 f,(
  e f) r fis([ g fis)] r h( cis h) r cis([ dis cis)] r b( a b) r a([
  gis a)] r fis( gis fis) r cis([ dis cis)] r a( gis a)
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
  \acciaccatura {\slashIII fisis16([ cis']} a'16-.)
  r32 cis( h cis) r e( fis e) r dis( cis dis) r fis( gis fis)
  r g( a g) r gis( ais gis) r a( h a) r fis( e fis)
  r g( a g) r e( d e) r fis(gis fis) r dis( cis dis)
  r e( fis e) r c( b c) r d( e d) r b( gis b)
  r c( d c) r a( g a) r f'( g f) r es( d es)
  r d( c d) r b( a b) r f( g f) r b( a b)
  r g( f g) r c( d c) r f( g f)
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) Slur
  \acciaccatura {\slashIII fis,16([ c' dis]} h'?16-.) r32 f([
  g f)] r dis( cis dis) r d([ c d)] r cis( h cis) r c([ b c)]
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) Slur
  \acciaccatura {\slashIII dis,16([ h']} gis'16-.)
  r32 dis( f dis) r h( a h) r b( gis b) r a( g a) r gis( fis gis)
  \shape #'((0 . 0) (0 . -1) (1 . -1) (1 . -1.5)) Slur
  \acciaccatura {\slashIII h,16([ gis']} dis'16-.)
  r32 h( cis h) r gis([ fis gis)] r g( f g) r fis([ e fis)] r f( dis f)
  \shape #'((0 . 0) (0 . -1) (1 . -1) (1 . -1.5)) Slur
  \acciaccatura {\slashIII b,16([ f']} cis'16-.)
}
fluteExp = \relative e'' {
  %\clef treble
  %\key e \major
  %\time 2/4
  r16[ f'\W r e\W]
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h16([ e gis]} cis8-.)[
  r16 his,\M] r cis\M \acciaccatura {\slashI fis16([ h, dis,]} a8-.)
  r16[ c'\W r
  \once\override TextScript.script-priority = #-100
  h\W^\markup { \teeny \sharp }]
  \shape #'((0 . 0) (0 . -0.3) (0.5 . -0.2) (1 . 0)) Slur
  \acciaccatura {\slashIII h,16([ a' dis]} gis8-.)[
  r16 fisis,\M] r gis\M^\markup { \teeny \sharp }
  \acciaccatura {\slashI cis16([ fis, ais,]} e8-.)
  r16[ g'\W r
  \once\override TextScript.script-priority = #-100
  fis\W^\markup { \teeny \sharp }]
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  r16.[ gis32\M~gis r16 a32\M^\markup{\teeny\flat}~]
  a[ r16 dis32\M~dis r16 e32\M^\markup{\teeny\natural}~]e[ r16
  \once\override TextScript.script-priority = #-100
  cis32\W^\markup{\teeny\sharp}~cis r16 c32\W~]c[ r16 ais32\M~ais r16 eis32\M~]eis[ r16
  \once\override TextScript.script-priority = #-100
  cis32\W^\markup{\teeny\sharp}~cis r]
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
  \acciaccatura {\slashIII e,16([ h']} gis'16-.)
  \set subdivideBeams = ##f
  r[ h\M r gis\W] r[ a\M r dis,\W] r[ gis\M r e\W] r[ fis\M r h,\W]
  r[ eis\M r e\W]
  \set subdivideBeams = ##t
  \acciaccatura {\slashIII h16([ e gis]} cis16-.)[ r32 f,32\W~f r16
  fis32\M^\markup{\teeny\natural}~]fis[ r16 h32\M~h r16 cis32\M~]cis[ r16 b32\W~b r16 a32\W~]
  a[ r16 fis32\M~fis r16 cis32\M~]cis[ r16 a32\W~a r]
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
  \acciaccatura {\slashIII fisis16([ cis']} a'16-.)
  \set subdivideBeams = ##f
  r[ cis\W r e\M] r[ dis\W r fis\M] r[ g\M r
  gis\M^\markup{\teeny\sharp}] r[ a\M r fis\W] r[ g\M r
  \once\override TextScript.script-priority = #-100
  e\W^\markup{\teeny\natural}] r[ fis\M^\markup{\teeny\sharp} r dis\W]
  r[ e\M r
  \once\override TextScript.script-priority = #-100
  c\W^\markup{\teeny\flat}] r[ d\M r ais\W] r[ c\M^\markup{\teeny\natural} r
  \once\override TextScript.script-priority = #-100
  a\W^\markup{\teeny\natural}] r[ f'\M^\markup{\teeny\natural} r
  \once\override TextScript.script-priority = #-100
  es\W^\markup{\teeny\natural}] r[
  \once\override TextScript.script-priority = #-100
  d\W^\markup{\teeny\natural} r b\W] r[ f\M^\markup{\teeny\natural} r b\W] r[
  \once\override TextScript.script-priority = #-100
  g\W^\markup{\teeny\natural} r c\M^\markup{\teeny\natural}]
  \set subdivideBeams = ##t
  r[ f\M^\markup{\teeny\natural}
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) Slur
  \acciaccatura {\slashIII fis,16([ c' dis]} h'?16-.) r32 f\M^\markup{\teeny\natural}~]
  f[ r16 dis32\W~dis r16
  \once\override TextScript.script-priority = #-100
  d32\W^\markup{\teeny\natural}~]d[ r16 cis32\W~cis r16
  \once\override TextScript.script-priority = #-100
  c32\W^\markup{\teeny\flat}~]c[ r
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) Slur
  \acciaccatura {\slashIII dis,16([ h']} gis'16-.) r dis\M^\markup{\teeny\sharp}]
  \set subdivideBeams = ##f
  r[ h\W r ais\W] r[
  \once\override TextScript.script-priority = #-100
  a\W^\markup{\teeny\natural} r gis\W]
  \shape #'((0 . 0) (0 . -1) (1 . -1) (1 . -1.5)) Slur
  \set subdivideBeams = ##t
  \acciaccatura {\slashIII h,16([ gis']} dis'16-.)[ r32 h\M~h r16 gis32\W~]
  gis[ r16
  \once\override TextScript.script-priority = #-100
  g32\W^\markup{\teeny\natural}~g r16 fis32\W~]fis[ r16
  \once\override TextScript.script-priority = #-100
  f32\W^\markup{\teeny\flat}~f r]
  \shape #'((0 . 0) (0 . -1) (1 . -1) (1 . -1.5)) Slur
  \acciaccatura {\slashIII b,16([ f']} cis'16-.)
  \set subdivideBeams = ##f
}