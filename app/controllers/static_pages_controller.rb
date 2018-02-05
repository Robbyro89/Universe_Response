class StaticPagesController < ApplicationController
  def home
  end

  def secret
    unless logged_in?
      redirect_to login_path
      flash[:danger] = "Veuillez entrer vos identifiants"
    end
  end

  def about
  end

  def contact
  end
  
end
