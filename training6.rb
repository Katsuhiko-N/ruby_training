# 疑似ブラックジャック
def hit_check(card,name)
    if card < 11
        total = card + (rand(11) + 1)
    else
        total = card + (rand(10) + 1)
    end
    puts("#{name}のカードの合計は#{total}です")
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
    elsif p_card == d_card
        puts("引き分けです")
    else
        puts("あなたの負けです")
    end
end

def continue_check
    puts("ゲームを続けますか？")
    puts("ゲームを続ける＝1,やめる＝それ以外のキー")
    input = gets.to_i
    if input == 1
        return 1
    else
        exit
    end
end


user = "あなた"
cpu = "ディーラー"
continue = 1

while continue == 1 do
    d_card = 0
    d_card = hit_check(d_card,cpu)
    p_card = (rand(11) + 1)
    p_card = hit_check(p_card,user)
    
    unless p_card == 21
        puts("カードを引く＝1,チェックする=2,やめる＝それ以外のキー")
        key = gets.to_i
    else
        key = 2
    end
    
    while key == 1
        p_card = hit_check(p_card,user)
        if bust_check(p_card)
            puts("あなたの負けです")
            continue = continue_check
            key = 0
        else
            unless p_card == 21
                puts("カードを引く＝1,チェックする=2,やめる＝それ以外のキー")
                key = gets.to_i
            else
                key = 2
            end
        end
    end
    
    if key == 2
        puts ("ディーラーが引きます")
        d_card = hit_check(d_card,cpu)
        while d_card < 16 do
            puts ("ディーラーが引きます")
            d_card = hit_check(d_card,cpu)
        end
        if bust_check(d_card)
            puts("あなたの勝ちです")
            continue = continue_check
            key = 0
        else
            battle(p_card,d_card)
            continue = continue_check
            key = 0
        end
    end
end
