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
