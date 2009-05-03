class Admin::PlantsController < AdminController
  active_scaffold :plant do |config|
    config.columns = [ :name, :type, :per_square, :is_spring, :is_summer, :is_fall, :is_winter, :is_additional_plantings ]
  end
end
