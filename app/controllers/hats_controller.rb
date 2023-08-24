class HatsController < ApplicationController
  # index, show, create, new, edit, update
  before_action :set_hat, only: %i[show edit update destroy]

  def index
    @hats = Hat.all
  end

  def show
  end

  def new
    @hat = Hat.new
  end

  def create
    @hat = Hat.new(hat_params)
    @hat.user = current_user
    if @hat.save
      redirect_to hat_path(@hat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @hat= Hat.find(params[:id])
    if @hat.update(hat_params)
      redirect_to hat_path(@hat), notice: 'Hat has been updated!'
    else
      render :edit
    end
  end

  def destroy
    @hat.destroy
    redirect_to hats_path, status: :see_other
  end

  private

  def set_hat
    @hat = Hat.find(params[:id])
  end

  def hat_params
    params.require(:hat).permit(:style, :color, :price, :description, :photo)
  end

end
