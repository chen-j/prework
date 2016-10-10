1.upto(100) do |i|
result = ""
  if i % 3 == 0
    result << "Fizz"
  end
  if i % 5 == 0
    result << "Buzz"
  end
  if result.length == 0
    result = i.to_s
  end
  if result.start_with?("1")
    result = "Bang"
  end
  puts result
end
