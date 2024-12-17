# 文字列操作
a = "ABCDEFABCDEFABCDEF"

# 文字列の置換(すべて)
# 文字列.gsub("置換する文字","新しい文字")
b = a.gsub("CD", "DC")
puts ("#{b}")
puts ("元#{a}")

# 特定の文字列が含まれるか
# 文字列.include?("特定の文字列")
c = a.include?("AB")
puts ("#{c}")

# 特定の文字列を抜き出す
# 文字列.scan("特定の文字列")
d = a.scan("AB")
puts ("#{d}")

# 特定の文字列をカウント
# 文字列.scan("特定の文字列")
e = a.scan("AB").count
puts ("#{e}")

# 文字列の特定の位置から抜き出し
# 文字列.slice(最初の文字の位置（0スタート）, 長さ)
f = 2
g = 3
h = a.slice(f,g)
puts ("#{f + 1}文字目から#{g}文字抜き出すと#{h}")


# 正規表現　//の間に記述
# .=任意の１文字

# 正規表現で文字列を抽出
i = a.scan(/C../)
puts ("Cから始まる3文字は#{i}")

# 正規表現で文字列を置換
j = a.gsub(/C../,"XXX")
puts ("Cから始まる3文字をXXXに置換すると#{j}")