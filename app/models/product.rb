class Product < ApplicationRecord
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
    private
# ensure that there are no line items referencing this product
private
# ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
unless line_items.empty?
errors.add(:base, 'Line Items present')
throw :abort
end
end

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
