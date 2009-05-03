class Plant < SquareFootPlanner
  has_many :squares
  has_many :gardens, :through => :squares
end
