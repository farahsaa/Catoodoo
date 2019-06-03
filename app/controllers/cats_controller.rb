class CatsController < ApplicationController
  before_action :load_cat,
    except: [:index, :new, :create]

  before_action :build_cat,
    only: [:new, :create]

  def index
    @cats = Cat.all
  end

  def new
  end

  def create
    @cat.save!
    redirect_to cat_path(@cat)
  rescue ActiveRecord::RecordInvalid
    render(action: "new")
  end

  def show
  end
  
  def edit
  end

  def update
    @cat.update_attributes!(cat_params)
    redirect_to cat_path(@cat)
  rescue ActiveRecord::RecordInvalid
    render(action: "edit")
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

protected 
  def load_cat
    @cat = Cat.find(params[:id])
  end

  def build_cat
    Rails.logger.debug(cat_params.inspect)
    @cat = Cat.new(cat_params)
  end 

  def cat_params
    params.fetch(:cat, { }).permit(:name, :email)
  end
end

