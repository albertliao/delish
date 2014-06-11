
class Vote

  include Mongoid::Document

  field :score, type: Integer

  belongs_to :user

  belongs_to :picture


end

