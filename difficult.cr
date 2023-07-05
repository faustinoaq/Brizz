# Difficult
PP = ->(n : Int32){
  c = true
  2.upto(n**0.5) { |k|
    c = false if n % k == 0
  }
  c
}

1.upto(100) { |i|
  j = {
    "Fizz": i % 3 == 0,
    "Buzz": i % 5 == 0,
    "Rizz": i % 7 == 0,
    "Jazz": i % 11 == 0,
    "Dizz": 120 % i == 0,
    "Prizz": -> {
      return false unless PP.call(i)
      r = false
      (i+1).upto(100) { |i|
        break if i % 7 == 0 || i % 11 == 0
        r = true if PP.call(i)
      }
      r ? false : true
    }.call
  }
  j.each { |k, v|
    print k if v
  }
  pP = j.values
  pP.any? ? puts : puts i
}
