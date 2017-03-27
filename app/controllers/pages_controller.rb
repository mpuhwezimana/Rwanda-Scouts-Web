class PagesController < ApplicationController
  def home
    @troops = Troop.all    
  end
end
