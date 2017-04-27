print "금액을 적어주세요:"
money = gets.chomp.to_i

print "몇 명인지 알려주세요:"
people = gets.chomp.to_i

money /= 1000
each = money / people * 1000
alpha = money % people

if alpha == 0
  puts "#{people}명이 #{each}원을 내면 됩니다."
else
  puts "#{people-alpha}명이 #{each}원을 내고, #{alpha}명이 #{each+1000}원을 내면 됩니다."
end