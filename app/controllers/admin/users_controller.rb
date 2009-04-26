class Admin::UsersController < AdminController
  active_scaffold :user do |config|
    config.list.columns = [ :login, :sort_name, :email, :current_login_ip, :is_admin, :created_at, :updated_at ]
  end
end
