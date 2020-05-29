class Message
  def give_msg(msg)
    puts msg.to_s
  end

  def first_player(player)
    puts "#{player} has randomly been selected as the first player."
  end

  def move_msg_to(player)
    puts "#{player}, make your move"
  end

  def invalid_move_msg
    puts 'That\'s an invalid move.'
  end

  def win_msg(winner)
    puts "Congrats! #{winner}. You've won."
  end

  def draw_msg
    puts 'It\'s a DRAW.'
  end
end
