class SalesController < ApplicationController
  respond_to :js, :html
  
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_filter :required_login, except: [:index, :show]


  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.order(params[:sort]).page(params[:page]).per(5)
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)
    # Cria um novo preço para a oferta criada
    @sale.prices.build(value: sale_params[:current_price])

    respond_to do |format|
      if @sale.save
        format.html { flash[:success] = "#{t 'model.sale'} #{t 'crud.success'}"; redirect_to sales_path }
        format.json { render action: 'show', status: :created, location: @sale }
      else
        format.html { render action: 'new' }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { flash[:success] = "#{t 'model.sale'} #{t 'crud.update'}"; redirect_to @sale }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url }
      format.json { head :no_content }
      format.js { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:supermarket_id, :product_id, :current_price, :old_price)
    end
end
