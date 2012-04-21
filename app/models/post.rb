class Post < ActiveRecord::Base
  attr_accessible :body, :user
  
  #validaciones de los campos
  #validates_presence_of :body, :user
  validates :body, :user, :presence => true
  
  has_many :comments
  belongs_to :user
end
