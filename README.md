# Language language

Language is a "language" for codegen-ing other languages. It's implemented with a bunch of _fun_ M4 macros! Don't believe me? Let's see:

```m4
include(`compiler.m4')dnl
dnl -- PROGRAM CONTENT START ---
_shebang()
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
```

It's surprisingly readable! Generating the output with `./language compile javascript:js` yields:

```js
#!/usr/bin/env node
// deno-lint-ignore-file

/** @returns {int} */
function add(a, b) {
	let result = a + b
	return result
}

/** @returns {str} */
function string_concat(left, right) {
	let result = left + right
	return result
}

let a = "Hello, "
let b = "World!"
let s = string_concat(a, b)
console.log(s)
```

For Python:

```py
#!/usr/bin/env python3
# using indents
# deno-lint-ignore-file

def add(a, b) -> int:
	result = a + b
	return result

def string_concat(left, right) -> str:
	result = left + right
	return result

a = "Hello, "
b = "World!"
s = string_concat(a, b)
print(s)
```

Currently, JavaScript, Python, and Ruby are supported.

### API

- `_shebang`
- `_main`
- `_comment_line`
- `_var`
- `_function`
- `_call`
- `_return`
- `_indent`
- `str`, `int`
- `fn_print_stdout`
