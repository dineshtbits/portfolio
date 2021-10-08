class PortfolioDataController < ApplicationController

  def index
    @portfolio_items = PortfolioDatum.all
  end
end
