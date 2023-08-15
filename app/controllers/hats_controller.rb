class HatsController < ApplicationController
  # index, show, create, new, edit, update
  before_action :set_hat, only: %i[show edit]

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

    if @hat.save
      redirect_to hat_path(@hat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @hat.update(hat_params)
      redirect_to @hat, notice: 'Hat has been updated!'
    else
      render :edit
    end
  end

  private

  def set_hat
    @hat = Hat.find(params[:id])
  end

  def hat_params
    params.require(:hat).permit(:name, :colour, :size)
  end

end
