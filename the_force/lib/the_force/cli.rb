class Cli

  def run
    puts "Hello and welcome to the the force API!"

    puts "Please hold while we explore the galaxy for planets..."
    API.get_planets
    puts "Thank you for your patience, we now have your information."
    print_main_menu
  end

  def print_main_menu
    puts "Press 1 to list out planets"
    puts "Type 'exit' to exit program"
    main_menu
  end

  def main_menu
    user_input = gets.strip

    if user_input == "1"
      print_planets
      print_main_menu
    elsif user_input == "exit"
      goodbye
      exit
    else
      invalid_input
      print_main_menu
    end
  end

  def print_planets
    puts ""
    puts "----------------"
    Planets.all.each.with_index(1) do |planet, index|
      puts ""
      puts "Planets #{index}."
      puts "Planets: #{planets.name}"
    end
  end

  def goodbye
    puts "Leaving the starwars universe. May the force be with you!"
  end

  def invalid_input
    puts "Invalid command, please try again!"
  end
end
