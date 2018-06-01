class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?

  end

  def help
  end

  def about
  end

  def contact
  end

  def generate_number
    puts Random.rand(5) #return
  end

end
