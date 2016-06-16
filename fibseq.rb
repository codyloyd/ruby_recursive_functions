def fib(n)
	return 1 if n == 1
	return 2 if n == 2
	return fib(n-1) + fib(n-2)
end

puts fib 13