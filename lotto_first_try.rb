require 'open-uri'
require 'json'

page = open("http://www.nlotto.co.kr/common.do?method=getLottoNumber")
lotto_info = page.read
lotto_hash = JSON.parse(lotto_info)

#랜덤 추첨 6자리 번호
a=[]
b = 1..45
my_numbers = b.to_a
a = my_numbers.sample(6).sort
print a
#a = [3, 4, 16, 20, 28 ,44]

#이번주 로또 번호
drw_numbers = [lotto_hash["drwtNo1"], lotto_hash["drwtNo2"], lotto_hash["drwtNo3"], lotto_hash["drwtNo4"], lotto_hash["drwtNo5"], lotto_hash["drwtNo6"]]
print drw_numbers
bonus_number = [lotto_hash["bnusNo"]]
print bonus_number

#랜덤추첨과 당첨번호 매칭
match_numbers = []
if drw_numbers.include? my number
    print a[0]
    match_numbers = a[0]
end
if drw_numbers.include? a[1]
    print a[1]
    match_numbers = a[1]
end
if drw_numbers.include? a[2]
    print a[2]
    match_numbers = a[2]
end
if drw_numbers.include? a[3]
    print a[3]
    match_numbers = a[3]
end
if drw_numbers.include? a[4]
    print a[4]
    match_numbers = a[4]
end
if drw_numbers.include? a[5]
    print a[5]
    match_numbers = a[5]
end
if drw_numbers.include? a[6]
    print a[6]
    match_numbers = a[6]
end

if match_numbers.size == 6
    puts "1등"
elsif match_numbers.size == 5 && match_numbers = bonus_number
    puts "2등"
elsif match_numbers.size == 5
    puts "3등"
elsif match_numbers.size == 4
    puts "4등"
elsif match_numbers.size == 3
    puts "5등"
else 
    puts "꽝"
end

