# def corgi_golden_age(arr)
# 	start_idx = 0
# 	end_idx = 0
# 	greatest_pop = 0
# 	arr.each_with_index do |pop, idx|
# 		temp_sum = 0
# 		for i in idx...arr.length
# 			temp_sum += arr[i]
# 			if temp_sum > greatest_pop
# 				greatest_pop = temp_sum
# 				start_idx = idx
# 				end_idx = i
# 			end
# 		end
# 	end
# 	puts "[#{start_idx}, #{end_idx}]"
# end

# corgi_golden_age([100, -101, 200, -3, 1000])

# def combine_arrays(firstArr, secondArr)
# 	new_arr = []
# 	firstArr.each do |i|
# 		new_arr.push(i)
# 	end
# 	secondArr.each do |i|
# 		new_arr.push(i)
# 	end
# 	sorted = false
# 	while sorted == false
# 		sorted = true
# 		(new_arr.length-1).times do |i|
# 			if new_arr[i] > new_arr[i+1]
# 				new_arr[i], new_arr[i+1] = new_arr[i+1], new_arr[i]
# 				sorted = false
# 			end
# 		end
# 	end
# 	print new_arr
# end

# combine_arrays([1, 3, 5], [2, 4, 6])

# Attempt this after you have the other two problems working.

# Write a method that, given an array of unique items, finds all the subsets of items:

# subsets(["a", "b", "c"]) == [
#   [], # note that the empty set counts!
#   ["a"], ["a", "b"], ["a", "b", "c"], ["a", "c"]
#   ["b"], ["b", "c"],
#   ["c"]
# ]

# def subsets(arr)
# 	raw_arr = [[]]
# 	arr.length.times do |i|
# 		arr.combination(arr.length-i).to_a.each do |arr|
# 			raw_arr.push(arr)
# 		end
# 	end
# 	final = raw_arr.sort
# 	print final
# end

# subsets(["a", "b", "c"])

# def LetterChanges(str)
#   i = 0
#   str.each_char do |char|
#     str[i] = char.next! if char =~ /[A-Za-z]/
#    	str[i] = char.upcase if char =~ /[aeiou]/
#     i += 1
#   end
#   # code goes here
#   return str         
# end

# LetterChanges("fun times!")

# def LongestWord(sen)
# 	temp_long = 0
# 	longest_word = ""
# 	split_sen = sen.split(' ')
# 	# code goes here
# 	split_sen.each do |word|
# 	  	word.gsub!(/[^A-Za-z0-9]/, '')
# 	  	if word.length > temp_long
# 	  		temp_long = word.length
# 	  		longest_word = word
# 	  	end
#   	end
#   	puts longest_word
# end

# LongestWord("I love dogs$@")

# def SimpleAdding(num)
#   sum = (1..num).inject(:+)
#   # code goes here
#   puts sum
         
# end

# SimpleAdding(12)

# def SimpleSymbols(str)
#   	i = 0
#   	formatted = true
#   	str.each_char do |char|
#     	if char =~ /[A-Za-z]/
#       		formatted = false unless str[i-1] == "+" && str[i+1] == "+"
#     	end
#     	i += 1
#   	end
#   # code goes here
#   	puts formatted     
# end

# SimpleSymbols("+z=z+==+a+")

# def ABCheck(str)
#   str.match(/a...b/)
#   # code goes here   
# end

# ABCheck("Laura sobs")  

# def ArithGeo(arr)
# 	diff = arr[1] - arr[0]
# 	ratio = arr[1] / arr[0]
# 	arith = true
# 	geo = true
# 	(arr.length-1).times do |i|
# 		if arr[i]+diff != arr[i+1]
# 			arith = false
# 		end
# 		if arr[i]*ratio != arr[i+1]
# 			geo = false
# 		end
# 	end
# 	if geo == false && arith == false
# 		puts "-1"
# 	elsif geo == false
# 		puts "Arithmetic"
# 	else
# 		puts "Geometric"
# 	end
#   # code goes here         
# end

# # ArithGeo([5,10,15]) 

# def ArrayAdditionI(arr)
# 	can_be_added = false
# 	greatest_num = arr.max
# 	arr.delete(greatest_num)

# 	arr.length.times do |i|
# 		arr.combination(arr.length-i) do |combinations|
# 			sum = combinations.each.inject(:+)
# 			puts sum
# 			if sum == greatest_num
# 				can_be_added = true
# 			end
# 		end
# 	end
# 	puts can_be_added
# 	# code goes here
# # end

# ArrayAdditionI([3,5,-1,8,12])

# def LetterCountI(str)
# 	greatest_diff = 0
# 	greatest_word = ""
# 	str.split.each do |word|
# 		word.split('').uniq
# 		temp_diff = word.length - word.split('').uniq.length
# 		if temp_diff > greatest_diff
# 			greatest_diff = temp_diff
# 			greatest_word = word
# 		end
# 	end
#   # code goes here
#   	if greatest_word == ""
#   		puts "-1"
#   	else
#   		puts greatest_word
#   	end
# end

# LetterCountI("no wordfd")

# def SecondGreatLow(arr)
# 	print arr
# 	arr.sort!.uniq!
# 	if arr.length == 1
# 		"#{arr[0]} #{arr[0]}"
# 	else
# 		"#{arr[1]} #{arr[-2]}"
# 	end
# 	# code goes here     
# end

# SecondGreatLow([2,2,2,5,5,5,6])

# def DivisionStringified(num1,num2)
# 	num2 *= 1.0
# 	quotient = (num1/num2).round.to_i
# 	s = quotient.to_s
# 	if quotient >= 1000
# 		s = s.reverse.scan(/.{3}|.+/).join(",").reverse
# 	end
# 	# code goes here
# 	puts s
# end

# # DivisionStringified(8,8)
# def time_str_converted(dict)
# 	dict.each do |k,v|
# 		hours_minutes = k.split(':')
# 		hours = hours_minutes[0].to_i
# 		minutes = hours_minutes[1].to_i
# 		if hours == 12
# 			hours = 0
# 			puts hours
# 			if v == "am"
# 				final_time = (hours * 60) + minutes
# 			else
# 				hours += 12
# 				final_time = (hours * 60) + minutes
# 			end
# 		end
# 	end
# end
# def CountingMinutesI(str)
# 	b = str.split('-')
# 	time_store = {}
# 	b.each do |time|
# 		raw_time = time.scan(/[\d+:\d+]/).join
# 		am_pm = time.scan(/[ap]m/).join
# 		time_store[raw_time] = am_pm
# 	end
# 	time_str_converted(time_store)
# 		# if v = "am"
# 		# 	converted_time = 
# 	# code goes here
# end

# CountingMinutesI("12:30pm-12:00am")
# CountingMinutesI("1:23am-1:08am")

# def MeanMode(arr)
# 	count = Hash.new(0)
# 	mean = arr.each.inject(:+)/arr.length
# 	arr.each do |i|
# 		count[i] += 1
# 	end
# 	final = count.sort_by { |k, v| v }
# 	mode = final.last[0]
# 	mode == mean ? 1 : 0
# end


# def DashInsert(num)
# 	num_str = num.to_s
# 	num_arr = num_str.split('')
# 	num_final = num_arr
# 	num_arr.each_with_index do |char, i|
# 		if char.to_i % 2 == 1 && num_arr[i+1].to_i % 2 == 1
# 			num_final.insert(i+1, "-")
# 		end
# 	end
# 	# code goes here
# 	return num_final.join('')         
# end

# DashInsert(99946)

# def SwapCase(str)
# 	i = 0
# 	str.each_char do |char|
# 		if char.upcase == char
# 			str[i] = char.downcase
# 		else
# 			str[i] = char.upcase
# 		end
# 		i += 1
# 	end
# 	# code goes here
# 	return str 
# end

# def SwapCase(str)
# 	return str.swapcase
# end

# def NumberAddition(str)
# 	str.scan(/\d+/).collect { |char| char.to_i }.inject(:+)
# 	# code goes here
# end

# NumberAddition("1 2 3 4 k10")

# def PrimeTime(num)
# 	sqrt = Math.sqrt(num).ceil
# 	for i in 2..sqrt
# 		if num % i == 0 	&& num != 2
# 			return false
# 		end
# 	end
# 	return true
# end

# PrimeTime(6756758)

# def RunLength(str)
# 	count = Hash.new(0)
# 	final_string = ""
# 	str.each_char do |char|
# 		count[char] += 1
# 	end
# 	count.each do |k,v|
# 		final_string += "#{v}#{k}"
# 	end
# 	# code goes here
# 	puts final_string
# end

# RunLength("code")

# def PrimeMover(num)
# 	num_check = 3
# 	prime_store = [2]
# 	while prime_store.length != num
# 		is_prime = true
# 		for i in 2..Math.sqrt(num_check).ceil do
# 			if num_check % i == 0 && num_check != 2
# 				is_prime = false
# 			end
# 		end
# 		if is_prime
# 			prime_store.push(num_check)
# 		end
# 		num_check += 2
# 	end
# 	puts prime_store.last
# end

# PrimeMover(400)

# def PalindromeTwo(str)
# 	str.gsub(/\W/, '').downcase == str.gsub(/\W/, '').downcase.reverse
# end

# def GreatestCommonFactor(num1, num2)
# 	if num1 < num2 
# 		lesser_num = num1
# 		greater_num = num2
# 	else 
# 		lesser_num = num2
# 		greater_num = num1
# 	end
# 	sqrt1 = Math.sqrt(lesser_num).ceil
# 	num_factors = [1,lesser_num]

# 	(2..sqrt1).each do |i|
# 		if lesser_num % i == 0
# 			num_factors.push(i, lesser_num/i)
# 		end
# 	end
# 	while greater_num % num_factors.max != 0
# 		num_factors.delete(num_factors.max)
# 	end
# 	puts num_factors.max
# end

# # GreatestCommonFactor(100,24)

# def StringScramble(str1,str2)
#   string_scramble = true
#   letters_only = str1.scan(/[A-Za-z]/).join
#   str2_count = Hash.new(0)
#   str1_count = Hash.new(0)
#   str2.each_char do |char|
#     str2_count[char] += 1
#   end
#   str1.each_char do |char|
#     str1_count[char] += 1
#   end
  
#   str2_count.each do |k, v|
#     if str1_count[k] < v
#       string_scramble = false
#     end
#   end
#   # code goes here
#   string_scramble
         
# end

def doors100(num)
	increment = 1
	doors = Hash.new(true)
	num.times do |i|
		doors[i] = true
	end
	num.times do
		(increment..num).step(increment) do |i|
			if doors[increment] == false
				doors[increment] = true
			else
				doors[increment] = false
			end
		end
		increment += 1
	end
	print doors
end

doors100(100)