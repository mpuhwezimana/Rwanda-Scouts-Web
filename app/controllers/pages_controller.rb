class PagesController < ApplicationController
  def home
    @troops = Troop.all
    @posts = Post.all
  end

  def mission
  end

  def law
  end

  def about
  end

  def contacts
  end

  def program
    
  end
end
