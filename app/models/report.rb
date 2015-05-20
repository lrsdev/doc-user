class Report < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  belongs_to :location, dependent: :destroy
end
