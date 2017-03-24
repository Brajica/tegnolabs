class AdminiController < Devise::SessionsController
  def new
    super
  end
  def update
    super
  end
  def create
    super
    if admin_signed_in?
      return  new_app_path
       redirect_to new_app_path
    end

  end
end
