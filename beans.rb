require "colorize"

class Beans

  def initialize
    @beanschance = [1, 2, 3, 4, 5]
    @beantower = []
    @beancrash = []

    menu
  end

  def menu
    puts " "
    puts "Would you like to stack some beans"
    puts "1) Yes, let me at them beans"
    puts "2) How do I play"
    puts "3) I'm good, who stacks beans"
    choice = gets.to_i

    case choice

    when 1
      bean_stacking
    when 2
      view_them_beans
    when 3
      puts " "
      puts "Only the cool kids apperently"
      exit
    else 
      puts "Pardon moi?"
      menu
    end
  end

  def bean_stacking
    bean = rand(6)
    if bean <=4
      puts "      
        ████████                          
      ██▒▒▒▒▒▒▒▒▒▒██                      
    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                    
  ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒██                  
  ██▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒██                
  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████            
  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██        
  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    
  ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██  
    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
      ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
      ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
        ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
            ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██  
                ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    
                    ████████████████      
  "
      @beantower.push(1)
    bean_stacking
    else
      puts "Your bean stack crumbles and thats the end"
      @beantower = @beancrash
     menu
      
    end
  end

    # @random_answer = @beanschance[rand(@beanschance.length)]
    # puts " "
    # puts "\"" + @random_answer + "\""
     #menu
  

  
  def view_them_beans
    puts " "
    puts "The goal is to try and stack as many beans as you can"
    puts "Good luck".colorize(:cyan)
    sleep(3)
    menu
  end

end
Beans.new