 require "colorize"
 
 class Coingame

  def initialize

    @coingamaru = ["You got Head".colorize(:red), "You got Tails".colorize(:red)]
    menu

  end

  def menu
    puts " "
    puts "Flip a coin if you dare"
    puts "1) Filp"
    puts "2) Nah brah Im out, too risky"
    choice = gets.to_i

    case choice
    when 1
      flip_coin
    when 2
      puts "Toodaloo"
      #require_relative "casino.rb"
      Cmenu.new.initialize
    else
      puts " "
      puts "Can you run that by me again?"
      menu
    end
  end

  def flip_coin

    @random_answer = @coingamaru[rand(@coingamaru.length)]
    puts " "
    puts "\"" + @random_answer + "\""
    menu
  end

end

 Coingame.new
