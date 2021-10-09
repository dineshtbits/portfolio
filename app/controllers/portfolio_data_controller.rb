class PortfolioDataController < ApplicationController

  def index
    @portfolio_items = PortfolioDatum.all
  end

  def new
    @p = PortfolioDatum.new
  end

  def create
    @portfolio = PortfolioDatum.new(params.require(:portfolio_datum).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolio_data_path, notice: "Blog was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
end
