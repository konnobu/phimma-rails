class ExhibitsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_exhibit, only: [:show, :edit, :update, :destroy]

  def index
    @exhibits = Exhibit.all.order(created_at: :desc)
  end

  def new
    @exhibit = Exhibit.new
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)
    if @exhibit.save
      redirect_to exhibits_url
    else
      redirect_to new_exhibit_url
    end
  end

  def edit
  end

  def update
    @exhibit.update(exhibit_params)
    redirect_to @exhibit
  end

  def show
  end

  def destroy
    @exhibit.destroy
    redirect_to exhibits_url
  end

  private

  def exhibit_params
    params.require(:exhibit).permit(:user_id, :image, :image_cache, :title, :exhibit_description, :exhibit_category_id,:price, :book_status_id, :exhibit_status_id)
  end

  def set_exhibit
    @exhibit = Exhibit.find(params[:id])
  end
end
