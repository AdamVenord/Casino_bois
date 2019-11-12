require "colorize"


class Dice
def initialize


	puts"			     __                     ".colorize(:green)
	puts"			  __| (_) ___ ___          ".colorize(:green)
	puts"			/ _`| | |/ __/ _ |         ".colorize(:green)
	puts"			| (_| | || (_| /_           ".colorize(:green)
	puts"			|___|_| ||___|___|         ".colorize(:green)

puts 'Lets see how you Roll'.colorize(:red)
puts 'win by guessing your total from rolling 2 dice'.colorize(:red)
puts 'Good Luck'.colorize(:green)
chips = 100
while chips > 0
	
    puts 'Put Your Money Where Your Mouth is you have'.colorize(:red) + chips.to_s + ' chips left Bruh!'.colorize(:green)
    puts'enter amount to bet! Or type "exit" to leave.'.colorize(:red)
 
	bet = gets.chomp
	

    

while true
		if (chips.to_i - bet.to_i) < 0
            puts 'You Do Not Have Enough Chips Bruh'.colorize(:red)
			bet = gets.chomp
			Cmenu.new.initialize
	

		end
		break
	end
	
	
	if bet.to_i > 1
		puts bet.to_s + '?!Baller!!'.colorize(:green)
		puts 'Guess Your Roll'.colorize(:red)
	elsif
		puts bet.to_s + 'Broke ass'.colorize(:red)
		puts 'Guess Your Roll'.colorize(:green)
	else 'exit'
			puts 'goodbye'
			
	end
	total = gets.chomp
	dice_total = ((1 + rand(6))+(1 + rand(6)))
    print 'You Rolled '.colorize(:green) + dice_total.to_s + '!' .colorize(:yellow)
    

	if dice_total.to_i == total.to_i
		chips = chips.to_i + bet.to_i
		puts 'Nice Job You Win!'.colorize(:green)
    else
        
		chips = chips.to_i - bet.to_i
		puts 'You Lose!!!' .colorize(:red)
		puts 'My Money now'.colorize(:red)
		
	end

end
end
end

puts "SORRY YOU ARE BROKE!!!"


Dice.new.initialize

