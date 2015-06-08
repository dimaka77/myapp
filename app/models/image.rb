class Image < ActiveRecord::Base
  has_attached_file :gallery, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/main_container/dark-wooden.jpg"
  validates_attachment_content_type :gallery, :content_type => /\Aimage\/.*\Z/
end