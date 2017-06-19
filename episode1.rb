@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

thor_x = @initial_tx
thor_y = @initial_ty

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    
    
    
    if thor_x == 40 or thor_x < 0
        x = 0
        else
        if thor_x > @light_x
            x = "W"
            elsif @light_x > thor_x
            x = "E"
            else
            x = 0
        end
    end
    
    if thor_y > 17 or thor_y < 0
        y = 0
        else
        if thor_y > @light_y
            y = "N"
            elsif @light_y > thor_y
            y = "S"
            else
            y = 0
        end
    end
    
    if x == 0 && y != 0
        new_dir = y
        elsif x != 0 && y == 0
        new_dir = x
        else
        new_dir = y + x
    end
    
    if new_dir == "N"
        thor_y -= 1
        elsif new_dir == "NE"
        thor_y -= 1
        thor_x += 1
        elsif new_dir == "E"
        thor_x += 1
        elsif new_dir == "SE"
        thor_x += 1
        thor_y += 1
        elsif new_dir == "S"
        thor_y += 1
        elsif new_dir == "SW"
        thor_y += 1
        thor_x -= 1
        elsif new_dir == "W"
        thor_x -= 1
        elsif new_dir == "NW"
        thor_x -= 1
        thor_y -= 1
    end
    
    STDERR.puts thor_y
    STDERR.puts thor_x
    
    # A single line providing the move to be made: N NE E SE S SW W or NW
    puts new_dir
    
end
