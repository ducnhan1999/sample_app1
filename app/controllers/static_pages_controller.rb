class StaticPagesController < ApplicationController
	include StaticPagesHelper
  def home
  end

  def show
  	@user = User.find_by id: params[:id]
  end

  def help
  end

  def login
  end

  def about
  end

  def contact
  end

  def news
  end
end
