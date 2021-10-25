class DevstrsController < ApplicationController
  before_action :set_devstr, only: [:show, :update, :destroy]

  # GET /devstrs
  def index
    @devstrs = Devstr.all

    render json: @devstrs
  end

  # GET /devstrs/1
  def show
    render json: @devstr
  end

  # POST /devstrs
  def create
    @devstr = Devstr.new(devstr_params)

    if @devstr.save
      render json: @devstr, status: :created, location: @devstr
    else
      render json: @devstr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /devstrs/1
  def update
    if @devstr.update(devstr_params)
      render json: @devstr
    else
      render json: @devstr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /devstrs/1
  def destroy
    @devstr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devstr
      @devstr = Devstr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devstr_params
      params.require(:devstr).permit(:name, :proficiency, :developer_id)
    end
end
