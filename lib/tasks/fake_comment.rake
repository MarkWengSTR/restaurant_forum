namespace :dev do
  task fake_comment: :environment do 
      Restaurant.all.each do |restaurant|
        3.times do |i|
          restaurant.comments.create!(
            user: User.all.sample,
            content: FFaker::Lorem.phrase
            ) 
        end
      end
      puts "假資料已建立完成"
      puts "總共有 #{Comment.count}筆評論資料"
  end
end