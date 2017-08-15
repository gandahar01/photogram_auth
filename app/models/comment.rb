class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  
  validates :body, :presence => true
  #
  validates :user, :presence => true
  validates :photo, :presence => true
end
