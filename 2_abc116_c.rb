N = gets.to_i
H = gets.split.map(&:to_i)

ans = 0 # 水やりをした回数

INF = 20000 # 最大のケースより大きい数値

# 水やりが必要ない場合
if H.inject(:+) == 0
  puts 0
  return
end

INF.times do
  # 今回の試行で水やりをする範囲
  left_index = 0
  right_index = N - 1

  # 水やりの始点を求める
  for index in (0..N) do
    if H[index] != 0
      left_index = index
      break
    end
  end

  # 水やりの終点を求める
  for index in (left_index + 1)..N do
    if H[index] == 0
      right_index = index - 1
      break
    end
  end

  # 水やりをする
  for index in left_index..right_index do
    H[index] -= 1
  end
  ans += 1

  # 水やりが終わっているか確認する
  if H.inject(:+) == 0
    puts ans
    return
  end
end

puts "error"
return
