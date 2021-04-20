module ApplicationHelper
    
    def order
        if Order.find_by_id(session[:user_id]).nil?
            Order.new
        else
            Order.find_by_id(session[:user_id])
            
    end
end
end
