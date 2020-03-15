class Post < ApplicationRecord
  belongs_to :topic, dependent: :destroy
  belongs_to :user
  
  validates :body, presence: true
  
end
