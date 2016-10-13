class Raindrops
  VERSION = 1

  PRIMES = {
    "Pling" => 3,
    "Plang" => 5,
    "Plong" => 7
  }

  def self.convert(num)

    result = PRIMES.inject('') do |word, prime_set|
      word << prime_set[0] if num % prime_set[1] == 0
      word
    end

    result = num.to_s if result.empty?
    result
  end

end

