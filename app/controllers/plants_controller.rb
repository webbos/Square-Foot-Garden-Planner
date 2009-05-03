class PlantsController < ApplicationController
  active_scaffold :plant do |config|
    config.columns = [ :name, :type, :per_square ]
  end
end
