class BillingStatementsController < ApplicationController
  before_action :set_billing_statement, only: [:show, :edit, :update, :destroy]

  # GET /billing_statements
  # GET /billing_statements.json
  def index
    @billing_statements = BillingStatement.all
  end

  # GET /billing_statements/1
  # GET /billing_statements/1.json
  def show
  end

  # GET /billing_statements/new
  def new
    @billing_statement = BillingStatement.new
  end

  # GET /billing_statements/1/edit
  def edit
  end

  # POST /billing_statements
  # POST /billing_statements.json
  def create
    @billing_statement = BillingStatement.new(billing_statement_params)

    respond_to do |format|
      if @billing_statement.save
        format.html { redirect_to @billing_statement, notice: 'Billing statement was successfully created.' }
        format.json { render :show, status: :created, location: @billing_statement }
      else
        format.html { render :new }
        format.json { render json: @billing_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_statements/1
  # PATCH/PUT /billing_statements/1.json
  def update
    respond_to do |format|
      if @billing_statement.update(billing_statement_params)
        format.html { redirect_to @billing_statement, notice: 'Billing statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing_statement }
      else
        format.html { render :edit }
        format.json { render json: @billing_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_statements/1
  # DELETE /billing_statements/1.json
  def destroy
    @billing_statement.destroy
    respond_to do |format|
      format.html { redirect_to billing_statements_url, notice: 'Billing statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_statement
      @billing_statement = BillingStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_statement_params
      params.require(:billing_statement).permit(:user_id, :title)
    end
end
