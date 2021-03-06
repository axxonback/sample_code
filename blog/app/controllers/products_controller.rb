class ProductsController < ApplicationController
	http_basic_authenticate_with name: "mars", password: "pass", except:[:index, :show]
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end
	
	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
		#render plain: params[:product].inspect
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to @product
	end

	def books
		render "books/index"
	end

	private
		def product_params
			params.require(:product).permit(:title, :text)
		end

end
