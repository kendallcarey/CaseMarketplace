class KasesController < ApplicationController
  before_action :set_kase, only: [:show, :edit, :update, :destroy]

  # GET /kases
  # GET /kases.json
  def index
    @kases = Kase.all
  end

  # GET /kases/1
  # GET /kases/1.json
  def show
  end

  # GET /kases/new
  def new
    @kase = Kase.new
  end

  # GET /kases/1/edit
  def edit
  end

  # POST /kases
  # POST /kases.json
  def create
    @kase = Kase.new(kase_params)

    respond_to do |format|
      if @kase.save
        format.html { redirect_to @kase, notice: 'Kase was successfully created.' }
        format.json { render :show, status: :created, location: @kase }
      else
        format.html { render :new }
        format.json { render json: @kase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kases/1
  # PATCH/PUT /kases/1.json
  def update
    respond_to do |format|
      if @kase.update(kase_params)
        format.html { redirect_to @kase, notice: 'Kase was successfully updated.' }
        format.json { render :show, status: :ok, location: @kase }
      else
        format.html { render :edit }
        format.json { render json: @kase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kases/1
  # DELETE /kases/1.json
  def destroy
    @kase.destroy
    respond_to do |format|
      format.html { redirect_to kases_url, notice: 'Kase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kase
      @kase = Kase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kase_params
      params.fetch(:kase, {})
    end
end
