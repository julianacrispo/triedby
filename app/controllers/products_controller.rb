class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def create
  @product = Product.new(params.require(:product).permit(:name))
	  if @product.save
	    flash[:notice] = "Product was saved."
	    redirect_to @product
	  else
	    flash[:error] = "There was an error saving the product. Please try again."
	    render :new
	  end
	end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params.require(:product).permit(:name))
      flash[:notice] = "Product was updated."
      redirect_to @product
    else
      flash[:error] = "There was an error saving the product. Please try again."
      render :edit
    end
  end

end
