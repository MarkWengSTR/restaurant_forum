namespace :dev do 
  task photo_upload: :environment do
    uploaders = Restaurant.first(10).map(&:image)
    Restaurant.last(490).each do |restaurant|
      restaurant.image = uploaders.sample
    end
      puts "照片複製完成"
      puts "總共新增 #{Restaurant.count}筆照片"
  end
end