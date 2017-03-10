# Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

def is_prime?(n)
  if n <= 1
    return false
  else
    for x in 2...n
      if n % x == 0
        return false
      end
    end
    return true
  end
end

p is_prime?(2)
p is_prime?(7)
p is_prime?(6)
p is_prime?(13)
p is_prime?(26)
p is_prime?(17)
p is_prime?(701)
p is_prime?(997)
p is_prime?(1)
p is_prime?(0)
