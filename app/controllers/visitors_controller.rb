class VisitorsController < ApplicationController
  def about
  end
  def about
  end
  def home
  end
  def signout
    session.clear
    flash[:alert] = "Access denied."
    redirect_to root_path
  end
end
