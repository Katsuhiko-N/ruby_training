kagome = "かごめかごめ　かごのなかのとりは　いついつでやる　よあけのばんに　つるとかめがすべった　うしろのしょうめんだあれ"

puts(kagome)
puts("何回めって言った？　=> #{kagome.scan("め").size}")
puts("何回かめって言った？　=> #{kagome.scan("かめ").size}")
puts("何回か（間に1文字）めって言った？　=> #{kagome.scan(/か.め/).size}")
puts("何回か（間に複数文字）めって言った？　=> #{kagome.scan(/か.+?め/).size}")

kaimono = "りんごが3つ、みかんが5つ、なしが2つ"
puts(kaimono)
puts("なしを１つに変更 => #{kaimono.gsub(/なし../,"なしが1")}")