class DevlangsController < ApplicationController
  before_action :set_devlang, only: [:show, :update, :destroy]

  # GET /devlangs
  def index
    @devlangs = Devlang.all

    render json: @devlangs
  end

  # GET /devlangs/1
  def show
    render json: @devlang
  end

  # POST /devlangs
  def create
    @devlang = Devlang.new(devlang_params)

    if @devlang.save
      render json: @devlang, status: :created, location: @devlang
    else
      render json: @devlang.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /devlangs/1
  def update
    if @devlang.update(devlang_params)
      render json: @devlang
    else
      render json: @devlang.errors, status: :unprocessable_entity
    end
  end

  # DELETE /devlangs/1
  def destroy
    @devlang.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devlang
      @devlang = Devlang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devlang_params
      params.require(:devlang).permit(:language, :fluency, :developer_id)
    end
end
