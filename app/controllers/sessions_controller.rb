class SessionsController < ApplicationController
  def new
  end

  def create
    rider = Rider.find_by_email(params[:email])
    if rider && rider.authenticate(params[:password])
      session[:rider_id] = rider.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
  	reset_session
  	redirect_to '/login'
  end

end
