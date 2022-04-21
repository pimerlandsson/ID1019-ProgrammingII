defmodule Test do

	#compute the double of a number.
	
	def double(n) do
	n = n * 2
	end

	
	#converts fahreheit to celsius

	def f_to_c(n) do
	(n - 32) / 1.8
	end


	#calculates the area of a rectangle

	def areaOfRectangle(m, n) do
	(m * n) / 2
	end


	#calculates the area of a square using prev function
	
	def areaOfSquare(m, n) do
	areaOfRectangle(m, n) * 2
	end


	#calculates the area of a circle given the radius
	def areaOfCircle(n) do
	n * n * 3.14
	end

	
	def product(m, n) do
	if m == 0 do
	0

	else
	product(m - 1, n) + n

	end
	end

	def product_case(m, n) do
	case m do
	0 -> 0
	_ -> product(m - 1, n) + n
	end
	end

	def product_cond(m, n) do
	cond do
	m == 0 -> 0
	true -> product(m - 1, n) + n

	end
	end

	def product_clauses(0, _) do 0 end
	def product_clauses(m, n) do
	 product_clauses(m - 1, n) + n
	end

	def exp(x, n) do
	case n do
	0 -> 1
	1 -> x
	_ -> product(x, x) *  exp(x, n - 2)
	end
	end

	def exp_fast(x, n) do
	cond do
	n == 0 -> 1
	n == 1 -> x
	rem(n, 2) == 0 -> exp_fast(x, div(n, 2)) * exp_fast(x, div(n, 2))
	rem(n, 2) == 1 -> exp_fast(x, n - 1) * x
	end
	end


	#4.1

	def nth(n, [h|t]) do
	case n do
	1 -> h
	_ -> nth(n - 1, t)
	end
	end

	def len([_|t]) do
	case t do
	[] -> 1
	_ -> len(t) + 1
	end 
	end

	def len([]) do
    		0
    	end	
end
