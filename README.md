# README

## Heroku
後台入口：https://restaurant-forum-mark.herokuapp.com/
可使用 bskin0330@gmail.com 登入，密碼 780330
## Git Clone 步驟
  1. git clone https://github.com/MarkWengSTR/restaurant_forum.git
  2. bundle install
  3. rails db:migrate
  4. rails db:seed
  5. rails dev:fake_restaurant
  6. rails dev:fake_user
  7. rails dev:fake_comment

## User stories

#### Phase 1: 後台建置
  * 網站管理者可以登入網站後台
  * 網站管理者可以在後台新增／瀏覽／編輯／刪除餐廳的基本資料
  * 網站管理者可以在後台上傳餐廳照片
  * 瀏覽餐廳資料時，會有分頁功能，頁只顯示 10 筆資料

#### Phase 2: 餐廳分類
  * 管理員瀏覽餐廳資料時，可以看見餐廳的分頁
  * 管理員新增或修改餐廳資料時，可以選擇分頁
  * 管理員可以在後台分類總表上進行 CRUD
  * 使用者可以瀏覽餐廳總表與個別餐廳資料
  * 使用者可以在餐廳總表上，依分類來篩選餐廳資料

#### Phase 3: 留下評論
  * 使用者可以在餐廳個別資料下留評論
  * 使用者可以在餐廳個別資料下瀏覽其他人的評論
  * 管理者可以刪除任何人的評論

#### Phase 4: 最新動態
  * 使用者可以看見最新的十個餐廳 
  * 使用者可以看見最新的十則評論  

#### Phase 5: 個人資料頁面
  * 使用者可以瀏覽自己和其他使用者的 Profile
  * 使用者可以編輯自己的個人資料
  * 在 Profile 頁面下，可以瀏覽使用者評論過的餐廳

#### Phase 6: 餐廳 (Favorite 與 like 功能)、使用者(Follow功能)
  * 使用者可對喜歡的餐廳按下Favorite / Unfavorite
  * 使用者能對喜歡的餐廳按 Like/Unlike
  * Top 10餐廳 - 列出前十多Favorite的餐廳
  * 使用者可 Follow / Unfollow別的使用者

#### Phase 7: 個人資料頁面更新
  * 列出使用者所有評論、Favorite、like過的餐廳
  * 列出使用者所有Follow的使用者

