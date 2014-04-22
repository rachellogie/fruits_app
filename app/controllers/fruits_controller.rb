class FruitsController < ApplicationController

  def create
    #put the fruit in the database
    #Fruit.all

    redirect_to '/fruits'
  end
end