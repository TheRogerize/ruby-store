class Search::SearchBarComponent < ViewComponent::Base
    def initialize(selected_category)
      @selected_category = selected_category
      @categories = Category.all.map{|el| [el.name, el.id]}
    end
    
    def getCategories
      @categories = Category.all.map{|el| [el.name, el.id]}
    end
end
