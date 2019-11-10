require "colorize"
 
class Rpsgame

  def initialize

    @rpsgamaru = [
      "We got rock".colorize(:red), 
      "we got scissors".colorize(:green),
      "we got paper".colorize(:yellow)
     ]
    menu

  end

  def menu
    puts " "
    puts "Wanna fight?"
    puts "1) Bees knees dog sauce"
    puts "2) Nah brah Im out, I like my scissors intact"
    choice = gets.to_i
    
    case choice
    when 1
      menu2
    when 2
      puts "Toodaloo"
      require_relative "casino.rb"
      Casino.Cmenu.initialize
    else
      puts " "
      puts "Can you run that by me again?"
      menu
    end
  end
  
  def menu2
    
    puts " "
  puts "kk lmao lets fight"
  puts "Choose your fighter"
  puts " 1) Rock "
  puts " 2) Paper "
  puts " 3) Scissors"
  choice2 = gets.to_i

    case choice2

    when 1
      puts "Rock..".colorize(:red)
        sleep(1)
      puts "Paper..".colorize(:yellow)
        sleep(1)
      puts "Scissors..".colorize(:green)
        sleep(1)
      puts "SHOOT!".colorize(:cyan)
      puts " "
      puts "You chose rock".colorize(:red)
      play_scizz
    when 2
      puts "Rock..".colorize(:red)
        sleep(1)
      puts "Paper..".colorize(:yellow)
        sleep(1)
      puts "Scissors..".colorize(:green)
        sleep(1)
        puts "SHOOT!".colorize(:cyan)
        puts " "
      puts "You chose paper".colorize(:yellow)
      play_scizz
    when 3
      puts "Rock..".colorize(:red)
        sleep(1)
      puts "Paper..".colorize(:yellow)
        sleep(1)
      puts "Scissors..".colorize(:green)
        sleep(1)
      puts "SHOOT!".colorize(:cyan)
      puts " "
      puts "You chose scissors".colorize(:green)
      play_scizz
    when 69
      puts "Nice"
        sleep(2)
      puts "Wait, no"
        sleep(2)
      puts "Thats not safe"
        sleep(2)
      puts "Thats a freAKING NUKE!!!"
        sleep(2)
      puts "NO NOOOO"
        sleep(2)
      puts "Alluh AKbar"
        sleep(2)
      puts "BOOOOOMMMM!!!!!!!"
        sleep(1)
      system 'clear'
      menu
    else 
      puts "Thats not one of them"
      menu2
    end
  end

  def play_scizz

    @random_answer = @rpsgamaru[rand(@rpsgamaru.length)]
    puts " "
    puts "\"" + @random_answer + "\""
    menu
  end

end

 Rpsgame.new.initialize
