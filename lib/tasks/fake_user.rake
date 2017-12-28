namespace :dev do
  task fake_user: :environment do
    20.times do |i|
      User.create!(
        email: FFaker::Internet.email ,
        password: FFaker::PhoneNumberCH.home_work_phone_number
        name: FFaker::Name.name 
      )
    end
      puts "假資料已建立完成"
      puts "總共有 #{User.count}筆使用者資料"
  end 
end
