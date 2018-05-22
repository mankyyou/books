class Product < ApplicationRecord
    
    validates :title,
    :presence => {},    
    :length=> {:minimum=>5}
    validates :description,
    :presence => {},
    :length=> {:maximum=>200}
    validates :image_url,format: {
        with:
        %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
        }
    validates :price,
    :length=>{:in=>1..10}
end
