# ランダム
# rand（n）で0~(n-1)までの数を生成

i = 2
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
    j = rand(faces) + 1
    dices = dices - 1
    # 偶数奇数チェック
    if j % 2 == 0
        puts("#{j}、これは偶数です")
    else
        puts("#{j}、これは奇数です")
    end
end

# until = falseの間続行
# 入力した数値を反映
puts ("サイコロの面を入力")
faces = gets.to_i

puts("サイコロの個数を入力")
dices = gets.to_i

until dices < 1 do
    j = rand(faces) + 1
    dices = dices - 1
    # 偶数奇数チェック
    if j % 2 == 0
        puts("#{j}、これは偶数です")
    else
        puts("#{j}、これは奇数です")
    end
end

