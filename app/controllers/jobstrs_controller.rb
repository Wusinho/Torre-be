class JobstrsController < ApplicationController
  before_action :set_jobstr, only: [:show, :update, :destroy]

  # GET /jobstrs
  def index
    @jobstrs = Jobstr.all

    render json: @jobstrs
  end

  # GET /jobstrs/1
  def show
    render json: @jobstr
  end

  # POST /jobstrs
  def create
    @jobstr = Jobstr.new(jobstr_params)

    if @jobstr.save
      render json: @jobstr, status: :created, location: @jobstr
    else
      render json: @jobstr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobstrs/1
  def update
    if @jobstr.update(jobstr_params)
      render json: @jobstr
    else
      render json: @jobstr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobstrs/1
  def destroy
    @jobstr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobstr
      @jobstr = Jobstr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobstr_params
      params.require(:jobstr).permit(:name, :proficiency, :post_id)
    end
end
