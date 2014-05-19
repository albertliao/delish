
class Vote

  include Mongoid::Document




  field :score, type: String

  field :email, type: String

  belongs_to :user

  belongs_to :picture


end

