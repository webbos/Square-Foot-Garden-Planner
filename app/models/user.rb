class User < SquareFootPlanner
    acts_as_authentic do |c|
      #c.my_config_option = my_value # for available options see documentation in: Authlogic::ActsAsAuthentic
    end
    
    def proper_name
      self.first_name + ' ' + self.last_name
    end

    def sort_name
      self.last_name +  ', ' + self.first_name
    end

  
end
