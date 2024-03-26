class CategoriesController < ApplicationController
  before_action :authorize_request

  def index
    @categories  = Category.where(parent_category_id: params[:parent_category_id])
    render json: CategorySerializer.new(@categories).serializable_hash, status: :ok
  end
end
