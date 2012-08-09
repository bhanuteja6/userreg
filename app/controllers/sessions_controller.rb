class SessionsController < ApplicationController
  def create
	auth = request.env["omniauth.auth"]
	user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
	#raise auth.inspect
	session[:user_id] = user.id
    redirect_to :controller => "projects", :action => "index"
  end

  def destroy
   session[:user_id] = nil
   render :destroy
  end
end
