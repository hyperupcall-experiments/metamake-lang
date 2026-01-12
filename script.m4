include(`compiler.m4')dnl
dnl -- PROGRAM CONTENT START ---
_shebang()
_comment_line([[using indents]])
_comment_line([[deno-lint-ignore-file]])

_function([[[[add]]]], [[[[a, b]]]], [[int]], [[dnl
_indent()_var([[[[result]]]], [[[[a + b]]]])
_indent()_return([[[[result]]]])]])

_function([[string_concat]], [[left, right]], [[str]], [[dnl
_indent()_var(result, [[left + right]])
_indent()_return(result)]])

_main([[dnl
_var([[[[a]]]], [[[["Hello, "]]]])
_var([[[[b]]]], [[[["World!"]]]])
_var([[[[s]]]], [[_call([[string_concat]], [[a, b]])]])
fn_print_stdout([[s]])]]dnl
)dnl
