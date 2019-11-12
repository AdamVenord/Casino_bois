require "pry"
require "colorize"

$wallet = []
$Player = []
$Age = []
class Greeting
  def intial
    hi
  end
  def hi
    puts "WELCOME TO THE CASINO"
    puts "PUT NAME"
    player = gets.strip
    $Player.push(player)
    puts "Hello " + "#{player}"
    puts  "PUT AGE"
    age = gets.to_i
    if age >= 21 
      then 
      $Age.push(age)
      "Come on in"
      puts "HOW MANY CHIPS YOU WANT?"
      chips = gets.to_i
      $wallet.push(chips)
    else
      puts "UNDERAGE"
      exit
    end
        
  end
end

class Cmenu
  def initialize
    casinomenu
  end
  
  def casinomenu
    puts "PICK YOUR GAME"
    puts "1: RPS" 
    puts "2: DICE GAME"
    puts "3: BEANS"
    puts "4: Remaining Chips"
    puts "5: Exit"
    choice = gets.to_i
    
    if choice == 1
      require_relative "Rps.rb"
      Rpsgame.new
    elsif choice == 2
      require_relative "dice.rb"
        Dice.new
    elsif choice ==  3
      require_relative "Beans.rb"
      Beans.new
    elsif choice == 4
      chaching = $wallet.sum
      print "$".colorize(:green)
      puts  chaching
      casinomenu
    elsif choice == 5
      puts "Goodbye!"
      exit
    else
      puts "Invalid Choice"
    end
  end

  def
    game
  end
end

Greeting.new.intial
Cmenu.new.initialize

# git remote add origin https://github.com/AdamVenord/Casino_bois.git

# rails new blog_winter19 -d postgresql