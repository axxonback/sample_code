class LoversController < ApplicationController
  before_action :set_lover, only: [:show, :edit, :update, :destroy]

  # GET /lovers
  # GET /lovers.json
  def index
    @lovers = Lover.all
  end

  # GET /lovers/1
  # GET /lovers/1.json
  def show
  end

  # GET /lovers/new
  def new
    @lover = Lover.new
  end

  # GET /lovers/1/edit
  def edit
  end

  # POST /lovers
  # POST /lovers.json
  def create
    @lover = Lover.new(lover_params)

    respond_to do |format|
      if @lover.save
        format.html { redirect_to @lover, notice: 'Lover was successfully created.' }
        format.json { render :show, status: :created, location: @lover }
      else
        format.html { render :new }
        format.json { render json: @lover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovers/1
  # PATCH/PUT /lovers/1.json
  def update
    respond_to do |format|
      if @lover.update(lover_params)
        format.html { redirect_to @lover, notice: 'Lover was successfully updated.' }
        format.json { render :show, status: :ok, location: @lover }
      else
        format.html { render :edit }
        format.json { render json: @lover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovers/1
  # DELETE /lovers/1.json
  def destroy
    @lover.destroy
    respond_to do |format|
      format.html { redirect_to lovers_url, notice: 'Lover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lover
      @lover = Lover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lover_params
      params.require(:lover).permit(:name, :description)
    end
end
