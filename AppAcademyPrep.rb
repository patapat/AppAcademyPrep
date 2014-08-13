#require "math"

# def rps_outcome(choice, response)
# 	if choice == response
# 		"Draw"
# 	elsif choice == "rock" && response == "paper"
# 		"Lose"
# 	else
# 		"Win"
# 	end
# end

def rps_convert(i)
	if i == 0
		"rock"
	elsif i == 1
		"paper"
	else
		"scissors"
	end
end

def rps(string)
	response = rand(3)
	final_response = rps_convert(response)
	format_string = string.downcase
	case format_string
	when "rock"
		if final_response == "paper"
			puts "#{final_response}, lose"
		elsif final_response == "scissors"
			puts "#{final_response}, win"
		else
			puts "#{final_response}, draw"
		end

	when "paper"
		if final_response == "scissors"
			puts "#{final_response}, lose"
		elsif final_response == "rock"
			puts "#{final_response}, win"
		else
			puts "#{final_response}, draw"
		end
	when "scissors"
		if final_response == "rock"
			puts "#{final_response}, lose"
		elsif final_response == "paper"
			puts "#{final_response}, win"
		else
			puts "#{final_response}, draw"
		end
	end
end

rps("rock")
	
