class FruitsController < ApplicationController

  def create
    fruit = Fruit.new
    fruit.name = params[:name]
    fruit.description = params[:description]
    fruit.save
    redirect_to '/fruits'
  end

  def show
    @fruits = Fruit.all
  end

  def edit
    id = params[:id]
    @fruit = Fruit.find(id)
  end

  def update
    fruit = Fruit.find(params[:id])
    name = params[:name]
    description = params[:description]
    fruit.update(name: name, description: description)
    redirect_to '/fruits'
  end

  def destroy
    fruit = Fruit.find(params[:id])
    fruit.destroy
    redirect_to '/fruits'
  end


end