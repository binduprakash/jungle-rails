class ProductsController < ApplicationController
  before_filter :find_product, :only => [:show]

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @review = Review.new
  end
  protected
    def find_product
      @product = Product.find(params[:id])
    end
end
