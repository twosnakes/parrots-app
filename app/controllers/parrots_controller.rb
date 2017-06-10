class ParrotsController < ApplicationController

  def index
    @parrots = Parrot.all
  end

  def new
  end

  def create
    parrot = Parrot.new(
                        name: params[:name],
                        species: params[:species],
                        age: params[:age],
                        image: params[:image],
                        )
    parrot.save

    redirect_to "/parrots/#{parrot.id}"
  end

  def show
    @parrot = Parrot.find(params[:id])
  end

  def edit
    @parrot = Parrot.find(params[:id])
  end

  def update
    dog = Dog.find(params[:id])
    dog.assign_attributes(
      
                          name: params[:name],
                          species: params[:species],
                          age: params[:age],
                          image: params[:image]
                          )
    parrot.save

    redirect_to "/parrots/#{parrot.id}"
  end

  def destroy
    parrot = Parrot.find(params[:id])
    parrot.destroy

    redirect_to '/'    
  end
end
