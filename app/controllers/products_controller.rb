class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products/ 
  # REMADE using Stimulus
  def index
    @selected_category = params[:category].to_i || "" 
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").order('id DESC')
    if !params[:category].blank?
      @products = @products.where("category_id LIKE ?", @selected_category) if !params[:category].blank?
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def filtering_params(params)
      params.slice(:keywords)
    end
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :stock, :user_id, :image, :category_id)
    end
end
