class User < ApplicationRecord
    has_secure_password
    mount_uploader :image, ImageUploader
    has_many :posts, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true






end
