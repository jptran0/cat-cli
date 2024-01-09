class Cat
  attr_accessor :name, :color

  def adopt
    puts "\n"
    puts "Meowdy! Welcome to the Ruby Cat Shelter!"
    puts "Congrats on your decision to adopting a new cat, what color cat are you adopting?"
    self.color = gets.chomp
    puts "What are you naming your #{self.color} cat?"
    self.name = gets.chomp.capitalize
    puts "\n"
    puts "Thank you for adopting #{self.to_s}! Please take good care of your new friend! 🐾"
    puts "Welcome home #{self.to_s}!"
    pet_care
  end

  def pet_care
    loop do
      puts "\n"
      puts "What would you like to do with #{self.name}?"
      puts "1. Feed #{self.name}"
      puts "2. Play with #{self.name}"
      puts "3. Pet #{self.name}"
      puts "4. Check #{self.name}'s condition"
      puts "5. Exit simulation"
      puts "Choose an option: "
      choice = gets.chomp.to_i
      case choice
      when 1
        feed
      when 2
        play
      when 3
        pet
      when 4
        condition
      when 5
        puts "Thank you for playing with #{self.name}, goodbye!"
        break
      else
        puts "#{self.name} is confused, try another option."
      end
    end
  end

  def feed
    reaction = [
      "looks satisfied!",
      "doesn't seem to want to eat it.",
      "ate a little bit of it.",
      "ignores the food bowl."
    ]

    puts "\n"
    puts "Maybe #{self.name} is hungry. What should we feed them?"
    puts "1. Dry cat food"
    puts "2. Wet cat food"
    puts "3. Nevermind, #{self.name} doesn't look hungry."
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "You feed #{self.name} some dry cat food."
      puts "#{self.name} #{reaction.sample}"
    when 2
      puts "\n"
      puts "You feed #{self.name} some wet cat food."
      puts "#{self.name} #{reaction.sample}"
    when 3
    end
  end

  def play
  end

  def pet
  end

  def condition
    mood = [
      "neutral",
      "sleepy",
      "hungry",
      "neutral",
      "bored",
      "playful",
      "like it wants attention"
    ]

    puts "\n"
    puts "You take a look at #{self.name}."
    puts "#{self.name} looks #{mood.sample}."
  end

  def to_s
    "#{@name} the #{@color} cat"
  end
end
