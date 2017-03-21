class TroopsController < ApplicationController

  def index
    @troops = Troop.all
  end 

  def show
    @troop = Troop.find_by(id: params[:id])
  end

  def new
    @troop = Troop.new
  end

  def create
    @troop = Troop.new({name: params[:name], latitude: params[:latitude], longitude: params[:longitude], address: params[:address], contacts: params[:contacts]})
    if @troop.save
      redirect_to "/troops/#{@troop.id}"
      flash[:success] = "troop created"
    else
      render :new
      flash[:info] = "Troop not created, Error occured!!!"
    end
  end

  def edit
    @troop = Troop.find_by(id: params[:id])    
  end

  def update
    @troop = Troop.find_by(id: params[:id])
    @troop.name = params[:name]
    @troop.latitude = params[:latitude]
    @troop.longitude = params[:longitude]
    @troop.address = params[:address]
    @troop.contacts = params[:contacts]
    if @troop.save
      redirect_to "/troops/#{@troop.id}"
      flash[:info] = "troop updated"
    else
      render :edit
      flash[:info] = "troop not updated, Try again!"
    end
  end

  def destroy
    @troop = Troop.find_by(id: params[:id])
    @troop.destroy
    redirect_to "/troops"
    flash[:danger] = "troop deleted"
  end

  def search
    search_query = params[:search_input]
    @troops = Troop.where("name LIKE ? OR address LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @troops.empty?
      flash[:info] = "Nothing found in search about #{search_query}"
    else
      flash[:success] = "This is what we found for your search about #{search_query}"
    end
    render :index
  end
end
