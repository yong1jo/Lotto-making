require 'open-uri'
require 'json'

page = open("http://www.nlotto.co.kr/common.do?method=getLottoNumber")
lotto_info = page.read
lotto_hash = JSON.parse(lotto_info)


#이번주 로또 번호
drw_numbers = [lotto_hash["drwtNo1"], lotto_hash["drwtNo2"], lotto_hash["drwtNo3"], lotto_hash["drwtNo4"], lotto_hash["drwtNo5"], lotto_hash["drwtNo6"]]
print "이번주 로또 번호는" + drw_numbers.to_s + "이고, "
bonus_number = lotto_hash["bnusNo"]
puts "보너스 번호는 [" + bonus_number.to_s + "] 입니다."


#랜덤 추첨 6자리 번호
my_numbers = (1..45).to_a.sample(6).sort
puts "추첨한 로또 번호는 " + my_numbers.to_s + " 입니다."
#a=[3, 4, 16, 17, 28, 44].sort


#랜덤추첨과 당첨번호 매칭
match_numbers = drw_numbers & my_numbers
puts "겹치는 번호는 " + match_numbers.to_s + " 입니다."
if match_numbers.size == 6
    puts "결과는 1등 입니다."
elsif match_numbers.size == 5 && a.include?(bonus_number)
    puts "결과는 2등 입니다."
elsif match_numbers.size == 5
    puts "결과는 3등 입니다."
elsif match_numbers.size == 4
    puts "결과는 4등 입니다."
elsif match_numbers.size == 3
    puts "결과는 5등 입니다."
else 
    puts "결과는 꽝 입니다."
end

