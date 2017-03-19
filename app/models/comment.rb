class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence:true, length: {minimum: 10, maximimum: 500}
end
