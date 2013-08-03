class Adventure < ActiveRecord::Base
  belongs_to :users
  has_attached_file :photo

  attr_accessible :story, :questions, :photo
  
end