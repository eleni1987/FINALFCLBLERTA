class StaticPagesController < ApplicationController
  
  def home
   
  end


  
  def aboutSend
   @order = Order.find(params[:id])
   @order.update_attribute(:status, "Paid with Paypal")
  end
  
 

end
