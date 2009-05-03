class AdminController < ApplicationController
  # layout 'admin'
  # before_filter :require_admin_user
  # def require_admin_user
  #   if current_user and !current_user.is_admin
  #     store_location
  #     flash[:notice] = "You must be an adminitrator to access that page"
  #     redirect_to '/'
  #     return false
  #   end
  # end
end