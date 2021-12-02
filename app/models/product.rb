class Product < ApplicationRecord
    has_one_attached :image
    has_one :category
    belongs_to :category, required: false
    validates :category, presence: false

    def self.searchByName(keywords)
      if keywords
        where('name LIKE ? OR description LIKE ?', "%#{keywords}%", "%#{keywords}%").order('id DESC')
      else
        order('id DESC')
      end
    end

    def self.searchByCategory params    
        products = Product.where(category_id: params[:category].to_i) unless params[:category].blank?
        products
      end
  
end
