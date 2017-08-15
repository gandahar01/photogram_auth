class Photo < ApplicationRecord
  belongs_to :user  #:required => false
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  
  has_many :fans, :through => :likes, :source => :user
  
 validates :user_id, :presence => true

end
