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
        puts "Type 'park', 'retrieve', or 'list' or 'exit' to leave."
      end
      
      reason_for_visit = gets.chomp

      case reason_for_visit

      when "park"
        log()
        drive_in(@animal, @vehicle, @color, @decoration)

      when "retrieve"
        log()
        drive_out(@animal, @vehicle, @color, @decoration)
        
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
    float = @float.find {|float| float.to_s}
    @float.delete(float)
    puts "#{float.to_s} has left the parking area."
  end
  
  def log()
    puts "enter animal"
    @animal = gets.chomp
    puts "enter vehicle"
    @vehicle = gets.chomp
    puts "enter color"
    @color = gets.chomp
    puts "enter decoration"
    @decoration = gets.chomp
  end
  
  def options()
    if @float.empty?
      "No floats are parked here at the moment."
    else
      @float.each do |float|
        puts float.to_s
      end
    end
  end
end          
