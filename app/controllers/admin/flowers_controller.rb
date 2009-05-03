class Admin::FlowersController < AdminController
  active_scaffold :flowers do |config|
    config.columns = [ :name, :per_square, :is_spring, :is_summer, :is_fall, :is_winter, :is_additional_plantings ]
  end
end
