#!/usr/bin/env ruby
# using indents
# deno-lint-ignore-file

def add(a, b)
	result = a + b
	return result
end

def string_concat(left, right)
	result = left + right
	return result
end

a = "Hello, "
b = "World!"
s = string_concat(a, b)
puts(s)
