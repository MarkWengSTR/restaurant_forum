namespace :dev do
  task fake_user: :environment do
    User.destroy_all
    20.times do |i|
      User.create!(
        name: FFaker::NameCS.first_name_male ,
        email: FFaker::Internet.email ,
        password: "12345678",
        
      )
    end
      puts "假資料已建立完成"
      puts "總共有 #{User.count}筆使用者資料"
  end 
end
