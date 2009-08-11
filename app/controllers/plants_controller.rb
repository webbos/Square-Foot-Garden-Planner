class PlantsController < ApplicationController
  active_scaffold :plant do |config|
    config.label = 'Plants'
    config.list.columns   = [ :name, :type, :per_square ]
    config.create.columns = [ :name, :type, :per_square ]
  end
end
