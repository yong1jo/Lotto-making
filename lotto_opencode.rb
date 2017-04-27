require 'open-uri'
require 'json'

page = open("http://www.nlotto.co.kr/common.do?method=getLottoNumber")
lotto_info = page.read
lotto_hash = JSON.parse(lotto_info)

lotto_hash= JSON.parse(lotto_info)
puts lotto_hash["bnusNo"]