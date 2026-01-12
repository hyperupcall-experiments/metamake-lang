changecom()dnl
changequote([[, ]])dnl
dnl
dnl
dnl
dnl
dnl
define([[VAR_LANGUAGE]], ARG_LANGUAGE)dnl
dnl
dnl
define([[_indent]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[	]],
		VAR_LANGUAGE, [[python]],     [[	]],
		VAR_LANGUAGE, [[ruby]],       [[	]],
		VAR_LANGUAGE, [[java]],       [[	]],
	))dnl
dnl
dnl
define([[[[str]]]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[[[string]]]],
		VAR_LANGUAGE, [[python]],     [[[[str]]]],
		VAR_LANGUAGE, [[ruby]],       [[[[string]]]],
		VAR_LANGUAGE, [[java]],       [[[[String]]]],
	))dnl
dnl
dnl
define([[[[int]]]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[[[number]]]],
		VAR_LANGUAGE, [[python]],     [[[[int]]]],
		VAR_LANGUAGE, [[ruby]],       [[[[int]]]],
		VAR_LANGUAGE, [[java]],       [[[[int]]]],
	))dnl
dnl
dnl
define([[_shebang]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[#!/usr/bin/env node]],
		VAR_LANGUAGE, [[python]],     [[#!/usr/bin/env python3]],
		VAR_LANGUAGE, [[ruby]],       [[#!/usr/bin/env ruby]],
		VAR_LANGUAGE, [[java]],       [[#!/usr/bin/env -S java --source 11]],
	))dnl
dnl
dnl
define([[_main]],
	ifelse(
		VAR_LANGUAGE, [[java]], [[dnl
class Program {
	$1
}]],
		[[$1]]
))dnl
dnl
dnl
define([[_comment_line]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[// $1]],
		VAR_LANGUAGE, [[python]],	   [[# $1]],
		VAR_LANGUAGE, [[ruby]],       [[# $1]],
		VAR_LANGUAGE, [[java]],       [[// $1]],
	))dnl
dnl
dnl
dnl -- DEFINE VARIABLE
define([[_var]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[let $1 = $2]],
		VAR_LANGUAGE, [[python]],     [[$1 = $2]],
		VAR_LANGUAGE, [[ruby]],       [[$1 = $2]],
		VAR_LANGUAGE, [[java]],       [[var $1 = $2]],
	))dnl
dnl
dnl
dnl -- DEFINE FUNCTION
define([[_function]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[dnl
/** @returns {$3} */
function $1($2) {
$4
}]],
		VAR_LANGUAGE, [[python]], [[dnl
def $1($2) -> $3:
$4]],
		VAR_LANGUAGE, [[ruby]], [[dnl
def $1($2)
$4
end]],
		VAR_LANGUAGE, [[java]], [[dnl
$3 $1($2) {
$4
}]]
	))dnl
dnl
dnl
define([[_call]], [[$1($2)]])dnl
define([[_return]], [[return $1]])dnl
dnl
dnl
define([[fn_print_stdout]],
	ifelse(
		VAR_LANGUAGE, [[javascript]], [[console.log($1)]],
		VAR_LANGUAGE, [[python]],     [[print($1)]],
		VAR_LANGUAGE, [[ruby]],       [[puts($1)]],
		VAR_LANGUAGE, [[java]],       [[System.out.println($1)]],
	))dnl
dnl
dnl
changecom(#)dnl
