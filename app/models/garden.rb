class Garden < SquareFootPlanner
  has_many :squares, :order => :position
  has_many :plants, :through => :squares
  belongs_to :user
  
  before_create :add_squares
  
  def add_squares
    for i in (1..16)
      self.squares << Square.create(:position => i)
    end
  end
end