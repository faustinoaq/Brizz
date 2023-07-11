# Intermediate
1.upto(100) { |i|
  j = {
    "Fizz": i % 3 == 0,
    "Buzz": i % 5 == 0,
    "Rizz": i % 7 == 0,
    "Jazz": i % 11 == 0,
    "Dizz": 120 % i == 0
  }
  j.each { |k, v|
    print k if v
  }
  pP = j.values
  pP.any? ? puts : puts i
}
