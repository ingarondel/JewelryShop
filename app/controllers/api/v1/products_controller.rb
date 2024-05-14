class Api::V1::ProductsController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, on: [:index, :create, :destroy, :update] # Пропуск авторизации для действий index, create и destroy
  skip_before_action :verify_authenticity_token, only: [:create, :destroy, :update]


  def index
    @products = Product.all.limit(5)
    respond_with @products
  end

  def show
    @product = Product.find(params[:id])
    respond_with @product
  end

  def create
    product_params = params.require(:product).permit(
      :category_id, :brand_id, :title, :bytitle, :content,
      :price, :old_price, :status, :keywords, :description, :img, :hit
    )
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    head :no_content
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      render json: @product, status: :ok
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :category_id, :brand_id, :title, :bytitle, :content,
      :price, :old_price, :status, :keywords, :description, :img, :hit
    )
  end
end