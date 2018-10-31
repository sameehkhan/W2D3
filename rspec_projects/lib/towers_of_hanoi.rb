class TowersOfHanoi
  
  def initialize
    @arr = [[3,2,1],[],[]]
  end 
  
  def get_input 
    p "Choose a tower to move from"
    input = gets.to_i 
    p "Choose a tower to place the disk"
    input2 = gets.to_i
    return [input,input2]
  end 
  
  
  def valid_move?(input) # input = [0, 1]
    return false if @arr[input[0]].empty?
    return true if @arr[input[1]].empty?
    return false if @arr[input[0]][-1] > @arr[input[1]][-1]
    true  
  end 
  
  
  def display 
    p "Tower 1: #{@arr[0]}"
    p "Tower 2: #{@arr[1]}"
    p "Tower 3: #{@arr[2]}"
  end 
  
  def move(from_tower, to_tower) 
    @arr[to_tower] << @arr[from_tower].pop 
  end 
  
  
  def play 
    while !game_over?
      display
      prompt = get_input
      if valid_move?(prompt)
        move(prompt[0], prompt[1])
      else
        "That's an invalid move."
      end
    end 
    puts "Congrats, game over."
  end 
  
  def game_over?
    first = @arr[0].empty?
    second = @arr[1].empty? || @arr[2].empty?
    return first && second 
  end 
  
  
  
  
end


if __FILE__ == $PROGRAM_NAME 
  game = TowersOfHanoi.new
  game.play
end 
  
  