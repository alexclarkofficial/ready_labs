class Developer < ActiveRecord::Base

  has_attached_file :picture, default_url: ""

  validates_attachment_content_type :picture, :content_type => %w(image/jpeg image/jpg image/png)
end
