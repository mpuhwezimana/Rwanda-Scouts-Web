class PagesController < ApplicationController
  def home
    @troops = Troop.all
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
