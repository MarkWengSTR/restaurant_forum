namespace :dev do 
  task fake_restaurant: :environment do
    Restaurant.destroy_all

    500.times do |i|
      Restaurant.create!(name: FFaker::Name.first_name ,
        opening_hours: FFaker::Time.datetime,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        decription: FFaker::Lorem.paragraph,
        category: Category.all.sample
       )
    end
      puts "假資料已建立完成"
      puts "總共有 #{Restaurant.count}筆餐廳資料"
  end
end