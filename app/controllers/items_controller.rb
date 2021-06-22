class ItemsController < ApplicationController
  before_action :find_item, only: :order  # 「find_item」を動かすアクションを限定

  def index
    @items = Item.all
  end

  def order # 購入する時のアクションを定義
  end

  private

  def find_item
    @item = Item.find(params[:id]) # 購入する商品を特定
  end

end