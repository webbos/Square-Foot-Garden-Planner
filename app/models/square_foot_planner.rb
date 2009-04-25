class SquareFootPlanner < ActiveRecord::Base
  set_primary_key :uuid
  include UUIDHelper
  self.abstract_class = true
end