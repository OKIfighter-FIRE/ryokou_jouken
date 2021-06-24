plans = [
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000}
]

# plan表示
plans.each.with_index(1) do |plan, i|
  puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
end

# プラン選択
while true
  print "プランの番号を選択 > "
  select_plan_num = gets.to_i
  break if (1..3).include?(select_plan_num)
  puts "1~3を選んでください"
end
chosen_plan = plans[select_plan_num - 1]
puts "#{chosen_plan[:place]}ですね"

# 予約人数
while true
  puts "何名で予約されますか?"
  print "人数を入力 >"
  select_tourist = gets.to_i
  break if select_tourist >= 1
  puts "1名以上入力してください"
end
puts "#{select_tourist}名ですね"

# 合計金額
total_price = chosen_plan[:price] * select_tourist
if select_tourist >= 5
  puts "5名以上なので10%割引となります"
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります"
