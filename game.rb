puts "あっち向いてホイを始めます"
puts "ジャンケン・・・"

class JankenAcchimuite
 def initialize (draw ="あいこ",lose ="負け",win ="勝ち")
   @draw = draw
   @lose = lose
   @win = win
 end
 
 def janken
  #実装する
  puts "[0]グー,[1]チョキ,[2]パー"
  player_hand = gets.to_i
  if player_hand < 0 || 2 < player_hand then
  puts "無効な値です"
  end
  program_hand = rand(3)

  jankens = ["グー","チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand 
   puts "#{@draw}"
   return true
  elsif  (player_hand == 0 && program_hand == 2 ) ||( player_hand == 1 && program_hand == 0 )||( player_hand == 2 && program_hand == 1)
   puts "#{@lose}"
   $janken_result = "lose"
   return false
  elsif  (player_hand == 0 && program_hand == 1 ) ||( player_hand == 1 && program_hand == 2 )||( player_hand == 2 && program_hand == 0)
   puts "#{@win}"
   $janken_result = "win"
   return false
  end
 end
 
 def acchimuite_hoi 
   puts "0(上)1(下)2(左)3(右)"
  player_direction = gets.to_i
  program_direction = rand(4)
  directions = ["上","下","左","右"]
   puts "あなた：#{directions[player_direction]} 相手：#{directions[program_direction]}"
  if player_direction < 0 || 4 < player_direction then
  puts "無効な値です"
  end
  
  if $janken_result == "lose" && player_direction == program_direction
   puts "#{@lose}"
    return false
  end
  if $janken_result == "win" && player_direction == program_direction
   puts "#{@win}"
    return false
  end
  if player_direction != program_direction
   puts "#{@draw}"
   return true
  end
 end
end
 
 
while 
 result1 = JankenAcchimuite.new("あいこ","あっち向いて","あっち向いて")
 next_game = true
  while next_game
   next_game = result1.janken
  end
 result2 = JankenAcchimuite.new("もう一度ジャンケンを行います","負けました","勝ちました")
  if $janken_result == "win" && result2.acchimuite_hoi == false
  break
  elsif $janken_result == "lose" && result2.acchimuite_hoi == false
  break
  else true
  end
end