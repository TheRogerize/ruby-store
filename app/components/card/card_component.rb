class Card::CardComponent < ViewComponent::Base
  def initialize(product)
    @name = product.name
    @description = product.description
    @price = product.price
    @category = product.category&.name
    @stock = product.stock
    @image = product.image
  end

end
