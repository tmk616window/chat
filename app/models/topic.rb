class Topic < ApplicationRecord
      has_many :post, foreign_key: :topic_id, dependent: :destroy
      validates :title, presence: true
      
end
