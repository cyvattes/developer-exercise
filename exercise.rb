class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split(" ")
    arr.map! { |i|
      x = ""
      if i.length > 4
        x = i[-1] if (i[-1] == "." || i[-1] == "!" || i[-1] == "?")
        if i == i.capitalize
          i = "Marklar" + x
        else
          i = "marklar" + x
        end
      else
        i = i
      end
    }
    return arr.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a, b = 0, 1
    sum = 0
    nth.times do
      temp = a
      a = b
      b = temp + a
      sum += a if a.even?
    end
    return sum
  end

end
