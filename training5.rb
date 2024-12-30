# ランダム
# rand（n）で0~(n-1)までの数を生成

i = 5
while i > 0 do
    puts("#{rand(10)}")
    i = i - 1
end

# 入力した数値を反映
puts ("サイコロの面を入力")
faces = gets.to_i

puts("サイコロの個数を入力")
dices = gets.to_i

while dices > 0 do
    puts("#{rand(faces) + 1}")
    dices = dices - 1
end