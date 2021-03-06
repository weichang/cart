module ProductsHelper
    
    def render_product_photo(photo ,size="thumb")
        
        if photo.present?
            
           
            image_url = photo.image.send(size).url
        else
           
            image_url=render_no_pic_url(size)
        end
        
        image_tag(image_url,class:"thumbnail")
    end
    
    def render_no_pic_url(size)
        
        case size
        when :medium
            volume = "300X300"
        else
             volume= "200X200"
        end
        
        return "http://placehold.it/#{volume}&text=No Pic"
    end
    
    def render_cart_items_count(cart)
        
        cart.cart_items.count
        
    end
    
end
