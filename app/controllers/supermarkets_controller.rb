class SupermarketsController < ApplicationController
  before_action :set_supermarket, only: [:show, :edit, :update, :destroy]
  before_filter :required_login, except: [:index, :show]
  # GET /supermarkets
  # GET /supermarkets.json
  def index
    @supermarkets = Supermarket.all
  end

  # GET /supermarkets/1
  # GET /supermarkets/1.json
  def show
  end

  # GET /supermarkets/new
  def new
    @supermarket = Supermarket.new
  end

  # GET /supermarkets/1/edit
  def edit
  end

  # POST /supermarkets
  # POST /supermarkets.json
  def create
    @supermarket = Supermarket.new(supermarket_params)

    respond_to do |format|
      if @supermarket.save
        format.html { flash[:success] = "#{t 'model.supermarket'} #{t 'crud.success'}"; redirect_to @supermarket }
        format.json { render action: 'show', status: :created, location: @supermarket }
      else
        format.html { render action: 'new' }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supermarkets/1
  # PATCH/PUT /supermarkets/1.json
  def update
    respond_to do |format|
      if @supermarket.update(supermarket_params)
        format.html { flash[:success] = "#{t 'model.supermarket'} #{t 'crud.update'}"; redirect_to @supermarket }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supermarkets/1
  # DELETE /supermarkets/1.json
  def destroy
    @supermarket.destroy
    respond_to do |format|
      format.html { redirect_to supermarkets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supermarket
      @supermarket = Supermarket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supermarket_params
      params.require(:supermarket).permit(:nome, :endereco)
    end
end
