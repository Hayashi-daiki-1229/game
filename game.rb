puts "あっち向いてホイを始めます"
puts "ジャンケン・・・"
def janken
  #実装する
puts "[0]グー,[1]チョキ,[2]パー"
player_hand = gets.to_i
program_hand = rand(3)

jankens = ["グー","チョキ","パー"]
puts "あなたの手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"
　
if player_hand == program_hand
 puts "あいこで"
 return true
elsif (player_hand == 0 && program_hand == 2 ) ||( player_hand == 1 && program_hand == 0 )||( player_hand == 2 && program_hand == 1)
  puts "あっち向いて"
  return false
else 
  puts "あっち向いて"
  return false
end
end

next_game = true

while next_game
  next_game = janken
end


def acchimuite_hoi
  #実装する
  puts "0(上)1(下)2(左)3(右)"
 player_direction = gets.to_i
 program_direction = rand(4)
 directions = ["上","下","左","右"]
  puts "あなた：#{directions[player_direction]} 相手：#{directions[program_direction]}"
end


f1 = janken   #f1には真/偽のいずれかが入る

#あっちむいてホイで二人が同じ方向を向くまで待つ
loop do
  f2 = acchimuite_hoi    #f2には真/偽のいずれかが入る
  break if f2            #二人が同じ方向を向いたらループを出る
end

if f1
　puts"あなたの勝ちです！おめでとう"
else
  #（プレーヤーの）負けの処理
  puts"あなたの負けです・・・残念"
end
