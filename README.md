# Brizz

Challenge - 010723

Language: Crystal Lang

Difficulty: Easy, Intermediate, and Difficult

### Note:

Live examples:

- [Easy](https://carc.in/#/r/feuv)
- [Intermediate](https://carc.in/#/r/feuu)
- [Difficult](https://www.guvi.in/ide?id=64a5fb385384b)

My code has big PP :laugh:

```crystal
PP = ->(n : Int32){
  c = true
  2.upto(n**0.5) { |k|
    c = false if n % k == 0
  }
  c
}
```
