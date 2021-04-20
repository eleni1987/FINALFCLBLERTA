class CartController < ApplicationController
  
  before_action :authenticate_user!
  

  
  def add
        # get the id of the product
        id = params[:id]
        
        # if the cart exists use it, or if not make a new cart.
        
        if session[:cart] then
          cart = session[:cart]
        else
          session[:cart] = {}
          cart = session[:cart]
        
        end  
         
        # check if ite is there and if so increment the quantity by 1
        # if the item is not there then set the quantity to be 1
        
        if cart[id] then
          cart[id] = cart[id] + 1
        else
          cart[id] = 1
        end 
    
    redirect_to :action => :index
  end
  

  def clear
    session[:cart] = nil
    redirect_to :action => :index
  end
    
  
  def remove
     session[:cart] = nil
    #redirect_to :action => :index
    id = params[:id]
    cart = session[:cart]
    cart==nil
    
    redirect_to :action => :index
  end
  
  #Reduce Classs
  def reduce
  id = params[:id]
    cart = session[:cart]
    
  if (cart[id] > 1 )
  
    cart[id] = cart[id] - 1
 end
    redirect_to :action => :index
end
  
  #Increase Class
  def increase
    id = params[:id]
    cart = session[:cart]
    cart[id] = cart[id] + 1
    
    redirect_to :action => :index
  end
  
 # pass the cart to be displayed
 def index
   
 if session[:cart] then
      @cart = session[:cart]
      
    else
      @cart = {}
    end
    
  end
  
def createOrder
  
# @orderNo = Order.new(order_params) #find(params[:id])
  
  
 # Step 1: Get the current user
 @user = User.find(current_user.id)

 # Step 2: Create a new order and associate it with the current user
 @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
 @order.save

 # Step 3: For each item in the cart, create a new item on the order!!
 @cart = session[:cart] || {} # Get the content of the Cart
 @cart.each do | id, quantity |
   fitness_class = FitnessClass.find_by_id(id)
   @orderclass = @order.orderclasses.build(:fitness_class_id => fitness_class.id, :name => fitness_class.name, :adress => fitness_class.address, :hourAndDateAvailable => fitness_class.hourAndDateAvailable, :quantity => quantity, :price => fitness_class.price)
   @orderclass.save
 end
 
 @orders = Order.all
 @orderclasses = Orderclass.where(order_id: Order.last)
 
session[:cart] = nil # Hidden for development so I can refresh the page
 
end

 # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_date, :user_id, :status)
    end
  
end
