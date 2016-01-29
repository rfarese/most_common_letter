# Given a sentence, find the most common letter used
require "pry"

letter_array = []

# sentence = "This is a sentence that is basically a run on and I will be at work tomorrow morning and probably be tired because I was up too late coding these challenges!"

sentence = "AAAAAAAAAAAAA b c def ggg"

# create an array with each word having its own index (use split method)
word_arry = sentence.split(" ")

# split up each word to have each letter be its own value in a new array; example...turn "bob" into "b", "o", "b"
word_arry.each do |word|
  individaul_letter_array = word.split("")
  letter_array = letter_array + individaul_letter_array
end

# make sure each letter is lowercase!
letter_array_downcase = []
letter_array_size = 0

while letter_array_size < letter_array.size
  letter_array_downcase << letter_array[letter_array_size].downcase
  letter_array_size += 1
end

# create an array of the entire alphabet called alpha_array
alpha_array = ("a".."z").to_a

# use the alphabet array to iterate through the letter_array and find how many times each letter occurs
  #store the values in the counted_letters array
alpha_array_index = 0
counted_letters = []

while alpha_array_index < 26 do
  individual_counted_letters = letter_array_downcase.count(alpha_array[alpha_array_index])
  counted_letters.push(individual_counted_letters)
  alpha_array_index += 1
end

# find the highest value item in the counted_letters array and what index that value is at
highest_value = -1
highest_value_index = -1

counted_letters.each_with_index do |value, index|
  if value > highest_value
    highest_value = value
    highest_value_index = index
  end
end

# use that index value against the alpha_array to find the most common letter
puts "The most common letter in our sentence is '#{alpha_array[highest_value_index]}'"
