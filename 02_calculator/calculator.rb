#write your code here
def add(first, second)
	first + second
end

def subtract(first, second)
	first - second
end

def sum(a)
	sum = 0
	a.inject(0){|sum,x| sum + x }
end

def multiply(*numbers)
  result = 1
  numbers.each { |n| result = result * n }
  result
end

def power(first, second)
	first ** second
end

def factorial(number)
	result = 1
	for num in 1..number
		result *= num
	end
	result
end