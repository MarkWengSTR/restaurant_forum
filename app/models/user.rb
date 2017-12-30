class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
  mount_uploader :avatar, AvatarUploader
  has_many :comments #先加上comment的外鍵
  has_many :restaurants, through: :comments 

  def admin?
    self.role == "admin"
  end

end
