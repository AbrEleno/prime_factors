# El Teorema fundamental de la aritmética afirma que todo entero positivo se puede representar de forma única como producto de factores primos.
# Deberás crear un método que reciba un integer y devuelva un array con la combinación de números primos que lo componen. 

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

# Resuelto
def prime_factors(num, array)
	fact = []
	array.each do |prims|
		while num % prims == 0
			num /= prims
			fact << prims
		end
	end
	fact	
end

p prime_factors(864, primes) #=> [2, 2, 2, 2, 2, 3, 3, 3]
p prime_factors(72, primes) #=> [2, 2, 2, 3, 3]
p prime_factors(6936, primes) #=> [2, 2, 2, 3, 17, 17]
p prime_factors(1200, primes) #=> [2, 2, 2, 2, 3, 5, 5]
p prime_factors(4, primes) #=> [2, 2]
p prime_factors(9, primes) #=> [3, 3]
p prime_factors(12, primes) #=> [2, 2, 3]
p prime_factors(34, primes) #=> [2, 17]
p prime_factors(1001, primes) #=> [7, 11, 13]
p prime_factors(1000, primes) #=> [2, 2, 2, 5, 5, 5]