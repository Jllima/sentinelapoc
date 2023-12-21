class DenouncesController < ApplicationController
  before_action :set_denounce, only: %i[ show edit update destroy ]

  # GET /denounces or /denounces.json
  def index
    @denounces = Denounce.all
  end

  # GET /denounces/1 or /denounces/1.json
  def show
  end

  # GET /denounces/new
  def new
    @denounce = Denounce.new
  end

  # GET /denounces/1/edit
  def edit
  end

  # POST /denounces or /denounces.json
  def create
    @denounce = Denounce.new(denounce_params)

    respond_to do |format|
      if @denounce.save
        format.html { redirect_to denounce_url(@denounce), notice: "Denounce was successfully created." }
        format.json { render :show, status: :created, location: @denounce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @denounce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denounces/1 or /denounces/1.json
  def update
    respond_to do |format|
      if @denounce.update(denounce_params)
        format.html { redirect_to denounce_url(@denounce), notice: "Denounce was successfully updated." }
        format.json { render :show, status: :ok, location: @denounce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @denounce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denounces/1 or /denounces/1.json
  def destroy
    @denounce.destroy!

    respond_to do |format|
      format.html { redirect_to denounces_url, notice: "Denounce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denounce
      @denounce = Denounce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def denounce_params
      params.require(:denounce).permit(:desc)
    end
end
