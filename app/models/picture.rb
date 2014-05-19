
class Picture

  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :title, type: String

  field :category, type: String

  has_one :restaurant

  has_many :votes

  has_mongoid_attached_file :image

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


end

