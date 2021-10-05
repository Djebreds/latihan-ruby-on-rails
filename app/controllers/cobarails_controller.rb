class CobarailsController < ApplicationController
  before_action :set_cobarail, only: %i[ show edit update destroy ]

  # GET /cobarails or /cobarails.json
  def index
    @cobarails = Cobarail.all
  end

  # GET /cobarails/1 or /cobarails/1.json
  def show
  end

  # GET /cobarails/new
  def new
    @cobarail = Cobarail.new
  end

  # GET /cobarails/1/edit
  def edit
  end

  # POST /cobarails or /cobarails.json
  def create
    @cobarail = Cobarail.new(cobarail_params)

    respond_to do |format|
      if @cobarail.save
        format.html { redirect_to @cobarail, notice: "Friend was successfully created." }
        format.json { render :show, status: :created, location: @cobarail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cobarail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cobarails/1 or /cobarails/1.json
  def update
    respond_to do |format|
      if @cobarail.update(cobarail_params)
        format.html { redirect_to @cobarail, notice: "Friend was successfully updated." }
        format.json { render :show, status: :ok, location: @cobarail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cobarail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cobarails/1 or /cobarails/1.json
  def destroy
    @cobarail.destroy
    respond_to do |format|
      format.html { redirect_to cobarails_url, notice: "Friend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cobarail
      @cobarail = Cobarail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cobarail_params
      params.require(:cobarail).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
