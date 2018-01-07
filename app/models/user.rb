class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
  mount_uploader :avatar, AvatarUploader
  # 使用者評論很多餐廳 的多對多關聯
  has_many :comments, dependent: :restrict_with_error
  has_many :restaurants, through: :comments 

  # 使用者收藏很多餐廳的多對多關聯

  has_many :favorites, dependent: :destroy
  has_many :favorited_restaurants, through: :favorites, source: :restaurant

  has_many :likes, dependent: :destroy
  has_many :liked_restaurants, through: :likes, source: :restaurant
  #使用者追蹤使用者的多對多關係
  has_many :followships, dependent: :destroy
  has_many :followings, through: :followships
  #使用者想知道誰追蹤他的多對多關係
  has_many :inverse_followships, class_name: "Followship", foreign_key: "following_id"
  has_many :followers, through: :inverse_followships, source: :user


  def admin?
    self.role == "admin"
  end

  def following?(user)
    self.followings.include?(user)
  end


end
