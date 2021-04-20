class OrderclassesController < ApplicationController
   
def index

#@order=Orderclass.all
@orderclasses = Orderclass.all

  end

  def show
#@order=Orderclass.all
@orderclasses = Orderclass.all

  end

  def new
     @orderclasses = Orderclass.new
  end

  def edit
  end
end
