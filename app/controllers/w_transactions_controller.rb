class WTransactionsController < ApplicationController
  before_action :set_w_transaction, only: [:show, :edit, :update, :destroy]

  # GET /w_transactions
  # GET /w_transactions.json
  def index
    @w_transactions = WTransaction.all
  end

  # GET /w_transactions/1
  # GET /w_transactions/1.json
  def show
  end

  # GET /w_transactions/new
  def new
    @w_transaction = WTransaction.new
  end

  # GET /w_transactions/1/edit
  def edit
  end

  # POST /w_transactions
  # POST /w_transactions.json
  def create
    @w_transaction = WTransaction.new(w_transaction_params)

    respond_to do |format|
      if @w_transaction.save
        format.html { redirect_to @w_transaction, notice: 'W transaction was successfully created.' }
        format.json { render :show, status: :created, location: @w_transaction }
      else
        format.html { render :new }
        format.json { render json: @w_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /w_transactions/1
  # PATCH/PUT /w_transactions/1.json
  def update
    respond_to do |format|
      if @w_transaction.update(w_transaction_params)
        format.html { redirect_to @w_transaction, notice: 'W transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @w_transaction }
      else
        format.html { render :edit }
        format.json { render json: @w_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /w_transactions/1
  # DELETE /w_transactions/1.json
  def destroy
    @w_transaction.destroy
    respond_to do |format|
      format.html { redirect_to w_transactions_url, notice: 'W transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w_transaction
      @w_transaction = WTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w_transaction_params
      params.require(:w_transaction).permit(:pocket_id, :amount, :tipo)
    end
end
