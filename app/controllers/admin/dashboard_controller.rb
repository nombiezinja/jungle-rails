class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: "#{ENV['ADMIN_NAME']}", password: "#{ENV['ADMIN_PASSWORD']}"

  # def admin_authenticate
  #   super
  # end

  def
    # admin_authenticate
  end
end
