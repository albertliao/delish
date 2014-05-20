
class Vote

  include Mongoid::Document
  
  field :score, type: String

  belongs_to :user

  belongs_to :picture


end

