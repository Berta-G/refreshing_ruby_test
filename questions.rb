def select_elements_starting_with_a(array)
	array.select {|element| element.start_with? 'a'}
end

def select_elements_starting_with_vowel(array)
	array.select {|element| element.chars.first.match(/[AEIOUaeiou]/)}
end

def remove_nils_from_array(array)
	array.compact
end

def remove_nils_and_false_from_array(array)
	array.select {|element| element}
end

def reverse_every_element_in_array(array)
	array.map {|element| element.reverse }
end

def every_possible_pairing_of_students(array)
	array.combination(2)
end

def all_elements_except_first_3(array)
	array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
	array.unshift element
end

def array_sort_by_last_letter_of_word(array)
	array.sort_by {|element| element[-1]}
end

def get_first_half_of_string(string)
	string.slice(0...(string.length/2.0).ceil)
end

def make_numbers_negative(num)
	-num.abs
end

def separate_array_into_even_and_odd_numbers(array)
	array.partition {|element| element.even? }
end

def number_of_elements_that_are_palindromes(array)
	array.select {|element| element == element.reverse}.count
end

def shortest_word_in_array(array)
	array.min_by {|element| element.length }
end

def longest_word_in_array(array)
	array.max_by {|element| element.length }
end

def total_of_array(array)
	array.inject(:+)
end

def double_array(array)
	array * 2
end

def turn_symbol_into_string(symbol)
	symbol.to_s
end

def average_of_array(array)
	(array.inject(:+).to_f/array.length).round
end

def get_elements_until_greater_than_five(array)
	array.take_while {|element| element <= 5 }
end

def convert_array_to_a_hash(array)
	Hash[*array]
end

def get_all_letters_in_array_of_words(array)
	array.map {|element| element.chars}.flatten.sort
end

def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

def add_together_keys_and_values(hash)
	hash.flatten.inject(:+)
end

def remove_capital_letters_from_string(string)
	string.chars.select {|letter| !letter.match(/[A-Z]/)}.join
end

def round_up_number(num)
	num.ceil
end

def round_down_number(num)
	num.floor
end

def format_date_nicely(date)
	date.strftime('%d/%m/%Y')
end

def get_domain_name_from_email_address(email)
	email.split("@").last.split(".").first
end

def titleize_a_string(string)
	small_words = ['a', 'and', 'the']
	string.gsub(/\w+/).with_index {|word, i| small_words.include?(word) && i > 0 ? word : word.capitalize}
end

def check_a_string_for_special_characters(string)
	string.match(/\W/)
end

def get_upper_limit_of(range)
	range.max
end

def is_a_3_dot_range?(range)
	range.to_s.include?('...')
end

def square_root_of(num)
	Math.sqrt(num)
end

def word_count_a_file(filename)
	File.open(filename, "r").read.split.count
end

def call_method_from_string(method)
	send method
end

require 'time'
def your_birthday_is_on_a_friday_in_the_year(date)
	  date += (60*60*24*365) until date.friday?
	  return date.year
end

def is_a_2014_bank_holiday?(date)
	bank_holidays_2014 = ['18/04', '21/04', '05/05', '26/05', '25/08', '25/12', '26/12']
	bank_holidays_2014.include? date.strftime('%d/%m')
end

def count_words_of_each_length_in_a_file(filename)
		hash = Hash.new
		hash.default_proc = proc { |hash, key| hash[key] = 0 }
		IO.read(filename).split(/\W+/).each { |word| hash[word.length] += 1 }
		return hash
end


def modless_fizzbuzz(n)
	return "FizzBuzz" if n / 15.0 == (n / 15.0).round
	return "Buzz" 		if n /  5.0 == (n /  5.0).round
	return "Fizz" 		if n /  3.0 == (n /  3.0).round
	return n
end

(1..100).each {|n| puts modless_fizzbuzz(n)} 

def bottles_of_beer(n)
		
		verse = "#{bottles_left(n).capitalize} #{bottle_s n} of beer on the wall, #{bottles_left n} #{bottle_s n} of beer."
		verse << (n == 0 ? "\nGo to the store and buy some more, " : "\nTake one down and pass it around, ")
		verse << "#{bottles_left n-1} #{bottle_s n-1} of beer on the wall.\n\n"

end

def bottle_s(n)
		n == 1 ? "bottle" : "bottles"
end

def bottles_left(n)
		n == 0 ? "no more" : n == -1 ? "99" : "#{n}" 
end

99.downto(0) {|n| puts bottles_of_beer(n)}

 


























