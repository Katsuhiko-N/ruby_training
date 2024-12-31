# 疑似ブラックジャック
def hit_check(card)
    total = card + (rand(10) + 1)
    puts("あなたのカードの合計は#{total}です")
    return total
end


def bust_check(card)
    if card > 21
        return true
    else
        return false
    end
end

def battle(p_card,d_card)
    if p_card > d_card
        puts("あなたの勝ちです")
        exit
    elsif p_card == d_card
        puts("引き分けです")
        exit
    else
        puts("あなたの負けです")
        exit
    end
end




d_card = rand(10) + 1
puts("ディーラーのカードは#{d_card}です")
p_card = (rand(10) + 1) + (rand(10) + 1)
puts("あなたのカードの合計は#{d_card}です")

puts("カードを引く＝1,チェックする=2,やめる＝それ以外のキー")
key = gets.to_i

while key == 1
    p_card = hit_check(p_card)
    if bust_check(p_card)
        puts("あなたの負けです")
        exit
    else
        puts("カードを引く＝1,チェックする=2,やめる＝それ以外のキー")
        key = gets.to_i
    end
end

if key == 2
    while d_card < 16
        puts ("ディーラーが引きます")
        d_card = d_card + (rand(10) + 1)
        puts("ディーラーのカードの合計は#{d_card}です")
    end
    if bust_check(d_card)
        puts("あなたの勝ちです")
    else
        battle(p_card,d_card)
    end
else
    exit
end

