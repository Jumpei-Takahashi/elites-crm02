# 100.times do |index|
#   Customer.create(family_name: "鈴木", given_name: "太郎", email: "customer_#{index}@sparta.com")
# end

# Config.locale = :ja を指定している指定しているので、日本人のような名前が生成される
# Fakerの仕様上、emailをしようする場合、locale = :en で指定指定しないと、emailの形式に合わないデータが生成される

100.times do |index|
  Faker::Config.locale = :ja
  family_name = Faker::Name.last_name
  given_name =  Faker::Name.first_name

  Faker::Config.locale = :en
  email = Faker::Internet.email

  Customer.create(family_name: family_name,given_name: given_name,email: email)
end