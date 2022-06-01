class DslsController < ApplicationController
  before_action :set_dsl, only: %i[ show edit update destroy ]

  # GET /dsls or /dsls.json
  def index
    @dsls = Dsl.all
  end

  # GET /dsls/1 or /dsls/1.json
  def show
  end

  # GET /dsls/new
  def new
    @dsl = Dsl.new
  end

  # GET /dsls/1/edit
  def edit
  end

  # POST /dsls or /dsls.json
  def create
    @dsl = Dsl.new(dsl_params)

    respond_to do |format|
      if @dsl.save
        format.html { redirect_to dsl_url(@dsl), notice: "Dsl was successfully created." }
        format.json { render :show, status: :created, location: @dsl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dsl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dsls/1 or /dsls/1.json
  def update
    respond_to do |format|
      if @dsl.update(dsl_params)
        format.html { redirect_to dsl_url(@dsl), notice: "Dsl was successfully updated." }
        format.json { render :show, status: :ok, location: @dsl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dsl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dsls/1 or /dsls/1.json
  def destroy
    @dsl.destroy

    respond_to do |format|
      format.html { redirect_to dsls_url, notice: "Dsl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dsl
      @dsl = Dsl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dsl_params
      params.require(:dsl).permit(:field)
    end
end
