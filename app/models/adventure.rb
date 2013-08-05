class Adventure < ActiveRecord::Base
  belongs_to :users
  has_attached_file :photo, :styles => { :small => "150x150>" },
  :url => "/system/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

  attr_accessible :story, :question_1, :question_2, :id_of_story, :photo
  
end