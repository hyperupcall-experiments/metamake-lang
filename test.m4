define(S, s)dnl
S
	dnl space after, no arguments
S() dnl 1 empty argument

dnl recall that macros are expended in arguments
define(O, v$1 )dnl
O(S)dnl
dnl In a macro text, it ends at the )!, so includes whitespace
define(O2, v$1)dnl
O2(S)dnl
define(O3, v$1 )dnl
O3(S)dnl


dnl NO MACRO EXPANSION
O(`S')
changequote([, ])dnl
O([S])

QUOTING THINGS
define(vS, [not what we want])dnl
O(S)
O([S])
O([[S]])
O([[B]])

dnl IN THE MANUL THIS IS DIFFERENT
dnl define(`active', `ACT, IVE')dnl
dnl define(`show', `$1 $1')dnl
dnl show(active)
dnl show(`active')
dnl show(``active'')

define(js, dadfadfsaddf)dnl
define(MY_LANG, [[js]])dnl
MY_LANG

# this is supposedly a comment
changecom()dnl
# `blah'
