require "pry"
$wallet = []
$Player = []
$Age = []
class Greeting
  def intialize 
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

class Menu
  def intialize
    casinomenu
  end
  
  def casinomenu
    puts "PICK YOUR GAME"
    puts "PRESS 1: game 2: game 3: game 4: Remaining Chips 5: Exit "
    choice = gets.to_i
    
    if choice == 1
      game
    elsif choice == 2
      game
    elsif choice ==  3
      game
    elsif choice == 4
      chaching = $wallet.sum
      print "$"
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

Greeting.new.intialize
Menu.new.intialize

# git remote add origin https://github.com/AdamVenord/Casino_bois.git