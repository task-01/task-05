puts "じゃんけん．．．"
while true
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  hand_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
  if hand_type == 0 
    hand_type2 = "#{rand(3)}" #0〜2までの数値
    puts "ホイ！"
    puts "---------------"
    puts "あなた：グーを出しました"
  elsif hand_type == 1
    hand_type2 = "#{rand(3)}" #0〜2までの数値
    puts "ホイ！"
    puts "---------------"
    puts "あなた：チョキを出しました"
  elsif hand_type == 2
    hand_type2 = "#{rand(3)}" #0〜2までの数値
    puts "ホイ！"
    puts "---------------"
    puts "あなた：パーを出しました"
  elsif hand_type == 3
    puts "戦いを終了します"
    break
  else
    puts "0〜３で入力してください"
    break
  end

  case hand_type2
  when "#{0}"
    puts "相手：グーを出しました"
    puts "---------------"
  when "#{1}"
    puts "相手：チョキを出しました"
    puts "---------------"
  when "#{2}"
    puts "相手：パーを出しました"
    puts "---------------"
  end 

  if hand_type == 0 && hand_type2 == "#{0}"|| hand_type == 1 && hand_type2 == "#{1}" || hand_type == 2 && hand_type2 == "#{2}"
    direction_type2 = "#{}"
    puts "あいこで。。。"
  elsif hand_type == 0 && hand_type2 == "#{1}" || hand_type == 0 && hand_type2 == "#{2}" 
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    direction_type = gets.to_i #あなたの方向
    direction_type2 = "#{rand(4)}" #0〜3までの数値
    if direction_type == 0 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：上"
    elsif direction_type == 1
      puts "ホイ！"
      puts "---------------"
      puts "あなた：下"
    elsif direction_type == 2 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：左"
    elsif direction_type == 3 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：右"
    end
  elsif hand_type == 1 && hand_type2 == "#{0}" || hand_type == 1 && hand_type2 == "#{2}"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    direction_type = gets.to_i #あなたの方向
    direction_type2 = "#{rand(4)}" #0〜3までの数値
    if direction_type == 0 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：上"
    elsif direction_type == 1
      puts "ホイ！"
      puts "---------------"
      puts "あなた：下"
    elsif direction_type == 2 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：左"
    elsif direction_type == 3 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：右"
    end
  elsif hand_type == 2 && hand_type2 == "#{0}" || hand_type == 2 && hand_type2 == "#{1}"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    direction_type = gets.to_i #あなたの方向
    direction_type2 = "#{rand(4)}" #0〜3までの数値
    if direction_type == 0 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：上"
    elsif direction_type == 1
      puts "ホイ！"
      puts "---------------"
      puts "あなた：下"
    elsif direction_type == 2 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：左"
    elsif direction_type == 3 
      puts "ホイ！"
      puts "---------------"
      puts "あなた：右"
    end
  end 

  case direction_type2
  when "#{0}"
    puts "相手：上"
  when "#{1}"
    puts "相手：下"
  when "#{2}"
    puts "相手：左"
  when "#{3}"
    puts "相手：右"
  end

  if hand_type == 0 && hand_type2 == "#{1}" || 
      hand_type == 1 && hand_type2 == "#{2}" || 
      hand_type == 2 && hand_type2 == "#{0}"
    if direction_type == 0 && direction_type2 == "#{0}"  \
      || direction_type == 1 && direction_type2 == "#{1}" \
      || direction_type == 2 && direction_type2 == "#{2}" \
      || direction_type == 3 && direction_type2 == "#{3}"
      puts "あなたの勝利です"
      break
    
    end
  elsif hand_type == 0 && hand_type2 == "#{2}" || 
         hand_type == 1 && hand_type2 == "#{0}" || 
         hand_type == 2 && hand_type2 == "#{1}"
    if direction_type == 0 && direction_type2 == "#{0}"  \
      || direction_type == 1 && direction_type2 == "#{1}" \
      || direction_type == 2 && direction_type2 == "#{2}" \
      || direction_type == 3 && direction_type2 == "#{3}"
      puts "相手の勝利です"
      break
    end
  end

  if hand_type == 0 && hand_type2 == "#{1}" || hand_type == 0 && hand_type2 == "#{2}" 
    puts "じゃんけん．．．"
  elsif hand_type == 1 && hand_type2 == "#{0}" || hand_type == 1 && hand_type2 == "#{2}"
    puts "じゃんけん．．．"
  elsif hand_type == 2 && hand_type2 == "#{0}" || hand_type == 2 && hand_type2 == "#{1}"
    puts "じゃんけん．．．"
  end
end