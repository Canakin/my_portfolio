class PortfoliosController < ApplicationController
  before_action :portfolio_set, only: [:show, :edit, :update]

  def show; end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolio_path(@portfolio)
    else
      redirect_to new_portfolio_path
    end

  end

  def edit; end

  def update
  end

  private

  def portfolio_set
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:name, :value, :settlement_value, :settlement_date)
  end
end
