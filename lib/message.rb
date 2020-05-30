class Message
  def give_msg(msg)
    msg.to_s
  end

  def first_player(player)
    "#{player} has randomly been selected as the first player."
  end

  def move_msg_to(player)
    "#{player}, make your move"
  end

  def invalid_move_msg
    'That\'s an invalid move.'
  end

  def win_msg(winner)
    "Congrats! #{winner}. You've won."
  end

  def draw_msg
    'It\'s a DRAW.'
  end
end
