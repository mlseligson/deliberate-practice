#! /usr/bin/env ruby

#################################################
# Problem 1

# define an array of integers (sum is 41)
numbers = [10, 23, 2, 5, 1]

# reduce array to the sum of each integer in array
sum1 = numbers.reduce() { |sum, number| sum + number }

# reduce with loop
sum2 = 0
numbers.each do |x|
    sum2 = sum2 + x
end

# 0 + 10 = 10
# 10 + 23 = 33
# 33 + 2 = 35
# 35 + 5 = 40

sum3 = 0
i = 0
while i < numbers.count
    sum3 = sum3 + numbers[i]
    puts i, sum3
    i = i + 1
end

puts "sum1 = " + sum1.to_s
puts "sum2 = " + sum2.to_s
puts "sum3 = " + sum3.to_s

#################################################
# Problem 2

strings = ["Algerian", "Prince", "What", "Do", "I", "Do?"]

empty_string = ""

sentence = strings.reduce() do
    |result, word|
    result + " " + word
end

longest_word = strings.reduce() do
    |longest, word|
    longest.length < word.length ? word : longest
end

puts sentence
puts longest_word

#################################################
# Problem 3

persons = [                                             # persons.length = 3
    { first_name: 'Norm', last_name: 'McDonald' },      # i = 0         persons[0]
    { first_name: 'Garrison', last_name: 'Harrison' },  # i = 1         persons[1]
    { first_name: 'Thomas', last_name: 'Banks' }        # i = 2         persons[2]
]

pp persons

i = 0
while (i < persons.length)
    puts "Hi, my name is " + persons[i][:first_name] + " " + persons[i][:last_name]
    i = i + 1
end

# pp persons[0]
# i = 0 + 1

# pp persons[1]
# i = 1 + 1

# pp persons[2]
# i = 2 + 1

# pp persons[3]
# i = 3 + 1