class Admin::VegetablesController < AdminController
  active_scaffold :vegetable do |config|
    config.columns = [ :name, :per_square, :is_spring, :is_summer, :is_fall, :is_winter, :is_additional_plantings ]
  end
end
