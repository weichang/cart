class OrderInfo < ActiveRecord::Base
    belongs_to :order
    
    validates :billing_name,     presence: {:message =>'請填寫訂購人'}
    validates :billing_address,  presence: {:message =>'請填寫訂購地址'}
    validates :shipping_name,    presence: {:message =>'請填寫收件人'}
    validates :shipping_address, presence: {:message =>'請填寫收件地址'}
end
