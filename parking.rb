require_relative "float"

class Parking
  def initialize
    @float = []
  end
  
  def open
    puts "Welcome to Safari Float Parking!"

    loop do
      if @float.empty?
        puts "No floats parked. Would you like to 'park' a float or 'exit' to leave?"
      else
        puts "Type 'park', 'retrieve', 'list', or 'exit' to leave."
      end
      
      reason_for_visit = gets.chomp

      case reason_for_visit
      when "park"
        animal, vehicle, color, decoration = log()
        drive_in(animal, vehicle, color, decoration)
      when "retrieve"
        animal, vehicle, color, decoration = log()
        drive_out(animal, vehicle, color, decoration)
      when "list"
        options()
      when "exit"
        puts "See you next time at Safari Float Parking!"
        break
      else
        puts "It seems you may have made a typo. Try again."
      end
    end
  end

  private

  def drive_in(animal, vehicle, color, decoration)
    float = FloatV.new(animal, vehicle, color, decoration)
    @float.push(float)
    puts "#{float.to_s} has been parked."
  end
  
  def drive_out(animal, vehicle, color, decoration)
    float = @float.find do |float|
      float.animal == animal && float.vehicle == vehicle && float.color == color && float.decoration == decoration
    end
  
    if float
      @float.delete(float)
      puts "#{float.to_s} has left the parking area."
    else
      puts "No float matches the description features provided."
    end
  end
  
  def log
    puts "Enter animal:"
    animal = gets.chomp
    puts "Enter vehicle:"
    vehicle = gets.chomp
    puts "Enter color:"
    color = gets.chomp
    puts "Enter decoration:"
    decoration = gets.chomp
    return animal, vehicle, color, decoration
  end
  
  def options
    if @float.empty?
      puts "No floats are parked here at the moment."
    else
      @float.each do |float|
        puts float.to_s
      end
    end
  end
end
