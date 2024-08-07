class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.page(params[:page]).per(10)
    render json: { resources: items, pager: {
      page: params[:page],
      per_page: 10,
      count: Item.count
    }}
  end

  def create
    item = Item.new amount: 100
    if item.save
      render json: { resources: item }
    else 
       render json: { errors: item.errors }
    end
  end
end
