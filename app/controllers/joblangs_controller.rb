class JoblangsController < ApplicationController
  before_action :set_joblang, only: [:show, :update, :destroy]

  # GET /joblangs
  def index
    @joblangs = Joblang.all

    render json: @joblangs
  end

  # GET /joblangs/1
  def show
    render json: @joblang
  end

  # POST /joblangs
  def create
    @joblang = Joblang.new(joblang_params)

    if @joblang.save
      render json: @joblang, status: :created, location: @joblang
    else
      render json: @joblang.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /joblangs/1
  def update
    if @joblang.update(joblang_params)
      render json: @joblang
    else
      render json: @joblang.errors, status: :unprocessable_entity
    end
  end

  # DELETE /joblangs/1
  def destroy
    @joblang.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joblang
      @joblang = Joblang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def joblang_params
      params.require(:joblang).permit(:language, :fluency, :post_id)
    end
end
