class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :authenticate_user!

private

  def admin_only
    unless current_user.try(:admin?)
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def layout_by_resource
    # if devise_controller?
    if user_signed_in?
      'application'
    else
      'devise'
    end
  end
end
