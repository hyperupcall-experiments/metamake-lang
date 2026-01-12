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
