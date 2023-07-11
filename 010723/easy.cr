# Easy
1.upto(100) { |i|
  j = {
    "Fizz": i % 3 == 0,
    "Buzz": i % 5 == 0
  }
  j.each { |k, v|
    print k if v
  }
  pP = j.values
  pP.any? ? puts : puts i
}
