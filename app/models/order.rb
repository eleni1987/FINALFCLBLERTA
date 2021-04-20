class Order < ApplicationRecord
 belongs_to :user
  has_many :orderclasses, :dependent => :destroy
  #has_many :fitness_classes , :dependent => :destroy 

  def order_params
        params.require(:order).permit( :order_date, :user_id, :status)
  end


end