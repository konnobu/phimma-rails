class ExhibitsController < ApplicationController
  # ログイン済みのユーザのみアクセス可能とするアクション
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # @exhibit = Exhibit.find(params[:id])が必要なアクション
  before_action :set_exhibit, only: [:show, :edit, :update, :destroy]

  # 商品一覧アクション
  def index
    @exhibits = Exhibit.all.order(created_at: :desc)
  end

  # 商品新規登録newアクション
  def new
    @exhibit = Exhibit.new
    render :layout => "non_header"
  end

  # 商品新規登録createアクション
  def create
    @exhibit = Exhibit.new(exhibit_params)
    if @exhibit.save
      redirect_to exhibits_url
    else
      redirect_to new_exhibit_url
    end
  end

  # 商品編集editアクション
  def edit
    render :layout => "non_header"
  end

  # 商品編集updateアクション
  def update
    @exhibit.update(exhibit_params)
    redirect_to @exhibit
  end

  # 商品詳細showアクション
  def show
  end

  # 商品削除destroyアクション
  def destroy
    @exhibit.destroy
    redirect_to exhibits_url
  end

  private

  # exhibitストロングパラメータ
  def exhibit_params
    params.require(:exhibit).permit(:user_id, :image, :image_cache, :title, :exhibit_description, :exhibit_category_id,:price, :book_status_id, :exhibit_status_id)
  end

  # 共通アクション set_exhibit
  def set_exhibit
    @exhibit = Exhibit.find(params[:id])
  end
end
