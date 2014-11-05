class Post < ActiveRecord::Base
	has_attached_file :photo,
	:storage => :s3,
	:s3_credentials => "#{Rails.root}/config/s3.yml",
	:path => ":attachment/:id/:style.:extension",
	:bucket => "gemsy"
	validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
