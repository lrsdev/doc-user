class Location < ActiveRecord::Base
  has_many :reports
  validates :name, :presence => true
  validates :location_type, :presence => true
  validates :blurb, :presence => true
  validates :dog_guidelines, :presence => true
  validates :dog_status, :presence => true

  # Enums for state representation 0 =>
  enum location_type: [ :beach ]
  enum dog_status: [ :on_lead, :off_lead, :no_dogs ]

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def image_thumb
    image.url(:thumb)
  end

  def image_medium
    image.url(:medium)
  end
end
