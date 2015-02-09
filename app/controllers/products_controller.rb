class ProductsController < ApplicationController

    def index
      @products = Product.all
    end

    def new
      @product = Product.new
      @company = Company.find(params[:company_id])
    end

    def create
      @product = Product.new(product_params)
      @product.company_id = params[:company_id]
      if @product.save
      redirect_to companies_path
        else
          render @product
      end
    end

    def show
      @product = Product.find(params[:id])
    end

    private
    def product_params
       params.require(:product).permit(:department, :name, :price, :company_id)
    end
end
