# 100.times do |index|
#   Customer.create(family_name: "鈴木", given_name: "太郎", email: "customer_#{index}@sparta.com")
# end

# Config.locale = :ja を指定している指定しているので、日本人のような名前が生成される
# Fakerの仕様上、emailをしようする場合、locale = :en で指定指定しないと、emailの形式に合わないデータが生成される

# Company.create(name: "株式会社ABC不動産", url: "http://www.abc_sample.co.jp/", address: "東京都新宿区東新宿4")
# Company.create(name: "株式会社NOWALL", url: "http://nowall.co.jp/", address: "東京都新宿区西新宿6")
# Company.create(name: "株式会社ZZZ運輸", url: "http://www.zzz_sample.co.jp/", address: "東京都新宿区北新宿8")

# 100.times do |index|
#   Faker::Config.locale = :ja
#   family_name = Faker::Name.last_name
#   given_name  = Faker::Name.first_name

#   Faker::Config.locale = :en
#   email = Faker::Internet.email

#   Customer.create(family_name: family_name,given_name: given_name,email: email,company_id: rand(1..3))
# end

Company.create(name: "株式会社ABC不動産", url: "http://www.abc_sample.co.jp/", address: "東京都新宿区東新宿4")
Company.create(name: "株式会社NOWALL", url: "http://nowall.co.jp/", address: "東京都新宿区西新宿6")
Company.create(name: "株式会社ZZZ運輸", url: "http://www.zzz_sample.co.jp/", address: "東京都新宿区北新宿8")

Post.create(position_name: "社長")
Post.create(position_name: "部長")
Post.create(position_name: "課長")
Post.create(position_name: "平社員")

100.times do |index|
  Faker::Config.locale = :ja
  family_name = Faker::Name.last_name
  given_name =  Faker::Name.first_name

  Faker::Config.locale = :en
  email = Faker::Internet.email

  Customer.create(family_name: family_name,given_name: given_name,email: email,company_id: rand(1..3),post_id: rand(1..4))
end